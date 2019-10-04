import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  int cardColor;
  String picture;
  String title;
  String price;
  String secondPrice;

  Product(this.cardColor,this.picture,this.title,this.price,this.secondPrice);
  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  color: Color(cardColor),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.withOpacity(.3),width: .2)
                ),
                child: Column(children: <Widget>[
                  SizedBox(height: 12,),
                  Image.asset(picture,width: 281,height: 191,),
                  SizedBox(height: 12,)  , 
                  Text(title,style: TextStyle(color: Color(0xFF383739),fontSize: 25,fontFamily: 'Releway'),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.favorite_border,color:  Color(0xFF383739),),
                        Column(children: <Widget>[
                          Text(secondPrice,style:TextStyle(fontSize: 17,color: Colors.redAccent)),
                          Text(price,style:TextStyle(fontSize: 25,color:  Colors.black)),
                        ],),
                        Icon(Icons.add_shopping_cart,color:  Color(0xFF383739),),

                    ],),
                  )
                  ],),
              );
  }
}