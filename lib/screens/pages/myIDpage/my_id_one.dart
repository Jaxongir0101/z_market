import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_two.dart';

class MyIDOnePage extends StatefulWidget {
  const MyIDOnePage({Key? key}) : super(key: key);

  @override
  State<MyIDOnePage> createState() => _MyIDOnePageState();
}

class _MyIDOnePageState extends State<MyIDOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24,left: 24,right: 24),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(margin: EdgeInsets.only(top: 26)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff3554D1),
                            size: 16,
                          ),
                          style: ButtonStyle(
                            elevation:MaterialStateProperty.all(0) ,
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color: Color(0xffEAEFF3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                   
                      SizedBox(
                        height: 41,
                        width: 57,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "RU",
                            style: TextStyle(
                                color: Color(0xff33409E),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          style: ButtonStyle(
                            elevation:MaterialStateProperty.all(0) ,
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color: Color(0xffEAEFF3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 260,
                    width: 268,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/myID/frame1.png",
                            ),
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/myID/person.png",
                                  ),
                                  fit: BoxFit.contain)),
                        ),
                        Image.asset(
                          "assets/images/myID/frame2.png",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Сделайте фото лица",
                    style: TextStyle(
                        color: Color(0xff12154C),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Mont",
                        fontSize: 24),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: Text(
                      "Держите голову ровно и не двигайте ее снимите очки лишние вещи с головы такие как шапку и маску",
                      style: TextStyle(
                        color: Color(0xff878B9A),
                        fontFamily: "Mont",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                           color: Color(0xff1D44CB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyIdTwoPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Начать сканирование",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontFamily: "Mont",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 44,
                    ),
               
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
