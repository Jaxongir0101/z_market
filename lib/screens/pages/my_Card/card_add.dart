import 'package:flutter/material.dart';

import 'package:z_pay/screens/pages/my_Card/card_added.dart';
import 'package:z_pay/viewModel/card_provider.dart';
import 'package:provider/provider.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../database_helper.dart';
import '../../../viewModel/card.dart';

import 'dart:async';
import 'package:credit_card_scanner/credit_card_scanner.dart';

class CardAddPage extends StatefulWidget {
  const CardAddPage({Key? key}) : super(key: key);

  @override
  State<CardAddPage> createState() => _CardAddPageState();
}

class _CardAddPageState extends State<CardAddPage> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '#### #### #### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var dateFormatter = MaskTextInputFormatter(
      mask: '##/##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.5, initialPage: 1);
  }

// Card scanner
  CardDetails? _cardDetails;

  CardScanOptions scanOptions = CardScanOptions(
    scanCardHolderName: true,
    enableDebugLogs: true,
    validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  );

// Card scanner
  Future<void> scanCard() async {
    var cardDetails = await CardScanner.scanCard(scanOptions: scanOptions);
    if (!mounted) return;
    setState(() {
      _cardDetails = cardDetails!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Мои карты",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text(
              "Добавление карты",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              "Выберите дизайн карты",
              style: TextStyle(
                  color: Color(0xff33409E),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 230,
              child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return cardSlider();
                  }),
            ),
            // DotsIndicator(
            //   dotsCount: images.length,
            //   position: context.watch<CardProvider>().index.toDouble(),
            //
            //   decorator: DotsDecorator(
            //     color: Colors.black87, // Inactive color
            //     activeColor: Colors.redAccent,
            //   ),
            // ),

            cardAddField(),
          ],
        ),
      ),
    );
  }

  List images = [
    "assets/images/card/cards/uzcard.png",
    "assets/images/card/cards/humoCard.png",
    "assets/images/card/cards/cashbackCard.png",
  ];

  cardSlider() {
    return Container(
      height: 180,
      width: 280,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xff4A6AB3), borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
       
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/card/cards/cardCornerOne.png")),
          Image.asset("assets/images/card/cards/cardCornerTwo.png"),
          Container(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/images/card/cards/cardCornerThree.png"),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/images/card/cards/cardCornerFour.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${_cardDateController.text}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "${_cardNomerController.text}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "${_cardNameController.text}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // AnimatedContainer(
  // duration: const Duration(milliseconds: 300),
  // curve: Curves.easeOutSine,
  // decoration: BoxDecoration(
  // image: DecorationImage(
  // image: AssetImage(images[pagePosition]), fit: BoxFit.fill)),
  //
  //
  //
  // ),
  TextEditingController _cardNomerController = TextEditingController();
  TextEditingController _cardDateController = TextEditingController();
  TextEditingController _cardNameController = TextEditingController();

  cardAddField() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 30,),
          Text(
            "Номер карты",
            style: TextStyle(
                color: Color(0xff12154C), fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          //Card number
          SizedBox(
            height: 52,
            child: TextFormField(
              controller: _cardNomerController,
              inputFormatters: [maskFormatter],
              onSaved: (value) {},
              autofocus: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "0000 0000 0000 0000",
                contentPadding: EdgeInsets.only(left: 18, right: 24),
                suffixIcon: InkWell(
                    onTap: () {
                      scanCard();
                    },
                    child: Image.asset("assets/images/card/Scan.png")),
                fillColor: Color(0xffEAEFF3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff3554D1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xffEAEFF3),
                  ),
                ),
              ),
              onChanged: (value) {
                if (value.length == 19) {
                  context.read<CardProvider>().idCardTextFieldNumber();
                }
                context.read<CardProvider>().cardCodes(value);
              },
              style: TextStyle(
                color: Color(0xff12154C),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Срок действия карты",
            style: TextStyle(
                color: Color(0xff12154C), fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          //Card date
          SizedBox(
            height: 52,
            child: TextFormField(
              controller: _cardDateController,
              inputFormatters: [dateFormatter],
              onSaved: (value) {},
              autofocus: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "дата/год истечения",
                hintStyle: TextStyle(color: Color(0xff96A0B5)),
                contentPadding: EdgeInsets.only(left: 18, right: 24),
                fillColor: Color(0xffEAEFF3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff3554D1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xffEAEFF3),
                  ),
                ),
              ),
              onChanged: (value) {
                if (value.length == 5) {
                  print("-----------------${value.length}");
                  context.read<CardProvider>().idCardTextFieldNumber();
                  FocusScope.of(context).nextFocus();
                }
              },
              style: TextStyle(
                color: Color(0xff12154C),
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Название карты",
            style: TextStyle(
                color: Color(0xff12154C), fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),

          // Card Name
          SizedBox(
            height: 52,
            child: TextFormField(
              controller: _cardNameController,
              onSaved: (value) {},
              autofocus: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "Дайте название карты",
                hintStyle: TextStyle(color: Color(0xff96A0B5)),
                contentPadding: EdgeInsets.only(left: 18, right: 24),
                fillColor: Color(0xffEAEFF3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff3554D1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xffEAEFF3),
                  ),
                ),
              ),
              onChanged: (value) {
                if (value.length > 2) {
                  context.read<CardProvider>().idCardTextFieldNumber();
                } else {}
              },
              style: TextStyle(
                color: Color(0xff12154C),
              ),
              keyboardType: TextInputType.name,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20),
          context.watch<CardProvider>().isCardButton
              ? SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff427CF8),
                            Color(0xff1A3FC7),
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => CardAdded(),
                          ),
                        );
                        createCard();
                      },
                      child: Text(
                        "Добавить карту",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ))
              : SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffE5EBF0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Добавить карту",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff6D7D93),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }

  void createCard() async {
    PlasticCard card = PlasticCard(_cardNameController.text,
        _cardNomerController.text, _cardDateController.text);
    var res = await DatabaseHelper.intance.insert(card);
    print("------------------res -- $res");
  }
}
