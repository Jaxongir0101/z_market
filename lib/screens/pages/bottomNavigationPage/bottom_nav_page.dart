import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/dogovor_page.dart';
import 'package:z_pay/screens/pages/HomeScreen/home_screen_page.dart';
import 'package:z_pay/screens/pages/my_Card/my_card_one.dart';
import 'package:z_pay/screens/pages/profilePage/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DogovorPage(),
    MyCardOne(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Home.svg',
              color: Color(0xff3554D1),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Home.svg',
              color: Color(0xff717394),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Briefcase.svg',
              color: Color(0xff3554D1),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Briefcase.svg',
              color: Color(0xff717394),
            ),
            label: 'Договора',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Cardholder.svg',
              color: Color(0xff3554D1),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Cardholder.svg',
              color: Color(0xff717394),
            ),
            label: 'Мои карты',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Profile.svg',
              color: Color(0xff3554D1),
            ),
            icon: SvgPicture.asset(
              'assets/images/bottomNavigationBar/Profile.svg',
              color: Color(0xff717394),
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff3554D1),
        unselectedItemColor: Color(0xff717394),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
