import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/registrationPage/registration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEAE9EE).withOpacity(0.5),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/login/vector.png",
                  ),
                  fit: BoxFit.fill),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/login/vector2.png",
                    ),
                    fit: BoxFit.fill),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 24, top: 30, bottom: 24, left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                      ),
                      SizedBox(height: height * 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/Vector.png",
                            ),
                            height: height * 0.072,
                            width: width * 0.153,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Image.asset("assets/images/PAY.png")
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Image.asset("assets/images/tech.png"),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff32B179),
                                      Color(0xff14764B),
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
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Registration(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Зарегистрироваться",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: SizedBox(
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ComeInPage()));
                                },
                                child: Text(
                                  "Войти",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomNavigationPage()));
                        },
                        child: Text(
                          "Пропустить",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(
                              0xff3554D1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
