import 'package:flutter/material.dart';
Widget wishistItem(image, String productName, String variant, String price){
   bool _isChecked = false;
  return ListTile(
   leading: Checkbox(value: _isChecked, onChanged: (value){
    setState((){
      _isChecked = value!;
    });
   }),
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

void setState(Null Function() param0) {
}

Widget loginField(String _hintText){
  return  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all()
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: _hintText,
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none
              ),
            ),
          );
}
Widget inputButton(String data){
  return Container(
    width: 300,
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(12),
    ),
    child: TextButton(onPressed: (){}, child: Text(data)),
  );
}