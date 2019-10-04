import 'package:flutter/material.dart';

class Welcom1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Stack(
             children: <Widget>[
               Container(
                 color: Colors.blue,
                 width: double.infinity,
                 height: 120,
               ),
               Positioned(
                 top: 36,
                 left: 12,
                 child: Icon(Icons.arrow_back,size: 32,color: Colors.white,)),
                 Align(
                   alignment: Alignment.bottomCenter,

                                  child: Container(
                                    margin: EdgeInsets.only(top: height *0.1),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Column(
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.circle,
                                border: Border.all(color: Colors.blue,width: 2)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: Column(
                                 children: <Widget>[
                                    Icon(Icons.star,color:Colors.blue),
                                    Text('Rating',style: TextStyle(color: Colors.blue),),
                                 ],
                               ),
                             )
                           ),
                           Text('Rating'),
                         ],
                       ),
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 3),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,1.3),
                            blurRadius: 3.6
                          )
                        ]
                        ),
                        child:
                        ClipOval(child: Image.asset('assets/hossin.jpg',width: 160,)) ,
                      ),
                         
                        //  child: Image.asset('assets/hossin.jpg',width: 120,)
                        
                         Column(
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.circle,
                                border: Border.all(color: Colors.red,width: 2)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: Icon(Icons.mail,color:Colors.red,size: 48,),
                             )
                           ),
                           Text('Rating'),
                         ],
                       ),
                     ],
                   ),
                                  ),
                 )
             ],
           ),
           SizedBox(height: 32,),
           Center(child: Text('Hossine Hossine',style: TextStyle(fontSize: 32,color: Colors.black.withOpacity(.6)))),
           SizedBox(height: 12,),
           Center(child: Text('dsfdsf sfdsfs',style: TextStyle(fontSize: 18,color: Colors.grey))),
           SizedBox(height: 43,),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 24),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text('dsfdsf sfdsfs',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.7))),
                  SizedBox(height: 21,),
                 card('hey World dsdfwxdcfsdfs','qsdqssqdwddsfsfsdqsdq'),
                 card('hey World dsdfsdfs','qsdqssqdqsdq'),
                 card('hey World dsdfsdfs','qsdqssqdqsdq'),
                 card('hey World dsdfsdfs','qsdqssqdqsdq'),
                 card('hey World dsdfsdfs','qsdsqssqdqsdq'),
                  
               ],
             ),
           )
         ], 
        ),
      ),  
    );
  }
}

Widget card(String title,desc){
  return Padding(
    padding: const EdgeInsets.only(bottom: 21),
    child: Container(
                     decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(12),
                               boxShadow: [
                          BoxShadow(
                            offset: Offset(0,1.3),
                            blurRadius: 3.6
                          )
                        ]
                             ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                        
                          child:ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft:Radius.circular(12) ),
                            child: Image.asset('assets/hossin.jpg',width: 160,),)
                        ),
                        Expanded(
                            flex: 2,
                          child:Padding(
                            padding: const EdgeInsets.all( 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: <Widget>[
                                Text(title,style: TextStyle(fontSize: 21,color: Colors.black.withOpacity(.7),fontWeight: FontWeight.bold)),
                                Text(desc,style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.7))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
  );
}