import 'package:flutter/material.dart';

Widget wishistItem(image, String productName, String variant, String price){
  return ListTile(
   leading: Image.asset(image),
   title: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text(productName),
       Text(variant, style: TextStyle(
        fontSize: 12
       ),)
     ],
   ),
   subtitle: Text(price),
   
  );
}