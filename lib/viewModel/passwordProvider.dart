import 'package:flutter/foundation.dart';

class PassProvider extends ChangeNotifier {
  bool isCircle = false;
  String passwords = "";
  String passwords2 = "";

  String pass = "";
  String isPass = "";

  passSum(String number,int counter) {
    pass = pass + number;
    isPass = pass;
    if (counter == 4) {
      passwords = pass;
    }
    notifyListeners();
  }
}
