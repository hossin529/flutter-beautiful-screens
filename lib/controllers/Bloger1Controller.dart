import 'package:flutter/material.dart';
class Bloger1Controller with ChangeNotifier{
  Bloger1Controller();
  String text ="";

  void setText( String t){
    text = t;
    notifyListeners();
  }
  String get getText => text;
}