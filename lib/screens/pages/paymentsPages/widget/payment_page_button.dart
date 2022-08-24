import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/paymentsPages/mobile_pay_input_data.dart';


Widget PaymentButton(context,imageUrl){
   // MobilePaymentData? data;
  return  Expanded(
    child: InkWell(
      highlightColor: Colors.blue,
      // splashColor: Colors.blue,
      // splashFactory: Colors.blue,
      radius: 100,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> MobilePayDetails( imageUrl: imageUrl,)));
      },

      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(
          imageUrl,
          scale: 1.5,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}