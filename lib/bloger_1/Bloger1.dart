import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lrarning/controllers/Bloger1Controller.dart';
import 'package:provider/provider.dart';

class Bloger1 extends StatefulWidget {
  @override
  _Bloger1State createState() => _Bloger1State();
}

String text = 'empty text';
TextEditingController t = new TextEditingController();

class _Bloger1State extends State<Bloger1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.access_alarms, color: Colors.white),
                onPressed: () => print(22)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              
               Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("hossin parkour"),
                          Text("21/33/12221"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset('assets/beach.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.favorite_border),
                              SizedBox(width: 12,),
                              Icon(Icons.comment),
                            ],
                          ),
                              Icon(Icons.share),
                        ],
                        
                      ),
                    )
                  ],
                )
              ),



            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
