import 'package:flutter/material.dart';

import 'package:z_pay/screens/pages/SideBar/Notification/notfication_page.dart';
import 'package:z_pay/screens/pages/SideBar/plan_page.dart';
import 'package:z_pay/screens/pages/SideBar/standart/standart.dart';
import 'package:z_pay/screens/pages/faqPages/faq_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key, }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 50, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Somanta Clark",
                style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 32,
                  wordSpacing: 60,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "Верифицирован",
                    style: TextStyle(
                        color: Color(0xff878B9A),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    "assets/images/SideBar/check.png",
                    height: 21,
                    width: 21,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "ID: 233256",
                style: TextStyle(
                  color: Color(0xff32B179),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 54,
                decoration: BoxDecoration(
                    color: Color(0xffEAE9EE),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Статус",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff12154C),
                          fontFamily: "Mont"),
                    ),
                    //----------------------------------------------
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Status()));
                      },
                      child: Container(
                          height: 33,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Стандарт",
                            style: TextStyle(
                                color: Color(0xff32B179),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Mont"),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: SvgPicture.asset("assets/images/SideBar/support.svg"),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Служба поддержки",
                    style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text("+99871 207 71 10",
                        style:
                            TextStyle(color: Color(0xff121F3E), fontSize: 16)),
                  ],
                ),
              ),
              Divider(),
              InkWell(
                splashColor: Colors.grey,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => FaqPage()));
                },
                child: ListTile(
                  leading: SvgPicture.asset("assets/images/SideBar/faq.svg"),
                  title: Text(
                    "Часто задаваемые вопросы",
                    style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PlanPage()));
                },
                child: ListTile(
                  leading: SvgPicture.asset("assets/images/SideBar/plan.svg"),
                  title: Text(
                    "Рассрочка",
                    style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: SvgPicture.asset("assets/images/SideBar/offer.svg"),
                title: Text(
                  "Публичная оферта",
                  style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                },
                child: ListTile(
                  leading: SvgPicture.asset("assets/images/SideBar/notif.svg"),
                  title: Text(
                    "Уведомления",
                    style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: SvgPicture.asset("assets/images/SideBar/setting.svg"),
                title: Text(
                  "Настройки",
                  style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                ),
              ),
              Divider(),
              ListTile(
                leading: SvgPicture.asset("assets/images/SideBar/exit.svg"),
                title: Text(
                  "Выйти",
                  style: TextStyle(fontSize: 16, color: Color(0xff121F3E)),
                ),
                trailing: Text(
                  "Версия 1.0.1",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff878B9A)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
