import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/my_Card/my_card_one.dart';
import 'package:z_pay/screens/pages/my_Card/transfer_card.dart';

class CardBottomSheet {
  dialogPage(BuildContext context) {
    int checkButton = 0;
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      barrierColor: Color.fromRGBO(0, 0, 0, 0.3).withOpacity(0.78),
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50,
                width: double.infinity,
                color: Color(0xff3554D1),
                child: Center(
                  child: Text(""),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    SizedBox(height: 80),
                    Text(
                      "Операции  с картами",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color(0xff121F3E),
                      ),
                    ),
                    
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        checkButton =1;
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransferCard(),));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/card/transferMoney.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 10,
                                ),
                                child: MediaQuery.of(context).size.width > 360
                                    ? Text(
                                        "Перевод между моими картами",
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )
                                    : Text(
                                        "Перевод между моими картами",
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value: checkButton == 1 ? true:false,
                              onChanged: (val) {
                               
                              })
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                       
                       setState(){
                         checkButton = 2;
                       }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/card/bottomSetting.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  bottom: 10,
                                ),
                                child: Text(
                                  "Настройки карты",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value: checkButton == 2 ? true:false,
                              onChanged: (val) {})
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        checkButton = 3;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyCardOne()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/card/bottomCardAdd.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 10,
                                ),
                                child: Text(
                                  "Добавить карту",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff3554D1)),
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value: checkButton == 3 ? true:false,
                              onChanged: (val) {})
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
