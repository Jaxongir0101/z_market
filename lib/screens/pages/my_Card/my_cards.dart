import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/my_Card/card_add.dart';
import 'package:z_pay/screens/pages/my_Card/card_bottomSheet.dart';
import 'package:z_pay/screens/pages/my_Card/my_card_one.dart';

import '../../../database_helper.dart';
import '../../../viewModel/card.dart';

class MyCards extends StatefulWidget {
  const MyCards({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
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
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [cardTable(), addCardButton()],
          ),
        ),
      ),
    );
  }

  cardSlider(card) {
    return Container(
      height: 180,
      width: 280,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xff4A6AB3), borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Image.asset("assets/images/card/cards/cardCornerOne.png"),
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
                  "{card.}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "{card}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "{_cardNameController.text}",
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

  addCardButton() {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: ((context) => CardAddPage()),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff427CF8),
            Color(0xff1A3FC7),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Потвердить",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  cardTable() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: FutureBuilder(
          future: DatabaseHelper.intance.getCards(),
          builder: (BuildContext context,
              AsyncSnapshot<List<PlasticCard>> snapshot) {
            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    CardBottomSheet cardBottomSheet = CardBottomSheet();
                    cardBottomSheet.dialogPage(context);
                  },
                  child: Container(
                    height: 180,
                    width: 280,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Color(0xff4A6AB3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/card/cards/cardCornerOne.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                            "assets/images/card/cards/cardCornerTwo.png"),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                              "assets/images/card/cards/cardCornerThree.png"),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                              "assets/images/card/cards/cardCornerFour.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].title ?? ""}",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "${snapshot.data![index].cardNumber ?? ""}",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "${snapshot.data![index].cardDate ?? ""}",
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
                  ),
                );
              },
              itemCount: snapshot.data?.length ?? 0,
            );
          }),
    );
  }
}
