import 'package:flutter/material.dart';

class PartnerDetails extends StatelessWidget {
  const PartnerDetails({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        
        slivers: <Widget>[
          //2
          
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
            expandedHeight: 250.0,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/partner/partDetails.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          //3
          
          SliverList(
            
            delegate: SliverChildBuilderDelegate(
              
              (_, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 32, top: 20, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: Color(0xff32B179),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "ZPAY Standard",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Описание магазина: Terra Pro",
                        style: TextStyle(
                            color: Color(0xff1E3389),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Mont"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "ETUDE.Прикоснись к прекрасному.\nСерьги из золочёного серебра с\nфианитами. Общие сведения: Вставка-\nфианит 38 шт. Тип замка:Английский;\nПримерный вес: 9,05 гр. Покрытие:\nЗолочение,Родирование,Чернение.\nПроба 925.",
                        style: TextStyle(),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Адрес магазина",
                        style: TextStyle(
                            color: Color(0xff1E3389),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Mont"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Novza: ул. Мукимий 22-А",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontFamily: "Mont"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Контактные данные",
                        style: TextStyle(
                            color: Color(0xff1E3389),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Mont"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "71 200 88 80",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontFamily: "Mont"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Время работы",
                        style: TextStyle(
                            color: Color(0xff1E3389),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Mont"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "С 9:30-21:00",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontFamily: "Mont"),
                      ),
                      SizedBox(height: 36),
                      SizedBox(
                          width: double.infinity,
                          height: 50,
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
                              onPressed: () {},
                              child: Text(
                                "Связаться с магазином",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontFamily: "Mont",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
     
      ),
    );
  }
}
