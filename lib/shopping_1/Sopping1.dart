import 'package:flutter/material.dart';
import 'Product.dart';
class Sopping1 extends StatefulWidget {


  @override
  _Sopping1State createState() => _Sopping1State();
}

class _Sopping1State extends State<Sopping1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
          child: Column(
                children: <Widget>[
                  Align(alignment: Alignment.topCenter,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 15),
                    child: Image.asset('assets/nike.png',color: Color(0xFF383739),width: 76,),
                  )),
                Product(0xFFB0D5D8, 'assets/shoes2.png', 'Running Nike', '\$439', '\$600'),
                SizedBox(height: 15,),
                Product(0xFF7DF481, 'assets/shoes.png', 'Puma', '\$439', '\$600'),
                SizedBox(height: 15,),
                ],
              ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
        boxShadow: [ BoxShadow(
          color: Colors.black12.withOpacity(0.056),
          offset: Offset(0.0,-3.0),
          blurRadius: 10.0
        )]  ,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.store),
          Icon(Icons.search),
          Icon(Icons.favorite_border),
          Icon(Icons.add_shopping_cart),
          ],
        ),
      ),
    );
  }
}
