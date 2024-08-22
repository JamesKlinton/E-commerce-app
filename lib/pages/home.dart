// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:traitz_commerce/pages/details_page/details_page.dart';
import 'package:traitz_commerce/pages/details_page/details_page2.dart';
import 'package:traitz_commerce/pages/my_cart/my_cart.dart';
import 'package:traitz_commerce/widgets/widgets1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      ),),
                      Text("Salatiga City, Central Java"),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>MyCart()));
                  }, icon: Icon(Icons.shopping_cart_outlined),
                  enableFeedback: true,
                  mouseCursor: MouseCursor.defer,
                  ),
                ],
              ),
              box(),
           boxStyle(),
           box(),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 advert(),
                 advert(),
                 advert(),
                 advert()
               ],
             ),
           ),
           box(),
           textype("Category"),
           box(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                schoolIcons('assets/appareil.png'),
                schoolIcons('assets/school.png'),
                schoolIcons('assets/sports.png'),
                schoolIcons('assets/electronic.png'),
                schoolIcons('assets/all.png')
              ],
            ),
          ),
          box(),
          textype("Recent Products"),
          Column(
            children: [
             ItemsForSale('assets/television.png', 'Monitor LG 22', "\$199.99", 'assets/mug.png', 'Aesthetic Mug', '\$19.99', context, DetailsPage(), context, DetailsPage2()),
              box(),
             ItemsForSale( 'assets/earphone.png', 'Headphones 15', '\$32.99','assets/earphone2.png', 'Headphone14', '\$29.99', context, DetailsPage(), context, DetailsPage2()),
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}