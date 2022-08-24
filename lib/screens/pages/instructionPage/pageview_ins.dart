import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/LoginStagePage/come_in.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_four.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_one.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_three.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_two.dart';
import 'package:dots_indicator/dots_indicator.dart';

class InstructionView extends StatefulWidget {
  const InstructionView({Key? key, }) : super(key: key);

  @override
  State<InstructionView> createState() => _InstructionViewState();
}

class _InstructionViewState extends State<InstructionView> {
  PageController? _pageController;
  int _selectedIndex = 0;
    int count = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
            
          });
        },
        children: const[
          InstructionOne(),
          InstructTwo(),
          InstructTree(),
          InstructFour(),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 48, right: 24, bottom: 60),
        child: _selectedIndex == 3
            ? SizedBox(
                width: double.infinity,
                height: 52,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors:const [
                          Color(0xff427CF8),
                          Color(0xff1A3FC7),
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ComeInPage()));
                    },
                    child: Text(
                      "Пройти регистрацию",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ))
            :  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: _selectedIndex.toDouble(),
                      decorator: DotsDecorator(
                        size: const Size.square(6.0),
                        activeSize: const Size(30.0, 6.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      
                      setState(() {
                    
                        _selectedIndex++;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                      decoration: BoxDecoration(
                        color: Color(0xffBAD0FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Дальше",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff2740A6),
                            fontFamily: "Mont"),
                      ),
                    ),
                  )
                ],
              )
      
            ),
    );
  }
}
