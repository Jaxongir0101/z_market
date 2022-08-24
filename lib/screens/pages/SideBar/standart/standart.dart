import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class Status extends StatefulWidget {
  Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final List images = [
    "assets/images/status/standart.png",
    "assets/images/status/bronze.png",
    "assets/images/status/silver.png",
    "assets/images/status/gold.png",
  ];
  final List color = [
    Color(0xff0F2825),
    Color(0xff9F2D23),
    Color(0xff041429),
    Color(0xff151E34)
  ];
  final List text = [
    "ZPAY-Standart",
    "ZPAY-Bronze",
    "ZPAY-Silver",
    "ZPAY-GOLD"
  ];

  CarouselSliderController? _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          CarouselSlider.builder(
            unlimitedMode: false,
            controller: _sliderController,
            slideBuilder: (index) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 340,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        color: color[index],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40),
                            Text(
                              text[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/status/statusCheck.png"),
                                SizedBox(width: 12),
                                Text(
                                  "Кредитный лимит до 8 000 000 сум.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(height: 32),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/status/statusCheck.png"),
                                SizedBox(width: 12),
                                Text(
                                  "Имеется наценка",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(height: 32),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/status/statusCheck.png"),
                                SizedBox(width: 12),
                                Text(
                                  "Период рассрочки от 3 до 9 месяцев.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ), SizedBox(height: 32),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/status/statusCheck.png"),
                                SizedBox(width: 12),
                                Text(
                                  "Период рассрочки от 3 до 9 месяцев.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ), SizedBox(height: 32),

                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/status/statusCheck.png"),
                                SizedBox(width: 12),
                                Text(
                                  "Без первоначального взноса.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            slideTransform: CubeTransform(),
            slideIndicator: CircularSlideIndicator(
                itemSpacing: 14,
                padding: EdgeInsets.only(bottom: 30),
                indicatorRadius: 4.5,
                currentIndicatorColor: Colors.white,
                indicatorBackgroundColor: Color(0xff878B9A).withOpacity(0.5),
                alignment: Alignment.center),
            itemCount: images.length,
            initialPage: 0,
            enableAutoSlider: false,
          ),
          Container(
            height: 350,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    _sliderController!.previousPage();
                  },
                  child: Container(
                    height: 42,
                    width: 42,
                    color: Color(0xff3554D1),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),

                InkWell(
                  onTap:(){
                    _sliderController!.nextPage();

                  },
                  child: Container(
                    height: 42,
                    width: 42,
                    color: Color(0xff3554D1),
                    child: Icon(
                      Icons.navigate_next_rounded,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
