import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_one.dart';
import 'package:z_pay/screens/pages/instructionPage/pageview_ins.dart';
import 'package:z_pay/screens/pages/registrationPage/login.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({Key? key}) : super(key: key);

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
  // initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 1), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => InstructionView(),
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; //829

    final width = MediaQuery.of(context).size.width; //393
    print(height);
    print(width);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50, top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/Vector.png",
                      ),
                      height: 58,
                      width: 58,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/PAY.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      """technology inspired""".toUpperCase(),
                      style: TextStyle(
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1D44CB)),
                    ),
                    Text(
                      "by transparency".toUpperCase(),
                      style: TextStyle(
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1D44CB)),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/images/splash/splash3.png",
              height: 200,
              width: 268,
            ),
            Text(
              "EARN",
              style: TextStyle(
                  color: Color(0xff1D44CB),
                  fontSize: 24,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
