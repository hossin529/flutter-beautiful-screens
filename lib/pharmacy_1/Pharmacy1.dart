import 'package:flutter/material.dart';

class Pharmacy1 extends StatefulWidget {
  @override
  _Pharmacy1State createState() => _Pharmacy1State();
}

class _Pharmacy1State extends State<Pharmacy1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFF19769F),
        Color(0xFF25D8A6),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Pharmacy'),
          elevation: 0.0,
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
                  child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
                pharmacy(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pharmacy() {
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.grey.withOpacity(.5)))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            leading: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  'https://cdn0.iconfinder.com/data/icons/health-4-2/97/186-512.png',
                ),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Mohan pharmacy",
                      style: TextStyle(color: Color(0xFF19769F), fontSize: 18),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.near_me,
                          color: Colors.grey,
                        ),
                        Text(
                          "0.7 km",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  " Alopathic",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF19769F),
                          size: 20,
                        ),
                        Text(
                          ' Hay riad sect 5 massira 2',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.6)),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star_border,
                          color: Colors.blue,
                        ),
                        Text(
                          ' 4.5',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
