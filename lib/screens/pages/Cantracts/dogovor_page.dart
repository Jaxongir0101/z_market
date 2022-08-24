import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/contracts.dart';

class DogovorPage extends StatefulWidget {
  const DogovorPage({Key? key}) : super(key: key);

  @override
  State<DogovorPage> createState() => _DogovorPageState();
}

class _DogovorPageState extends State<DogovorPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Мои договора",
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contracts()));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 8,
                  ),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 112,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(-1, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ставка",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "0%",
                              style: TextStyle(
                                  color: Color(0xff2D9F69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "ZPAY Zero",
                              style: TextStyle(
                                  color: Color(0xff8F95B2),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "№202013 от 15.08.2021",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Medion Clinic",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Mont"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 9),
                                      decoration: BoxDecoration(
                                          color: Color(0xffEBFFF4),
                                          border: Border.all(
                                            color: Color(0xff32B179),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(children: [
                                        Text(
                                          "Активный",
                                          style: TextStyle(
                                            color: Color(0xff32B179),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.check_circle_outline,
                                          color: Color(0xff32B179),
                                          size: 14,
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/dogovor/change.png",
                                            height: 16,
                                            width: 16,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            "2 /3",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contracts()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 112,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(-1, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ставка",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "24%",
                              style: TextStyle(
                                  color: Color(0xff2D9F69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "ZPAY Zero",
                              style: TextStyle(
                                  color: Color(0xff8F95B2),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "№202013 от 15.08.2021",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Texnomart",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Mont"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 9),
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFDBDB),
                                          border: Border.all(
                                            color: Color(0xffE71010),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(children: [
                                        Text(
                                          "Активный",
                                          style: TextStyle(
                                            color: Color(0xffE71010),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.check_circle_outline,
                                          color: Color(0xffE71010),
                                          size: 14,
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/dogovor/change.png",
                                            height: 16,
                                            width: 16,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            "2 /3",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contracts()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 112,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(-1, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ставка",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "24%",
                              style: TextStyle(
                                  color: Color(0xff2D9F69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "ZPAY Zero",
                              style: TextStyle(
                                  color: Color(0xff8F95B2),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "№202013 от 15.08.2021",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Texnomart",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Mont"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Исполнен",
                                      style: TextStyle(
                                        color: Color(0xff717394),
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/dogovor/change.png",
                                            height: 16,
                                            width: 16,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            "6 /6",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
