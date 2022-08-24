import 'package:flutter/material.dart';

class  NotifStory{

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
  notifStoryTable(setState){
Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {},
            child: Text(
              "Показать все",
              style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w700),
            )),
        InkWell(
            onTap: () {},
            child: Text(
              "Отметить как прочитано",
              style: TextStyle(
                  color: Color(0xff2145bb),
                  fontWeight: FontWeight.w700),
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
    ),
  ],
);
  }
}
