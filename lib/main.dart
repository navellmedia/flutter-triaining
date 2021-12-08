import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen/container_page.dart';
import 'screen/gridview_page.dart';
import 'screen/home/HomeScreen.dart';
import 'screen/image_page.dart';
import 'screen/listview_builder_page.dart';
import 'screen/listview_menu.dart';
import 'screen/listview_page.dart';
import 'screen/row_page.dart';
import 'screen/stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 12))
      ),
      home: GridviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
