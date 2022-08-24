import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),
  
      body: SingleChildScrollView(
        child: Column(
          children: [
                Container(
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 17),
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
          "Уведомление",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff3554D1),
            fontFamily: "Mont",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
                    SizedBox(
                      
       
                child: SvgPicture.asset("assets/images/SideBar/plan.svg"),
                
                    ),
                  ],
                ),
              ),
          
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, left: 17, right: 17, bottom: 43),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 27,
                      left: 16,
                      bottom: 36,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "assets/images/SideBar/planInImage1.png",
                            height: 216,
                            width: 216,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "ZPAY-Zero",
                          style: TextStyle(
                              color: Color(0xff1D44CB),
                              fontSize: 21,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 28),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Кредитный лимит до 8 000 000 сум",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Погашайте рассрочку в 3 равных\nплатежа.",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "0% переплат",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Без первоначального взноса.",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Приятные бонусы",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                 Container(
                    padding: EdgeInsets.only(
                      top: 27,
                      left: 16,
                      bottom: 36,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "assets/images/SideBar/planInImage2.png",
                            height: 216,
                            width: 216,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "ZPAY-Zero",
                          style: TextStyle(
                              color: Color(0xff1D44CB),
                              fontSize: 21,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 28),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Кредитный лимит до 8 000 000 сум",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Погашайте рассрочку в 3 равных\nплатежа.",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "0% переплат",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Без первоначального взноса.",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/SideBar/planCheck.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Приятные бонусы",
                              style: TextStyle(
                                  color: Color(0xff12154C),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Mont",
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                 ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
