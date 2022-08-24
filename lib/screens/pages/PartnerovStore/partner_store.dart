import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/PartnerovStore/partner_details.dart';

class PartnerStore extends StatefulWidget {
  const PartnerStore({Key? key, }) : super(key: key);

  @override
  State<PartnerStore> createState() => _PartnerStoreState();
}

class _PartnerStoreState extends State<PartnerStore> {
  List filterTitle = ["Все", "Мед-клиники", "Техника", "Услиги", "Авто"];
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
                      width: 40,            
                    ),
                  ],
                ),
              ),
          

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24),
              child: Column(
                children: [
                    
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: 13, top: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8),
                                  Image.asset(
                                    "assets/images/partner/skolov.png",
                                    width: 74,
                                    height: 23,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Подвеска DolceVita",
                                    style: TextStyle(
                                        color: Color(0xff926C4B),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "136 000 сум/мес",
                                    style: TextStyle(
                                        color: Color(0xff878B9A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      height: 29,
                                      width: 167,
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Color(0xff00B597),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text(
                                        "Без взноса / 6 платежей",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))
                                ],
                              ),
                              SizedBox(width: 16),
                              Image.asset(
                                "assets/images/partner/reklama.png",
                                height: 131,
                                width: 129,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: 13, top: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8),
                                  Image.asset(
                                    "assets/images/partner/skolov.png",
                                    width: 74,
                                    height: 23,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Подвеска DolceVita",
                                    style: TextStyle(
                                        color: Color(0xff926C4B),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "136 000 сум/мес",
                                    style: TextStyle(
                                        color: Color(0xff878B9A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      height: 29,
                                      width: 167,
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Color(0xff00B597),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text(
                                        "Без взноса / 6 платежей",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))
                                ],
                              ),
                              SizedBox(width: 16),
                              Image.asset(
                                "assets/images/partner/reklama.png",
                                height: 131,
                                width: 129,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: 13, top: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8),
                                  Image.asset(
                                    "assets/images/partner/skolov.png",
                                    width: 74,
                                    height: 23,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Подвеска DolceVita",
                                    style: TextStyle(
                                        color: Color(0xff926C4B),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "136 000 сум/мес",
                                    style: TextStyle(
                                        color: Color(0xff878B9A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      height: 29,
                                      width: 167,
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Color(0xff00B597),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text(
                                        "Без взноса / 6 платежей",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))
                                ],
                              ),
                              SizedBox(width: 16),
                              Image.asset(
                                "assets/images/partner/reklama.png",
                                height: 131,
                                width: 129,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Магазины партнеров",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartnerDetails(),));
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 20),
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/partner/collection1.png"),
                                        fit: BoxFit.cover)),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 40,
                                  width: 140,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF23A3F),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(6),
                                            bottomRight: Radius.circular(6))),
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/partner/sport.png",
                                          height: 16,
                                          width: 50,
                                        ),
                                        Text(
                                          "8%",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          );
                        })),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 33,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                            
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding:
                                  EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                              decoration: BoxDecoration(
                                  // color: Color(0xff1D44CB),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(
                                filterTitle[index],
                                style: TextStyle(
                                    color: Color(0xff3554D1), fontSize: 14),
                              ),
                            ),
                          );
                        }),
                  ),
SizedBox(height: 18),
       myProducts(),
       SizedBox(height: 18),
             myProducts(),
SizedBox(height: 14,),
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
                                    "Все товары",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 16,
                                        fontFamily: "Mont",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              )),
     SizedBox(height: 14,),              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget myProducts(){
  return Padding(
    padding: const EdgeInsets.only(right: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
          padding: EdgeInsets.all(10),
        height: 154,
        width: 154,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xff32B179),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("5% кешбека",style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Mont"),),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/partner/table.png",height: 81,width: 81,fit: BoxFit.cover,alignment: Alignment.center,),
                ],
              ),
                   Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xffF2F4F7),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("AIKO",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Mont"),),

              ),
             
             ],
            ),
          ),
          SizedBox(height: 10),
           Container(
            width: 150,
            child: Text("Офисный стул MX2100",style: TextStyle(fontWeight: FontWeight.w600),))
        ],
      ),
 
 
       Column(
        children: [
          Container(
          padding: EdgeInsets.all(10),
        height: 154,
        width: 154,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xff32B179),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("5% кешбека",style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Mont"),),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/partner/table.png",height: 81,width: 81,fit: BoxFit.cover,alignment: Alignment.center,),
                ],
              ),
                   Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xffF2F4F7),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("AIKO",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Mont"),),

              ),
             
             ],
            ),
          ),
          SizedBox(height: 10),

           Container(
            width: 150,
            child: Text("Офисный стул MX2100",style: TextStyle(fontWeight: FontWeight.w600),)),


        ],
      ),
    ],
),
  );
   
}

  List products = [
    "assets/images/partner/chair.png",
    "assets/images/partner/shoes.png",
    "assets/images/partner/phone.png",
    "assets/images/partner/table.png",
  ];
}
