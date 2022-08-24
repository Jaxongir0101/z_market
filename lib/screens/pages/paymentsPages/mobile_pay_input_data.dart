import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/paymentsPages/mobile_pay_number.dart';
import 'package:z_pay/screens/pages/paymentsPages/widget/payments_appbar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: must_be_immutable
class MobilePayDetails extends StatefulWidget {
  String imageUrl;

  MobilePayDetails({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<MobilePayDetails> createState() => _StateMobilePayDetails(imageUrl);
}

class _StateMobilePayDetails extends State<MobilePayDetails> {
  late TextEditingController titleController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
  }

  bool number = false;
  bool money = false;

  String imageUrl;

  _StateMobilePayDetails(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '+998 ## ### ## ##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);

    var backRoute = MobilePaymentPage(context);
    String appBarName = "Мобильная связь";

    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: PaymentsAppBar(context, appBarName, backRoute),
      ),
      body:
          // SingleChildScrollView(
          //   child:
          SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    imageUrl,
                    scale: 1.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),

            // SizedBox(
            //   height: 170,
            SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(
                      // height: 100,
                      ),
                  Column(
                    key: _formKey,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          "Номер  телефона",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 5),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          child: TextFormField(
                              inputFormatters: [maskFormatter],
                              keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.done,
                              onChanged: (value) {
                              
                              },
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "Bu joyni to'ldirmadingiz!";

                                    setState(() {
                                  if (value?.length == 17) {
                                    number = true;
                                  } else{
                                    value = "";
                                    number = false;
                                  }
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "+998 ## ### ## ##",
                                hintStyle: TextStyle(color: Color(0xff96A0B5,),fontSize: 14),
                                fillColor: Colors.grey,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color(0xff3554D1),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, bottom: 10, top: 20),
                        child: Text(
                          "Сумма платежа",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 5),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  {return "Bu joyni to'ldirmadingiz!";}

                                 
                              },
                              onChanged: (value) {
                                setState(() {
                                  if (value.length >= 3) {
                                    money = true;
                                  } else if (value.length <= 4 ||
                                      value.length > 10) {
                                    value = "";
                                    money = false;
                                  }

                                   if(value.length % 3 ==0){
                                    value = value + " ";
                                  }
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.grey,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Color(0xff3554D1),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: "Укажите сумму пополнения",
                                hintStyle: TextStyle(color: Color(0xff96A0B5,),fontSize: 14)
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ), // ),

            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  if (number == true && money == true) {
                    // Page route
                    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> "Buyerga ko'rsating"));
                  }
                });

                _formKey.currentState!.save();
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: number == true && money == true
                            ? Colors.grey
                            : Colors.transparent,
                        blurRadius: 15,
                        offset: Offset(2, 8), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    gradient: number == true && money == true
                        ? LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:const [Color(0xff427CF8), Color(0xff1A3FC7)])
                        : null,
                    color: !(number == true && money == true)
                        ? Color(0xffE5EBF0)
                        : null),
                child: Center(
                    child: Text(
                  "Оплатить",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Mont",
                      color: (number == true && money == true)
                          ? Colors.white
                          : Color(0xff6D7D93)),
                )),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
          // ),

          // ],
        ),
      ),
      // ),
    );
  }
}
