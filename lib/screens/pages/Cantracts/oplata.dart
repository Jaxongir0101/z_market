import 'package:flutter/material.dart';

class Oplata{
  Future showDialogCon(context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Color.fromRGBO(0, 0, 0, 0.6).withOpacity(0.5),
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    height: 40,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        color: Color(0xff199E59),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image(
                      image:
                      AssetImage("assets/images/dogovor/dialogTrue.png")),
                  SizedBox(height: 20),
                  Container(
                    width: 186,
                    child: Text(
                      "Оплата была выполнена успешно",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff12154C),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}