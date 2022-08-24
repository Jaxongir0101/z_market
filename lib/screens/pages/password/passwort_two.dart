import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:z_pay/screens/pages/PartnerovStore/partner_details.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:z_pay/screens/pages/password/enter_pincode.dart';

import 'package:z_pay/viewModel/passwordProvider.dart';

class PassWordTwo extends StatefulWidget {
 final String number2 = "";
 const PassWordTwo(
    String number2, {
    Key? key,
  }) : super(key: key);

  @override
  State<PassWordTwo> createState() => _PassWordTwoState();
}

class _PassWordTwoState extends State<PassWordTwo> {
  String number1 = "";
  int count = 0;
  @override
  void initState() {
    setState(() {
      count = 0;
      number1 = "";
    });
  }

  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "Потвердить PIN",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Mont"),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: count == 1 ? Color(0xff33409E) : Color(0xff878B9A),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: count == 2 ? Color(0xff33409E) : Color(0xff878B9A),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: count == 3 ? Color(0xff33409E) : Color(0xff878B9A),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: count == 4 ? Color(0xff33409E) : Color(0xff878B9A),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      number1 = number1 + "1";
                      print(number1);
                      setState(() {
                        count++;
                      });
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                        context.read<PassProvider>().passSum(number1, count);
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "2";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                      number1 = number1 + "3";
                      setState(() {});
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      number1 = number1 + "4";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "4",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "5";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "6";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "6",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                      number1 = number1 + "7";
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "7",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "9";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "9";
                      setState(() {
                        count++;
                      });
                     
                    
  print("${widget.number2}2-----------------------------+++++++++++++++++++++++++++++");

                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "9",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 76,
                    width: 76,
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "0";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (count == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EnterPincode(),
                        ));
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xffEAEFF3),
                          )),
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      if (number1.length > 0) {
                        number1.substring(0, number1.length - 1);
                      }
                      setState(() {
                        if (count > 0) count--;
                      });
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 76,
                      width: 76,
                      alignment: Alignment.center,
                      child: Text(
                        "Удалить",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Mont",
                            color: Color(0xff878B9A)
                            //Color(0xff33409E)),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/password/face.png",
                  ),
                )),
              ),
              SizedBox(width: 10),
              Text(
                "Разблокировка через Face ID",
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 40,
                width: 40,
                child: CupertinoSwitch(
                  value: !_switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
            ],
          ),


          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          )
        ],
      ),
    );
  }

  static const _keyNumber1 = "numberOne";
  SharedPreferences? preferences;

  Future init() async => preferences = await SharedPreferences.getInstance();

  Future setNumber(String numberOne) async =>
      await preferences?.setString(_keyNumber1, numberOne);

  getNumber() => preferences?.getString(_keyNumber1);
}
