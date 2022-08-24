import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/bottomSheet.dart';
import 'package:z_pay/screens/pages/Cantracts/contact_table.dart';

class Contracts extends StatefulWidget {
  const Contracts({Key? key}) : super(key: key);

  @override
  State<Contracts> createState() => _ContractsState();
}

class _ContractsState extends State<Contracts> {
  ContactsTable contactsTable = ContactsTable();
  BottomSheetPage  bottomSheetPage = BottomSheetPage();
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff3554D1),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "№202013 от 22.01.2022",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 4),
              Text(
                "№2002123 от 21/02/2022",
                style: TextStyle(
                    color: Color(0xff12154C),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8),
              Text(
                "Телевизор LG 43 UHD, Thinq Ai",
                style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 36),
              Text(
                "График платежей",
                style: TextStyle(
                    color: Color(0xff12154C),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Text(
                "Срок погашения 6 месяцев",
                style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 18, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    Text(
                      "Сумма платежа",
                      style: TextStyle(
                        color: Color(0xff5F6C7A),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Остаток",
                      style: TextStyle(
                          color: Color(0xff5F6C7A),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Статус",
                      style: TextStyle(
                          color: Color(0xff5F6C7A),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              contactsTable.contactsTable(context),
              SizedBox(height: 20),
              Text(
                "4 990 570 UZS",
                style: TextStyle(
                    color: Color(0xff12154C),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8),
              Text(
                "Остаток: 1 670 900 сум",
                style: TextStyle(
                  color: Color(0xff878B9A),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffE8EBF0),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text("Оферта"),
                  subtitle: Text("Договор оферты №15390"),
                  leading: Image.asset("assets/images/dogovor/document.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              contractButton(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget contractButton() {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: const [
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
             bottomSheetPage.dialogPage(context);
            },
            child: Text(
              "Погасить досрочно",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }




}
