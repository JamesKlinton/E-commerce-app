import 'package:flutter/material.dart';
import 'package:traitz_commerce/widgets/widgets2.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Widget> items =[

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery to"),
                Text("Salatiga City, Central Java"),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            wishistItem('assets/imgslider.png', "Airpods max by Apple", "Variant: Grey", "\$1999.99"),
              wishistItem('assets/imgslider.png', "Airpods max by Apple", "Variant: Grey", "\$1999.99"),
                wishistItem('assets/imgslider.png', "Airpods max by Apple", "Variant: Grey", "\$1999.99"),
                  wishistItem('assets/imgslider.png', "Airpods max by Apple", "Variant: Grey", "\$1999.99"),
        
          ],
        ),
      ),
    );
  }
}