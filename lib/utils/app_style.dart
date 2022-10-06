import 'package:flutter/material.dart';
// 这种方式定义的变量是全局变量，不需要定义成static类型的
Color primary = const Color(0xff687daf);

class Styles {
  // static 变量可以全局引用，但是需要包括在class里面
  static Color primaryColor = primary;
  static Color textColor = Color(0xff3b3b3b);
  static Color bfColor = Color(0xffeeedf2);
  static Color orangeColor = Color(0xff526799);
  static TextStyle textStyle = TextStyle(color: textColor,fontSize: 21,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold);
}