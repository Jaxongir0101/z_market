import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/screens/pages/Cantracts/oplata.dart';
import 'package:z_pay/viewModel/main_provider.dart';

class BottomSheetPage{
  Oplata oplata = Oplata();

  dialogPage(BuildContext context) {
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
                    child: Text(
                      "Досрочное погашение",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Сумма",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color(0xff12154C),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          onSaved: (value) {},
                          decoration: InputDecoration(
                            fillColor: Color(0xffEAEFF3),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffEAEFF3),
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff12154C),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Выберите способ оплаты",
                        style: TextStyle(
                            color: Color(0xff12154C),
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          context.read<ViewModel>().checkCard(0);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/dogovor/uzcard.png"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "8600 00** **** **97",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color:  Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "05/27",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Checkbox(
                                shape: CircleBorder(),
                                activeColor: Color(0xff3554D1),
                                value:
                                context.watch<ViewModel>().isCheckCardOne,
                                onChanged: (val) {})
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          context.read<ViewModel>().checkCard(1);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/dogovor/humo.png"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    bottom: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "8600 00** **** **97",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "05/27",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Checkbox(
                                shape: CircleBorder(),
                                activeColor: Color(0xff3554D1),
                                value:
                                context.watch<ViewModel>().isCheckCardTwo,
                                onChanged: (val) {})
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          context.read<ViewModel>().checkCard(2);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/dogovor/perAcc.png"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    bottom: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Лицевой счет",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "244 000 сум",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff32B179)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Checkbox(
                                shape: CircleBorder(),
                                activeColor: Color(0xff3554D1),
                                value:
                                context.watch<ViewModel>().isCheckCardThree,
                                onChanged: (val) {})
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xff3554D1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              oplata.showDialogCon(context);
                            },
                            child: Text(
                              "Погасить досрочно",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
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

  dialogPageOplat(BuildContext context) {
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
                color: Color(0xffFFB21E),
                child: Center(
                  child: Text(
                    "Оплата",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Сумма",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color(0xff12154C),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.top,
                        onSaved: (value) {},
                        decoration: InputDecoration(
                          fillColor: Color(0xffEAEFF3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xffEAEFF3),
                            ),
                          ),
                        ),
                        onChanged: (value) {},
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff12154C),
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Выберите способ оплаты",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        context.read<ViewModel>().checkCard(0);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dogovor/uzcard.png"),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, bottom: 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "8600 00** **** **97",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color:  Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "05/27",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value:
                              context.watch<ViewModel>().isCheckCardOne,
                              onChanged: (val) {})
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        context.read<ViewModel>().checkCard(1);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dogovor/humo.png"),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "8600 00** **** **97",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "05/27",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value:
                              context.watch<ViewModel>().isCheckCardTwo,
                              onChanged: (val) {})
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        context.read<ViewModel>().checkCard(2);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dogovor/perAcc.png"),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Лицевой счет",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "244 000 сум",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff32B179)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                              shape: CircleBorder(),
                              activeColor: Color(0xff3554D1),
                              value:
                              context.watch<ViewModel>().isCheckCardThree,
                              onChanged: (val) {})
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xff3554D1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            oplata.showDialogCon(context);
                          },
                          child: Text(
                            "Погасить досрочно",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
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