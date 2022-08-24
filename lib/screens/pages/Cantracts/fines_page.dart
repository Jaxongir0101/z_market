import 'dart:convert';

import 'package:flutter/material.dart';

class FinesPage extends StatelessWidget {
  const FinesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String myStringWithLinebreaks =
        "Сумма штрафа эквивалентна 1,5% от суммы текущей задолженности;"
        "\nМаксимальный размер штрафа: не более 50% от суммы договора;"
        "\nШтраф начисляется на 4-й день со ожидаемого дня оплаты;"
        "\nПри частичном погашение по рассрочке процент штрафа считается от целой суммы по данному периоду, не на остаток по рассрочке;"
        "\nПри погашении задолженности сначала погашается тело долга, а уже после тело договора";
    return Scaffold(
           backgroundColor: Color(0xfff2f4f7),

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff3554D1),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Штафы",
          textAlign: TextAlign.center,
          style: TextStyle(

            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "№2002123 от 21/02/2022",
                style: TextStyle(
                    color: Color(0xff12154C),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8),
              Text(
                "Телевизор LG 43 UHD, Thinq Ai",
                style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "График погашения штрафов",
                style: TextStyle(
                    color: Color(0xff12154C),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffFFDBDB),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Color(0xffE71010))),
                child: Text(
                  "Сумма штрафа: 130 000 сум ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffE71010),
                    fontFamily: "Mont",
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 10,
                ),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 15, top: 15, right: 24, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '299 000',
                            style: TextStyle(
                                color: Color(0xff12154C),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "01.01.2022",
                            style: TextStyle(
                                color: Color(0xff878B9A),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '299 000',
                            style: TextStyle(
                                color: Color(0xff12154C),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "4500",
                            style: TextStyle(
                              color: Color(0xffE71010),
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          //bottomSheetPage.dialogPageOplat(context);
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 13),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: const [
                                Color(0xffFFB21E),
                                Color(0xffF8AA14)
                              ]),
                              borderRadius: BorderRadius.circular(32)),
                          child: Text(
                            "оплатить",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      ListTile(
                          title: Text(
                            "Что такое штраф?",
                            style: TextStyle(
                              color: Color(0xff1D44CB),
                              fontSize: 21,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          subtitle: Column(
                              children:
                                  LineSplitter.split(myStringWithLinebreaks)
                                      .map((o) {
                            return Column(
                              children: [
                                SizedBox(height: 14),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "•  ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Expanded(
                                      child: Text(
                                        o,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 14),
                              ],
                            );
                          }).toList())),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
