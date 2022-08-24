import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';

import 'instruct_four.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class InstructTree extends StatefulWidget {
  const InstructTree({Key? key}) : super(key: key);

  @override
  State<InstructTree> createState() => _InstructTreeState();
}

class _InstructTreeState extends State<InstructTree> {
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
            height: height * 0.06,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: height * 0.77,
                  child: Image.asset(
                    'assets/images/instruction/device3.png',
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
                      "Наслаждайтесь вашей покупкой с\nприятными бонусами от ZPAY",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Совершайте покупки у наших партнеров и с\nприятным кешбеком от ZPAY",
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
