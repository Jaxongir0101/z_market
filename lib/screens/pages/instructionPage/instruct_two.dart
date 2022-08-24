import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_three.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class InstructTwo extends StatefulWidget {
  const InstructTwo({Key? key}) : super(key: key);

  @override
  State<InstructTwo> createState() => _InstructTwoState();
}

class _InstructTwoState extends State<InstructTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 32),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ComeInPage(),
                      ));
                    },
                    child: Text(
                      "Пропустить",
                      textAlign: TextAlign.center,
                      maxLines: 20,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff3554D1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: height * 0.06 - 3,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: height * 0.77,
                  child: Image.asset(
                    'assets/images/instruction/device2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: const [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white10
                    ],
                  ),
                ),
                margin:
                    EdgeInsets.only(left: 0, right: 0, top: height * 0.3876),
                padding: EdgeInsets.only(top: height * 0.1292),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Откройте для себя множество\nпартнерских магазинов с\nтоварами именно для вас",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "ПНаходите магазины по категориям,\nлокациям и вдохновляйтесь на новые\nпокупки!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(
                          0xff878B9A,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.18,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
