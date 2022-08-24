import 'dart:async';

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'package:z_pay/screens/pages/myIDpage/my_id_one.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_three.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class MyIdTwoPage extends StatefulWidget {
  const MyIdTwoPage({Key? key}) : super(key: key);

  @override
  State<MyIdTwoPage> createState() => _MyIdTwoPageState();
}

class _MyIdTwoPageState extends State<MyIdTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      context.watch<ViewModel>().downTime
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyIDOnePage(),
                                          ));
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xff3554D1),
                                      size: 16,
                                    ),
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: BorderSide(
                                            color: Color(0xffEAEFF3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 40,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      CircularCountDownTimer(
                        duration: 5,
                        initialDuration: 0,
                        controller: CountDownController(),
                        width: 280,
                        height: 280,
                        ringColor: context.watch<ViewModel>().downTime
                            ? Color(0xffEB5757)
                            : Color(0xffF5F5F5),
                        fillColor: Color(0xff1A3FC7),
                        backgroundGradient: LinearGradient(
                          colors: const [
                            Color(0xffF5F5F5),
                            Color.fromARGB(255, 255, 255, 255)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        strokeWidth: 5.0,
                        strokeCap: StrokeCap.round,
                        textStyle: TextStyle(
                          fontSize: 62.0,
                          color: Color(0xff878B9A),
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w800,
                        ),
                        textFormat: CountdownTextFormat.MM_SS,
                        isReverse: true,
                        isReverseAnimation: true,
                        isTimerTextShown: true,
                        autoStart: true,
                        onStart: () {
                          context.watch<ViewModel>().downTime = false;
                        },
                        onComplete: () {
                          setState(() {
                            context.read<ViewModel>().circleDownTimeComplete();
                          });
                          Timer(
                            Duration(seconds: 3),
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyIdThreePage(),
                              ),
                            ),
                          );
                        },
                        onChange: (String timeStamp) {
                          debugPrint('Countdown Changed $timeStamp');
                        },
                      ),
                      !context.watch<ViewModel>().downTime
                          ? Image.asset(
                              "assets/images/myID/waitng.gif",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              height: 100,
                            ),
                      Text(
                        !context.watch<ViewModel>().downTime
                            ? "Ожидайте"
                            : "Упс",
                        style: TextStyle(
                            color: Color(0xff12154C),
                            fontSize: 24,
                            fontFamily: "Mont",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        !context.watch<ViewModel>().downTime
                            ? "Идет считывание данных, ожидайте осталось еще чучуть"
                            : "Попройбуйте пройти верификацию занова возможна технический сбой",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff878B9A),
                            fontSize: 14,
                            fontFamily: "Mont",
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      context.watch<ViewModel>().downTime
                          ? TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyIDOnePage(),
                                    ));
                              },
                              child: Text(
                                "Повторить",
                                style: TextStyle(color: Color(0xff3554D1)),
                                textAlign: TextAlign.center,
                              ))
                          : Container(),
                      SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                ])));
  }
}
