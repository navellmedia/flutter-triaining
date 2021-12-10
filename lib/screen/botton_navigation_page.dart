import 'package:flutter/material.dart';

import 'bottom_nav_page/home_nav_page.dart';
import 'bottom_nav_page/profile_nav_page.dart';
import 'tabbar_page/tabbar_page_food.dart';
import 'tabbar_page/tabbar_page_home.dart';
import 'tabbar_page/tabbar_page_news.dart';
import 'tabbar_page/tabbar_page_olahraga.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentPageIndex =0;
  List<Widget> listPage = [
    HomeNavPage(),
    TabarHomePage(),
    TabarOlahragaPage(),
    ProfileNavPage(),
  ];

  _onTap (int index){
    setState(() {
      _currentPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: listPage[_currentPageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: "My Task"),
          BottomNavigationBarItem(icon: Icon(Icons.circle_notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: "Profile")
        ],
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTap,
      ),
    );
  }
}
