import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/main.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id.dart';
import '../../../viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class VerifationNumerPage extends StatefulWidget {
  const VerifationNumerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<VerifationNumerPage> createState() => _VerifationNumerPageState();
}

class _VerifationNumerPageState extends State<VerifationNumerPage> {
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();

  static const countdownDuration = Duration(seconds: 0);
  Timer? timer;
  Duration duration = Duration();
  bool isCountdown = true;

  @override
  initState() {
    super.initState();
    startTimer();
    reset();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  void reset() {
    if (isCountdown) {
      setState(
        () => duration = countdownDuration,
      );
    } else {
      setState(
        () => duration = Duration(),
      );
    }
  }

  void subTime() {
    final subSeconds = 1;
    setState(() {
      var seconds = duration.inSeconds - subSeconds;
      if (seconds == -60) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => subTime());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
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
                            elevation: MaterialStateProperty.all(0),
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
                            elevation: MaterialStateProperty.all(0),
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
                  SizedBox(height: height * 0.07),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          """Верификация номера""",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mont",
                            color: Color(0xff3554D1),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Мы выслали код подверждения",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "на номер:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Mont",
                                color: Color(0xff878B9A),
                              ),
                            ),
                            Text(
                              " ${context.watch<ViewModel>().comeInputNumer}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Mont",
                                color: Color(0xff1479FF),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "0:${59 + duration.inSeconds}",
                    style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Form(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            controller: pin1,
                            showCursor: true,
                            textAlignVertical: TextAlignVertical.top,
                            onSaved: (pin1) {},
                            decoration: InputDecoration(
                              fillColor: Color(0xffEAEFF3),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                context
                                    .read<ViewModel>()
                                    .isPinCodeOne(pin1.text);
                              }
                            },
                            validator: ((String? value) {}),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            controller: pin2,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (pin2) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                context
                                    .read<ViewModel>()
                                    .isPinCodeTwo(pin2.text);
                              }
                            },
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            controller: pin3,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (pin3) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                context
                                    .read<ViewModel>()
                                    .isPinCodeThree(pin3.text);
                              }
                            },
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            controller: pin4,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                context
                                    .read<ViewModel>()
                                    .isPinCodeFour(pin4.text);
                              }
                            },
                            onSaved: (pin4) {},
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Не получили код?",
                        style: TextStyle(
                            color: Color(0xff96A0B5),
                            fontSize: 14,
                            fontFamily: "Mont",
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(width: 6),
                      InkWell(
                        onTap: () {
                          setState(() {
                            reset();
                          });
                        },
                        child: Text(
                          "Переслать",
                          style: TextStyle(
                            color: Color(0xff3554D1),
                            fontFamily: "Mont",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  (context.watch<ViewModel>().pinOne +
                                  context.watch<ViewModel>().pinTwo +
                                  context.watch<ViewModel>().pinThree +
                                  context.watch<ViewModel>().pinFour)
                              .length ==
                          4
                      ? SizedBox(
                          width: double.infinity,
                          height: 50,
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
                                // AuthApi.authPhoneNumSmsChek(
                                //     code: int.parse(pin1.text +
                                //         pin2.text +
                                //         pin3.text +
                                //         pin4.text),
                                //     phoneNum: phoneNum);

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => MyIDPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Продолжить",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                      : SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xffE5EBF0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Продолжить",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Mont",
                                    color: Color(0xff6D7D93),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DotsIndicator(
                        dotsCount: 2,
                        position: 0,
                        decorator: DotsDecorator(
                          shapes: [
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0)),
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                          ],
                          activeShapes: [
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)),
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)),
                          ],
                          activeColor: Color(0xff3554D1),
                          size: Size(6.0, 6),
                          activeSize: Size(9.0, 9.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
