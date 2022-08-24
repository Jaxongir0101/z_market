import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isNotif = false;

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
                      
       
                child: SvgPicture.asset("assets/images/SideBar/notif.svg"),
                
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                 
                 
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              context.read<ViewModel>().notification(false);
                            },
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: context.watch<ViewModel>().isNotification
                                      ? Colors.white
                                      : Color(0xff3554D1)),
                              child: Text(
                                "Уведомление",
                                style: TextStyle(
                                    color: !context.watch<ViewModel>().isNotification
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                              onTap: () {
                                context.read<ViewModel>().notification(true);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: !context.watch<ViewModel>().isNotification
                                        ? Colors.white
                                        : Color(0xff3554D1)),
                                child: Text(
                                  "История списания",
                                  style: TextStyle(
                                      color: context.watch<ViewModel>().isNotification
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  !context.watch<ViewModel>().isNotification
                      ? notificationTable()
                      : historyWrite(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationTable() {
    List widgets = [
      Container(
        decoration: BoxDecoration(
            color: Color(0xffFFB21E), borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )),
          child: ListTile(
            leading: Image.asset(
              "assets/images/notification/bonus.png",
              height: 36,
              width: 36,
            ),
            title: Text(
              "Вам был начислен 2500 ZCoins",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff12154C),
              ),
            ),
            subtitle: Row(
              children: [
                // Image.asset("assets/images/notification/calendar.png"),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 16,
                ),
                SizedBox(width: 7),
                Text("03.17.2022, 14:04")
              ],
            ),
            trailing: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Color(0xffFFB21E),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: Color(0xffFFB21E), borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )),
          child: ListTile(
            leading: Image.asset(
              "assets/images/notification/bonus.png",
              height: 36,
              width: 36,
            ),
            title: Text(
              "Вам был начислен 2500 ZCoins",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff12154C),
              ),
            ),
            subtitle: Row(
              children: const [
                // Image.asset("assets/images/notification/calendar.png"),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 16,
                ),
                SizedBox(width: 7),
                Text("03.17.2022, 14:04")
              ],
            ),
            trailing: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Color(0xffFFB21E),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: Color(0xff32B179), borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Начислен Бонус",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Color(0xffFFB21E),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/notification/bonusBlue.png",
                  height: 36,
                  width: 36,
                ),
                title: Container(
                  width: 240,
                  child: Text(
                    "Hurmatli RAXMANOV SHAXBOZ RASULDJON O`G`LI! Sizning 191400 so'mlik to'lovingiz muvaffaqiyatli o'tkazildi. Shartnoma bo’yicha qolgan qarzdorlik...",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff12154C),
                    ),
                  ),
                ),
                subtitle: Row(
                  children: [
                    // Image.asset("assets/images/notification/calendar.png"),
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 16,
                    ),
                    SizedBox(width: 7),
                    Text("03.17.2022, 14:04")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {},
                child: Text(
                  "Показать все",
                  style: TextStyle(
                      color: Color(0xff878B9A), fontWeight: FontWeight.w700),
                )),
            InkWell(
                onTap: () {},
                child: Text(
                  "Отметить как прочитано",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff2145bb),
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Dismissible(
          key: Key("MyString"),
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
            } else {
              print('Remove item');
            }
            setState(() {
              widgets[0].remove(0);
            });
          },
          child: widgets[0],
        ),
        SizedBox(height: 15),
        Dismissible(
          key: Key("MyString2"),
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
            } else {
              print('Remove item');
            }
            setState(() {
              widgets[1].remove(1);
            });
          },
          child: widgets[1],
        ),
        SizedBox(height: 15),
        Dismissible(
          key: Key("MyString3"),
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
            } else {
              print('Remove item');
            }
            setState(() {
              widgets[2].removeAt(2);
            });
          },
          // confirmDismiss: (DismissDirection direction) async {
          //   return await showDialog(
          //     context: context,
          //     builder: (BuildContext context) {
          //       return AlertDialog(
          //         title: const Text("Delete Confirmation"),
          //         content: const Text("Are you sure you want to delete this item?"),
          //         actions: <Widget>[
          //           ElevatedButton(
          //               onPressed: () => Navigator.of(context).pop(true),
          //               child: const Text("Delete")
          //           ),
          //           ElevatedButton(
          //             onPressed: () => Navigator.of(context).pop(false),
          //             child: const Text("Cancel"),
          //           ),
          //         ],
          //       );
          //     },
          //   );
          // },

          // secondaryBackground: Container(
          //   color: Colors.red,
          //   child: Padding(
          //     padding: const EdgeInsets.all(15),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Icon(Icons.delete, color: Colors.white)
          //       ],
          //     ),
          //   ),
          // ),
          child: widgets[2],
        )
      ],
    );
  }

  Widget historyWrite() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "История списаний",
          style: TextStyle(
              color: Color(0xff12154C),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          height: 4,
          width: 24,
          color: Color(0xff12154C),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/notification/marketRed.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Texnomart",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontFamily: "Mont",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "14:45",
                      style: TextStyle(
                          color: Color(0xffCBCACF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "-3 560 230 UZS",
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 16,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/SideBar/qr1.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "QR-Оплата",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontFamily: "Mont",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                          color: Color(0xffCBCACF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "-3 560 230 UZS",
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 16,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/SideBar/qr2.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "QR-Оплата",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontFamily: "Mont",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                          color: Color(0xffCBCACF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "-3 560 230 UZS",
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 16,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/notification/marketBlue.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "MediaPark",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontFamily: "Mont",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                          color: Color(0xffCBCACF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "-3 560 230 UZS",
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 16,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/notification/marketBlue.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "MediaPark",
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontFamily: "Mont",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                          color: Color(0xffCBCACF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "-3 560 230 UZS",
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 16,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
