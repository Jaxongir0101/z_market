
import 'package:flutter/material.dart';

Widget textfromNumMobile(){
  return             Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20,bottom: 10,top: 20),
        child: Text("Номер  телефона",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          child: TextFormField(

              decoration:InputDecoration(
                fillColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
              )
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 20,bottom: 10,top: 20),
        child: Text("Сумма платежа",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          child: TextFormField(

              decoration:InputDecoration(
                fillColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
              )
          ),
        ),
      ),
      Expanded(
        child: SizedBox(),
      ),
    ],
  );

}