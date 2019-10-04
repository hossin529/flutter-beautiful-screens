import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed1 extends StatefulWidget {
  @override
  _Feed1State createState() => _Feed1State();
}

class _Feed1State extends State<Feed1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          width: 220,
          child: Icon(
            Icons.person,
            color: Colors.black.withOpacity(.9),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 229,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(59),
                  border: Border.all(color: Colors.grey.withOpacity(.3))),
              child: new TextField(
                decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(.7),
                    ),
                    border: InputBorder.none,
                    hintText: "Search ..",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey)),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black.withOpacity(.9),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            post('assets/beach.jpg','assets/hossin.jpg','Awesome weekEnd at a beautiful beach','Oussama bary',123,43),
            post('assets/coding.jpg','assets/hossin2.jpg','Just wrote a new screen. \"Feed screen\".','Houssain El ghazly',75,23),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        height: 75,
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide()
                    )
                    ),
                  child: Text('new feed',style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(width: 12,),
                Text('popular',style: TextStyle(color: Colors.grey,),),
                SizedBox(width: 12,),
                Text('events',style: TextStyle(color: Colors.grey,),),
              ],
            ),
            FloatingActionButton(
      onPressed: null,
      backgroundColor: Colors.black,
      child: Icon(Icons.add,size: 34,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      
      
    ),
          ],
        ),
      ),
    
    );
    
  }
}

Widget post(String image,user,title,name ,int likes,comments) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Colors.grey.withOpacity(.5), width: .5),
    )),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(user),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '35 mins ago',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Text(
              title,
              style: TextStyle(color: Colors.black.withOpacity(.7)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                    image)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                          ),
                          label: Text(
                            "$likes",
                            style: TextStyle(color: Colors.black),
                          )),
                      FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            FontAwesomeIcons.comment,
                            color: Colors.black,
                          ),
                          label: Text(
                            "$comments",
                            style: TextStyle(color: Colors.black),
                          )),
                    ]),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
