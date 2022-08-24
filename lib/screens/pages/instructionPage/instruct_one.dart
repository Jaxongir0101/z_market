import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';

class InstructionOne extends StatefulWidget {
  const InstructionOne({Key? key}) : super(key: key);

  @override
  State<InstructionOne> createState() => _InstructionOneState();
}

class _InstructionOneState extends State<InstructionOne> {
  CarouselController buttonCarouselController = CarouselController();
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
                    'assets/images/instruction/device1.png',
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
                      Colors.white10,
                    ],
                  ),
                ),
                margin: EdgeInsets.only(top: height * 0.3876),
                padding: EdgeInsets.only(top: height * 0.1292),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Приобретайте в рассрочку\nс ZPAY менее чем за 2 минуты",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Покупайте сейчас и платите равными\nчастями в срок до 6 месяцев! Пройдите\nбыструю регистрацию, имея только\nПаспорт и платежную карту",
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
