import 'package:flutter/material.dart';
import 'package:lrarning/menu_1/Menu1.dart';
import 'package:lrarning/pharmacy_1/Pharmacy1.dart';
import 'shopping_1/Sopping1.dart';
import 'shopping_2/Shopping2.dart';
import 'music_1/Music1.dart';
import 'menu_1/Menu1.dart';
import 'feed_1/Feed1.dart';
import 'ayoub/Ayoub.dart';
import 'bloger_1/Bloger1.dart';
import 'welcom_1/Welcom1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient:LinearGradient(
              colors: [
                Color(0xff03a8f4),
                Color(0xff0278ae),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ) 
          ),
                  child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          'Hossin Trining Design View',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    work(context,'shopping page',Icon(Icons.shopping_cart,color: Colors.white,),1,Sopping1()),
                    work(context,'shopping page 2',Icon(Icons.shopping_cart,color: Colors.white,),2,Shopping2()),
                    work(context,'music',Icon(Icons.music_note,color: Colors.white,),3,Music1()),
                    work(context,'Menu ',Icon(Icons.menu,color: Colors.white,),4,Menu1()),
                    work(context,'Feed ',Icon(Icons.feedback,color: Colors.white,),5,Feed1()),
                    work(context,'pharmacy ',Icon(Icons.favorite,color: Colors.white,),6,Pharmacy1()),
                    work(context,'Feed 2 ',Icon(Icons.favorite,color: Colors.white,),7,Ayoub()),
                    work(context,'Bloger  ',Icon(Icons.favorite,color: Colors.white,),8,Bloger1()),
                    work(context,'Bloger  ',Icon(Icons.favorite,color: Colors.white,),8,Welcom1()),
                  ],
                )),
          ),
      ),
    );
  }
}


Widget work( BuildContext context,String title,Icon icon,int count, Widget page){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4dc7ff),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: FlatButton(
                      onPressed: () => Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (BuildContext context) => page)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                icon,
                                SizedBox(width: 12,),
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                              ],
                            ) ,
                            
                             
                               Text('$count',style:TextStyle(fontSize: 24,color: Colors.black.withOpacity(.6))) ,
                            
                          ],
                        ),
                      ),
                    ),
                  ),
  );
}
