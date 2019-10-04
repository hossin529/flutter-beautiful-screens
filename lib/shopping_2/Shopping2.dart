import 'package:flutter/material.dart';
import 'package:lrarning/shopping_2/ProductPage.dart';

import 'ProductBottomPart.dart';

class Shopping2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF666A75),
          Color(0xFF2b2e37),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.clamp
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // leading: IconButton(
          //   onPressed: (){},
          //   icon: Icon(Icons.arrow_back,size:20,color:Colors.white),
          // ),
          title: Text('Energy cloud',style:TextStyle(
            fontSize: 18,
            fontFamily: 'Mon tserrat-Bold'
           )),
           centerTitle: true,
           actions: <Widget>[IconButton(icon: Icon(Icons.favorite_border,color:Colors.white,size: 20,),onPressed: (){},)],
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
            ProductPage(),
            ProductBottomPart()

            ],
          ),
        ),
      ),
    );
  }
}
