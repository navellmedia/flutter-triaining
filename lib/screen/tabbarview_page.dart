import 'package:flutter/material.dart';

import 'tabbar_page/tabbar_page_food.dart';
import 'tabbar_page/tabbar_page_home.dart';
import 'tabbar_page/tabbar_page_news.dart';
import 'tabbar_page/tabbar_page_olahraga.dart';

class TabbarviewPage extends StatefulWidget {
  const TabbarviewPage({Key? key}) : super(key: key);

  @override
  _TabbarviewPageState createState() => _TabbarviewPageState();
}

class _TabbarviewPageState extends State<TabbarviewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("TabbarView"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "News",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "Gosip",
                    icon: Icon(Icons.description),
                  ),
                  Tab(
                    text: "Olahraga",
                    icon: Icon(Icons.sports_baseball),
                  ),
                  Tab(
                    text: "Food",
                    icon: Icon(Icons.emoji_food_beverage),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                TabarHomePage(),
                TabarNewsPage(),
                TabarOlahragaPage(),
                TabbarFoodPage(),
              ],
            )));
  }
}
