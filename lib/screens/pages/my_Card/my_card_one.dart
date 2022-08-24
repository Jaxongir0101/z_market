import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/my_Card/card_add.dart';
import 'package:z_pay/screens/pages/my_Card/card_bottomSheet.dart';
import '../../../database_helper.dart';
import '../../../viewModel/card.dart';

class MyCardOne extends StatefulWidget {
  const MyCardOne({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCardOne> createState() => _MyCardOneState();
}

class _MyCardOneState extends State<MyCardOne> {
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
      body: cardTable(),
    );
  }

  noCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/card/cardZero.png"),
          Column(
            children: [
              Text(
                "Пожалуйста\nдобавьте карту",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff3554D1),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 14),
              Text(
                "Нет доступных карт",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Mont",
                    color: Color(0xff878B9A),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(right: 20, top: 30, bottom: 30, left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff3554D1), Color(0xff1E3CA5)])),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 195,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Кошелек Кешбека",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Пройдите Верификацию чтобы активировать кошелек",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff46EBA2),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset("assets/images/card/wallet.png"),
                    ]),
              ),
              SizedBox(height: 16),
              RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CardAddPage()));
                },
                elevation: 0.0,
                fillColor: Color(0xff33409E),
                child: Icon(
                  Icons.add,
                  size: 35.0,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10.0),
                shape: CircleBorder(),
              )
            ],
          ),
        ],
      ),
    );
  }

  cardTable() {
    return SizedBox(
      child: FutureBuilder(
          future: DatabaseHelper.intance.getCards(),
          builder: (BuildContext context,
              AsyncSnapshot<List<PlasticCard>> snapshot) {
            if (snapshot.data?.length != 0) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            CardBottomSheet cardBottomSheet = CardBottomSheet();
                            cardBottomSheet.dialogPage(context);
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(right: 24, left: 24, top: 30),
                            height: 180,
                            width: 280,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                    ),
                  ),
                  addCardButton(),
                ],
              );
            } else {
              return noCard();
            }
          }),
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
        margin: EdgeInsets.only(bottom: 10, right: 24, left: 24),
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
}
