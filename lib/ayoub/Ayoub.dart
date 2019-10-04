import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ayoub extends StatefulWidget {
  @override
  _AyoubState createState() => _AyoubState();
}

class _AyoubState extends State<Ayoub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF241332),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              FontAwesomeIcons.filter,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF241332),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(150.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, bottom: 25),
                  child: Text(
                    'Updates',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/hossin2.jpg'),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Hossin El ghazely',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 21),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Text(
                              "8 Nov",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'In last summer i had a great time last summer i had a great time',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    color:  Color(0xFF241332),
                    height: 230.0,
                    child: Container(
                        margin: EdgeInsets.only(top: 60),
                      child:  Padding(
                              padding: EdgeInsets.only(top: 90,left: 25,right: 25),
                              child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/hossin.jpg'),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Hossin El ghazely',
                                    style: TextStyle(
                                      color: Colors.white,
                                        fontWeight: FontWeight.bold, fontSize: 21),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Text(
                                "8 Nov",
                                style: TextStyle(color: Colors.grey),
                              )
                          ],
                        ),),
                            ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top:100.0 ),
                        height: 270.0,
                       
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                              child: Image.asset(
                                'assets/beach.jpg',
                                width: double.infinity,
                                fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 90,left: 25,right: 25),
                              child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/hossin.jpg'),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Hossin El ghazely',
                                    style: TextStyle(
                                      color: Colors.white,
                                        fontWeight: FontWeight.bold, fontSize: 21),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Text(
                                "8 Nov",
                                style: TextStyle(color: Colors.grey),
                              )
                          ],
                        ),),
                            )
                          ],
                        ),
                      ),
                   Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(90))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 27.0, vertical: 25),
                        child: Container(
                          height: 140,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFFffcb1e),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(60.0),
                                  bottomLeft: Radius.circular(60.0),
                                  bottomRight: Radius.circular(15))),
                                  child: Image.asset('assets/gopro.png'),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),

        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        child: Icon(Icons.add,color:  Color(0xFF241332),),
      ),
    );
  }
}
