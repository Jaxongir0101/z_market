import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/password/password.dart';
import 'package:z_pay/viewModel/passwordProvider.dart';

class EnterPincode extends StatefulWidget {
  const EnterPincode({Key? key, }) : super(key: key);

  @override
  State<EnterPincode> createState() => _EnterPincodeState();
}

class _EnterPincodeState extends State<EnterPincode> {
  final LocalAuthentication auth = LocalAuthentication();

  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

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
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
              height: 20,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Password(),
                  ));
                },
                child: Text(
                  "Ввести пароль",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff33409E),
                      fontWeight: FontWeight.w800,
                      fontFamily: "Mont"),
                ),
              ),
            ),
          ),
        
        
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                      context.read<PassProvider>().passSum(number1, count);
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                  InkWell(
                    onTap: _authenticateWithBiometrics,
                    child: Container(
                      height: 76,
                      width: 76,
                      child: Image.asset(
                        "assets/images/password/finger.png",
                        height: 55,
                        width: 61,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      number1 = number1 + "0";
                      setState(() {
                        count++;
                      });
                      context.read<PassProvider>().passSum(number1, count);
                      if (number1.length == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
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
                        if (count > 0) {
                          count--;
                        }
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
       
       SizedBox(height: MediaQuery.of(context).size.height * 0.18,)
        ],
      ),
    );
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BottomNavigationPage()));
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }
}
