import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/bottomSheet.dart';
import 'package:z_pay/screens/pages/Cantracts/contracts.dart';
import 'package:z_pay/screens/pages/Cantracts/fines_page.dart';

class ContactsTable {
  Contracts contracts = Contracts();
  BottomSheetPage bottomSheetPage = BottomSheetPage();

  Widget contactsTable(context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xffEAE9EE),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '299 000',
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "оплачен",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff32B179),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '299 000',
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                // InkWell(
                //   onTap: (){
                //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FinesPage()));
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xffE71010)),
                //         color: Color(0xffFFDBDB),
                //         borderRadius: BorderRadius.circular(32)),
                //     child: Text(
                //       "не оплачен",
                //       style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w600,
                //         color: Color(0xffE71010),
                //       ),
                //     ),
                //   ),
                // )

                Text(
                  "оплачен",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff32B179),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '9 000',
                  style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                  decoration: BoxDecoration(
                      color: Color(0xffF4F6FA),
                      borderRadius: BorderRadius.circular(6)),
                  child: Icon(Icons.arrow_drop_down,size: 36,color: Color(0xff1D44CB),)
                )
              ],
            ),
          ),
          
       Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '9 000',
                  style: TextStyle(
                      color: Color(0xffE71010),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    bottomSheetPage.dialogPageOplat(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 13),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xffFFB21E), Color(0xffF8AA14)]),
                        borderRadius: BorderRadius.circular(32)),
                    child: Text(
                      "Погасить",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '299 000',
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "не оплачен",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff717394),
                  ),
                ),
              ],
            ),
          ),
        
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '299 000',
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                // InkWell(
                //   onTap: (){
                //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FinesPage()));
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xffE71010)),
                //         color: Color(0xffFFDBDB),
                //         borderRadius: BorderRadius.circular(32)),
                //     child: Text(
                //       "не оплачен",
                //       style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w600,
                //         color: Color(0xffE71010),
                //       ),
                //     ),
                //   ),
                // )

                Text(
                  "не оплачен",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff717394),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '299 000',
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: Color(0xff878B9A),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Text(
                  '299 000',
                  style: TextStyle(
                      color: Color(0xff12154C),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                // InkWell(
                //   onTap: (){
                //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FinesPage()));
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xffE71010)),
                //         color: Color(0xffFFDBDB),
                //         borderRadius: BorderRadius.circular(32)),
                //     child: Text(
                //       "не оплачен",
                //       style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w600,
                //         color: Color(0xffE71010),
                //       ),
                //     ),
                //   ),
                // )

                Text(
                  "не оплачен",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff717394),
                  ),
                ),
              ],
            ),
          ),
         SizedBox(height: 12)
       ],
      ),
    );
  }
}
