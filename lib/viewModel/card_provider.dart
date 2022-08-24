import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier{
  var index = 0;
  int cardTextFieldNumber = 0;
  bool isCardButton = false;
  String cardCode = "";
  bool isCardToBP = false;

  cardIndicatorNumber(number){
    index = number;
    notifyListeners();
  }
  idCardTextFieldNumber(){
    cardTextFieldNumber++;
    if(cardTextFieldNumber == 3){
      isCardButton =true;
    }
    notifyListeners();
  }

  cardCodes(String code){
    cardCode = code;
    notifyListeners();
  }
   void updateTaskList() {
    notifyListeners();
  }

  cardtoPage(){
    isCardToBP = true;
    notifyListeners();
  }

}