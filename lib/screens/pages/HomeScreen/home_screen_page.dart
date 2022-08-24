import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:z_pay/screens/pages/HomeScreen/qr_scaner.dart';
import 'package:z_pay/screens/pages/PartnerovStore/partner_store.dart';
import 'package:z_pay/screens/pages/SideBar/plan_page.dart';
import 'package:z_pay/screens/pages/SideBar/side_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_pay/screens/pages/SideBar/standart/standart.dart';

import '../paymentsPages/first_payment_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: true,
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: SideBar(),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: appBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 260,
                        color: Color(0xff3949A9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Лимит рассрочки",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Mont",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "8 000 000 сум",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: "Mont",
                                  color: Colors.white),
                            ),
                            SizedBox(height: 26),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PaymentHomePage()));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                margin: EdgeInsets.only(left: 20, right: 32),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "50 000 сум",
                                        style: TextStyle(
                                          color: Color(0xff878B9A),
                                          fontFamily: "Mont",
                                          fontSize: 21,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 138,
                                      decoration: BoxDecoration(
                                        color: Color(0xff636BF9),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "assets/images/home/bonus.png"),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "ZCOIN",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Mont",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 90,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                      )
                    ],
                  ),
                  Positioned(child: scroolBonus()),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  Container(
                    padding: EdgeInsets.only(left: 13, top: 16, right: 0),
                    decoration: BoxDecoration(
                        color: Color(0xffDBDEF1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 160,
                                child: Text(
                                  "Стань востребованым специалистом"
                                      .toUpperCase(),
                                  style: TextStyle(
                                    // fontFamily: "Mont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 23),
                              child:
                                  Image.asset("assets/images/home/text1.png"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              height: 23,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFB21E)),
                              child: Text(
                                "SMM-специалист",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff040404)),
                              ),
                            ),
                            Image(
                                height: 122,
                                width: 167,
                                image: AssetImage(
                                    "assets/images/home/casual1.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.only(left: 13, top: 16, right: 0),
                    decoration: BoxDecoration(
                        color: Color(0xffDBDEF1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 160,
                                child: Text(
                                  "Стань востребованым специалистом"
                                      .toUpperCase(),
                                  style: TextStyle(
                                    // fontFamily: "Mont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 23),
                              child:
                                  Image.asset("assets/images/home/text1.png"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              height: 23,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFB21E)),
                              child: Text(
                                "SMM-специалист",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff040404)),
                              ),
                            ),
                            Image(
                                height: 122,
                                width: 167,
                                image: AssetImage(
                                    "assets/images/home/casual1.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.only(left: 13, top: 16, right: 0),
                    decoration: BoxDecoration(
                        color: Color(0xffDBDEF1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 160,
                                child: Text(
                                  "Стань востребованым специалистом"
                                      .toUpperCase(),
                                  style: TextStyle(
                                    // fontFamily: "Mont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 23),
                              child:
                                  Image.asset("assets/images/home/text1.png"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              height: 23,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFB21E)),
                              child: Text(
                                "SMM-специалист",
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff040404)),
                              ),
                            ),
                            Image(
                                height: 122,
                                width: 167,
                                image: AssetImage(
                                    "assets/images/home/casual1.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Наши партнеры",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "все",
                      style: TextStyle(
                        color: Color(0xffC2C2C2),
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            partners(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xff3949A9),
      leading: InkWell(
        onTap: () => _scaffoldKey.currentState?.openDrawer(),
        child: Image.asset("assets/images/home/Category.png"),
      ),
      title: SizedBox(
        height: 60,
      ),
      actions: [
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Status(),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 22),
              width: 208,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xff32B179),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image(
                        image: AssetImage("assets/images/home/group.png"),
                      ),
                    ],
                  ),
                  Text(
                    "Уровень\nСтандарт",
                    style: TextStyle(fontSize: 16),
                  ),
                  Image(
                    image: AssetImage(
                      "assets/images/home/person.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ))
      ],
    );
  }

  Widget scroolBonus() {
    return Container(
      height: 115,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 24),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QrCodeScaner()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                width: 98.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff4581FC),
                        Color(0xff183CC4),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "QR-code Сканер".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mont"),
                    ),
                    Image.asset("assets/images/home/bonusList1.png")
                  ],
                )),
          ),
          SizedBox(
            width: 16,
          ),

          // Paymets - Plateji
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PaymentHomePage()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                width: 98.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffE61C75),
                        Color(0xff83023B),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Платежи".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mont"),
                    ),
                    Image.asset("assets/images/home/bonusList2.png")
                  ],
                )),
          ),
          SizedBox(
            width: 16,
          ),

          //Magazin
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PartnerStore(),
              ));
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                width: 98.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffEB7350),
                        Color(0xffD63004),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Магазины партнеров".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mont"),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Image.asset(
                          "assets/images/home/bonusList3.png",
                          alignment: Alignment.center,
                        ))
                  ],
                )),
          ),
          SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PlanPage(),
              ));
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 14),
                width: 98.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff32B179),
                        Color(0xff1F4534),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Рассрочка".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mont"),
                    ),
                    Image.asset("assets/images/home/bonusList4.png")
                  ],
                )),
          ),
          SizedBox(width: 16)
        ],
      ),
    );
  }

  Widget partners() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 24),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            width: 100,
            child: Image.asset(
              "assets/images/home/hamkor1.png",
              height: 58,
              width: 66,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Image.asset("assets/images/home/hamkor2.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Image.asset("assets/images/home/hamkor3.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            width: 100,
            child: Image.asset(
              "assets/images/home/hamkor1.png",
              height: 58,
              width: 66,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Image.asset("assets/images/home/hamkor2.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Image.asset("assets/images/home/hamkor3.png"),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
