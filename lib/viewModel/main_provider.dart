import 'package:flutter/widgets.dart';

class ViewModel extends ChangeNotifier {
  double indicatorNumber = 0;
  bool downTime = false;
  bool isPhoneCheck = false;
  bool comeInCheck = false;
  bool birth = false;
  String comeInputNumer = "";
  bool isPinCode = false;
  String pinOne = "";
  String pinTwo = "";
  String pinThree = "";
  String pinFour = "";
bool isPassportNum = false;
  bool isCheckCardOne = false;
  bool isCheckCardTwo = false;
  bool isCheckCardThree = false;

  bool isNotification = false;


  indicatorIncrement() {
    indicatorNumber++;
    notifyListeners();
  }

  comeInputNumerSaved(String number) {
    comeInputNumer = number;
    notifyListeners();
  }

  comeInCheckNumber() {
    comeInCheck = true;
    notifyListeners();
  }

  numberCheck() {
    isPhoneCheck = true;
    notifyListeners();
  }

  isPassportNumCheck(){
   isPassportNum = true;
       notifyListeners();
  }

  yearCheck() {
    birth = true;
    notifyListeners();
  }

  circleDownTimeComplete() {
    downTime = true;
    notifyListeners();
  }

  isPinCodeOne(String pin1) {
    pinOne = pin1;
    notifyListeners();
  }

  isPinCodeTwo(String pin2) {
    pinTwo = pin2;
    notifyListeners();
  }

  isPinCodeThree(String pin3) {
    pinThree = pin3;
    notifyListeners();
  }

  isPinCodeFour(String pin4) {
    pinFour = pin4;
    notifyListeners();
  }

  checkCard(int number) {
    switch (number) {
      case 0:
        {
          isCheckCardOne = true;
          isCheckCardTwo = false;
          isCheckCardThree = false;
          notifyListeners();
        }
        break;
      case 1:
        {
          isCheckCardTwo = true;
          isCheckCardOne = false;
          isCheckCardThree = false;
          notifyListeners();
        }
        break;
      case 2:
        {
          isCheckCardThree = true;
          isCheckCardTwo = false;
          isCheckCardOne = false;
          notifyListeners();
        }
    }
  }

  notification(bool number) {
    isNotification = number;
    notifyListeners();
  }
}
