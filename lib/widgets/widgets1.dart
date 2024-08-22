import 'package:flutter/material.dart'; 
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget boxStyle(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: Colors.grey
      )
    ),
    child: TextField(
      decoration: InputDecoration(
        icon: IconButton(onPressed: (){
          
        }, icon: Icon(Icons.search)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(5)
      ),
    ),
  );
}
Widget box(){
  return SizedBox(
    height: 10,
  );
}
Widget Box(double _width){
  return SizedBox(
    width: _width,
  );
}
Widget advert(){
  return MaterialButton(
    onPressed: (){},
    child: Image.asset('assets/advert.png'),
    );
}
 
  Widget textype(String typetext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(typetext)
      ],
    );
  }
Widget schoolIcons(image){
  return IconButton(onPressed: (){}, icon: Image.asset(image));
}
Widget products(product, String data, String price, context, nextPage){
  return Container(
    width: 160,
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> nextPage));
            }, child: Image.asset(product)),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data, style: TextStyle(
                    fontSize: 10
                  ),),
                Text(price, style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: 160,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(7)
          ),
          child: TextButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(
            color: Colors.white,
          ),)))
      ],
    ),
  );
}
Widget ItemsForSale(product1, String data1, String price1, product2, String data2, String price2, context1, page1, context2, page2){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  products(product1, data1, price1, context1, page1),
                   products(product2, data2, price2, context2, page2),   
                ],
              );
}
Widget colorPanel(_color){
  return Container(
    height: 30,
    width: 50,
    decoration: BoxDecoration(
      color: _color,
      borderRadius: BorderRadius.circular(7)
    ),
    child: MaterialButton(onPressed: (){}),
  );
}