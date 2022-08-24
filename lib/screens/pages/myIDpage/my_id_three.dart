import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/screens/pages/HomeScreen/home_screen_page.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_one.dart';
import 'package:z_pay/screens/pages/password/password.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyIdThreePage extends StatefulWidget {
  const MyIdThreePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyIdThreePage> createState() => _MyIdThreePageState();
}

class _MyIdThreePageState extends State<MyIdThreePage> {
  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '########',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);

    var yearFormatter = MaskTextInputFormatter(
        mask: '##.##.####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                  Text(
                    "Идентификация",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Mont",
                        color: Color(0xff3554D1),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 41,
                    width: 57,
                  ),
                ],
              ),
              SizedBox(height: 60),
              Text(
                "Персональные данные",
                style: TextStyle(
                  color: Color(0xff3554D1),
                  fontFamily: "Mont",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "ФИО",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 52,
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      fillColor: Color(0xffEAEFF3),
                      hintText: "Марина Волкова Александрова",
                      hintStyle: TextStyle(
                          color: Color(0xff717394),
                          fontFamily: "Mont",
                          fontWeight: FontWeight.bold)),
                  onChanged: (value) {},
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Mont",
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Серия паспорта",
                        style: TextStyle(
                          color: Color(0xff12154C),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 52,
                        width: 80,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          onSaved: (value) {
                            value?.toUpperCase();
                          },
                          decoration: InputDecoration(
                              fillColor: Color(0xffEAEFF3),
                              hintText: "AA",
                              hintStyle: TextStyle(
                                  color: Color(0xff717394),
                                  fontFamily: "Mont",
                                  fontWeight: FontWeight.bold)),
                          onChanged: (value) {
                            if (value.length == 2) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Mont",
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Номер паспорта",
                          style: TextStyle(
                            color: Color(0xff12154C),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 52,
                          child: TextFormField(
                            inputFormatters: [maskFormatter],
                            onSaved: (value) {},
                            decoration: InputDecoration(
                              hintText: "12345678",
                              hintStyle: TextStyle(
                                  color: Color(0xff717394),
                                  fontFamily: "Mont",
                                  fontWeight: FontWeight.bold),
                              contentPadding: EdgeInsets.only(
                                left: 8,
                              ),
                              fillColor: Color(0xffEAEFF3),
                            ),
                            onChanged: (value) {
                              if (value.length == 7) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Mont",
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Год рождения",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 52,
                child: TextFormField(
                  inputFormatters: [yearFormatter],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                    ),
                    fillColor: Color(0xffEAEFF3),
                    hintText: "01.01.2001",
                    hintStyle: TextStyle(
                        color: Color(0xff717394),
                        fontFamily: "Mont",
                        fontWeight: FontWeight.bold),
                  ),
                  onChanged: (value) {
                    if (value.length == 10) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Mont"),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Адрес проживания",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 52,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                    ),
                    fillColor: Color(0xffEAEFF3),
                    hintText: "г. Ташкент, Мирабадский р-н, 5кв, д30-21",
                    hintStyle: TextStyle(
                        color: Color(0xff717394),
                        fontFamily: "Mont",
                        fontWeight: FontWeight.bold),
                  ),
                  onChanged: (value) {},
                  style: TextStyle(
                    color: Color(0xff12154C),
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              SizedBox(
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Password(),
                        ),
                      );
                    },
                    child: Text(
                      "Установить PIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),

              // SizedBox(height: 24),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     DotsIndicator(
              //       dotsCount: 3,
              //       position: 1,
              //       decorator: DotsDecorator(
              //         activeColor: Color(0xff3554D1),
              //         shapes: [
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(9.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(6.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(4.0)),
              //         ],
              //         activeShapes: [
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //         ],
              //         size: Size(6.0, 6),
              //         activeSize: Size(9.0, 9.0),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
