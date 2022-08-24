import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id.dart';
import 'package:z_pay/screens/pages/my_Card/my_card_one.dart';
import 'package:z_pay/screens/pages/my_Card/my_cards.dart';
import 'package:provider/provider.dart';

import '../../../viewModel/card_provider.dart';

class CardAdded extends StatefulWidget {
  const CardAdded({Key? key}) : super(key: key);

  @override
  State<CardAdded> createState() => _CardAddedState();
}

class _CardAddedState extends State<CardAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/images/card/cardCheck.png")),
                  Text(
                    'Карта добавлена',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff12154C)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text("Вы успешно\nдобавили карту",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff96A0B5),
                      )),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                context.read<CardProvider>().cardtoPage();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => BottomNavigationPage()),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff427CF8),
                    Color(0xff1A3FC7),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Потвердить",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
