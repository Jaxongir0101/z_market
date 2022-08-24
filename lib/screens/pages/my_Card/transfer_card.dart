import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TransferCard extends StatefulWidget {
  const TransferCard({
    Key? key,
  }) : super(key: key);

  @override
  State<TransferCard> createState() => _TransferCardState();
}

class _TransferCardState extends State<TransferCard> {
  TextEditingController _cardNomerTransController = TextEditingController();
  TextEditingController _cardMoneyTransController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '#### #### #### ####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 17),
              alignment: Alignment.bottomCenter,
              height: 110,
              color: Colors.white,
              child: Row(
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
                    "Перевод средств",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff3554D1),
                      fontFamily: "Mont",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          "assets/images/card/universalBank.png",
                          height: 22,
                          width: 115,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Номер карты или телефон",
                          style: TextStyle(
                              color: Color(0xff12154C),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 52,
                          child: TextFormField(
                            controller: _cardNomerTransController,
                            inputFormatters: [maskFormatter],
                            onSaved: (value) {},
                            autofocus: true,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: "0000 0000 0000 0000",
                              contentPadding:
                                  EdgeInsets.only(left: 18, right: 24),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    _cardNomerTransController.clear();
                                  },
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Color(0xff878B9A),
                                    size: 24,
                                  )),
                              fillColor: Color(0xffEAEFF3),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xff878B9A),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xff3554D13),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.length == 19) {}
                            },
                            style: TextStyle(
                              color: Color(0xff878B9A),
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Max Holloway",
                          style: TextStyle(
                              color: Color(0xff878B9A),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 30),
                        Text("Сумма перевода",
                            style: TextStyle(
                              color: Color(0xff12154C),
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: 10),
                        Container(
                          height: 52,
                          child: TextFormField(
                            controller: _cardMoneyTransController,
                            onSaved: (value) {},
                            autofocus: true,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: "1 000 000 000",
                              contentPadding:
                                  EdgeInsets.only(left: 18, right: 24),
                              fillColor: Color(0xffEAEFF3),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xff3554D13),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xff878B9A),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.length == 19) {}
                            },
                            style: TextStyle(
                              color: Color(0xff878B9A),
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Лимит :1 000 000 000",
                          style: TextStyle(
                              color: Color(0xff878B9A),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(
                            //     builder: ((context) => MyCards()),
                            //   ),
                            // );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            width: double.infinity,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff427CF8),
                                    Color(0xff1A3FC7),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Продолжить",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
