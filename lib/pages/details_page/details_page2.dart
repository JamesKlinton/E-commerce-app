import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traitz_commerce/widgets/widgets1.dart';

class DetailsPage2 extends StatelessWidget {
  const DetailsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomSheet: Container(
        width: double.infinity,
        height: 50,
        padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 140,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 221, 221),
              border: Border.all(color: const Color.fromARGB(255, 163, 153, 153))
            ),
            child: TextButton(onPressed: (){}, child: Text("Add to Cart",style: TextStyle(
              color: Colors.black
            ),))),
             Container(
              width: 140,
            decoration: BoxDecoration(
               color: Color.fromARGB(255, 226, 221, 221),
              border: Border.all(color: Color.fromARGB(255, 163, 153, 153))
            ),
            child: TextButton(onPressed: (){}, child: Text("Buy Now", style: TextStyle(
              color: Colors.black
            ),))),
        ],
      )),
      appBar: AppBar(
        title: Text("Details Product"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/imgslider.png'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Airpods maxed by Apple", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                          ),),
                          Text("\$1999 (219 people like this)", style: TextStyle(
                            fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                      Box(90),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_rounded))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Choose the color", style: TextStyle(
                        color: Colors.grey
                      ),),
                    ],
                  ),
                  box(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      colorPanel(const Color.fromARGB(255, 236, 108, 151)),
                      colorPanel(const Color.fromARGB(255, 224, 163, 183)),
                      colorPanel(const Color.fromARGB(255, 192, 156, 168)),
                      colorPanel(const Color.fromARGB(31, 146, 139, 139)),
                      colorPanel(const Color.fromARGB(66, 27, 26, 26)),
                    ],
                  ),
                  box(),
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.apple, color: Colors.black,)),
                      Box(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Apple Store", style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),),
                          Text("online 12 minutes ago", style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                      Box(100),
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 202, 196, 196))
                        ),
                        child: TextButton(onPressed: (){}, child: Text('Follow', style: TextStyle(
                          color: Colors.black
                        ),)))
                    ],
                  ),
                  box(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description of product", style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                  box(),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                ],
              ),
            )
          ],
        ),
      )
    );

  }
}