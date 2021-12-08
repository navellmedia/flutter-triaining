import 'package:flutter/cupertino.dart';

class News{
  String title, subtitle, img, content;
  Icon? iconData;
  Color? myColor;

  News(this.title, this.subtitle, this.img, this.content, {this.iconData, this.myColor});
}