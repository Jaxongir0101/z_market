import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_one.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyIDPage extends StatefulWidget {
  const MyIDPage({Key? key}) : super(key: key);

  @override
  State<MyIDPage> createState() => _MyIDPageState();
}

class _MyIDPageState extends State<MyIDPage> {
  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '########',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);

    var yearFormatter = MaskTextInputFormatter(
        mask: '##.##.####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 6),
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
                          elevation:MaterialStateProperty.all(0) ,
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
                      "Идентификация",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff3554D1),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 41,
                      width: 57,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "RU",
                          style: TextStyle(
                              color: Color(0xff33409E),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ButtonStyle(
                          elevation:MaterialStateProperty.all(0) ,
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
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Паспортные данные",
                style: TextStyle(
                  color: Color(0xff3554D1),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Mont",
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Создание нового аккунта",
                style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w600,
                      fontFamily: "Mont",
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Номер паспорта",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w800,
                      fontFamily: "Mont",
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 52,
                    width: 56,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      onSaved: (value) {},
                      decoration: InputDecoration(
                        fillColor: Color(0xffEAEFF3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff3554D1),
                          ),
                        ),
                        hintText: "AA",
                        hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff96A0B5),
                      ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xffEAEFF3),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 2) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Mont"
                      ),
                      
                      keyboardType: TextInputType.text,
                  
                      textAlign: TextAlign.center,
                   
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 52,
                      child: TextFormField(
                        inputFormatters: [maskFormatter],
                        onSaved: (value) {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 18, right: 24),
                          suffixIcon: context.watch<ViewModel>().isPassportNum
                              ? Icon(
                                  Icons.check,
                                  color: Color(0xff27AE60),
                                )
                              : null,
                          fillColor: Color(0xffEAEFF3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xff3554D1),
                            ),
                          ),
                          hintText:"12345678",
                          hintStyle:  TextStyle(
                          color: Color(0xff96A0B5),
                          fontWeight: FontWeight.w600,
                        ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xffEAEFF3),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 7) {
                            context.read<ViewModel>().isPassportNumCheck();
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(
                "Год рождения",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Mont"
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 52,
                child: TextFormField(
                  inputFormatters: [yearFormatter],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 18, right: 24),
                    suffixIcon: context.watch<ViewModel>().birth
                        ? Icon(
                            Icons.check,
                            color: Color(0xff27AE60),
                          )
                        : null,
                    fillColor: Color(0xffEAEFF3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff3554D1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xffEAEFF3),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.length == 10) {
                      context.read<ViewModel>().yearCheck();
                      FocusScope.of(context).nextFocus();
                    }
                  },
                   style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                        ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 200),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                   color: Color(0xff1D44CB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyIDOnePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Потвердить",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: (){
                       Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BottomNavigationPage(),
                        ),
                      );
                  },
                  child:  Text(
                    "Пропустить",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3554D1),
                        fontSize: 16,
                        fontFamily: "Mont",
                        fontWeight: FontWeight.w600),
                  ),)
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    position: 1,
                    decorator: DotsDecorator(
                      activeColor: Color(0xff3554D1),
                      color: Color(0xff878B9A).withOpacity(0.5),
                      shapes: [
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ],
                      activeShapes: [
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                      ],
                      size: Size(6.0, 6),
                      activeSize: Size(9.0, 9.0),
                    ),
                  ),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
