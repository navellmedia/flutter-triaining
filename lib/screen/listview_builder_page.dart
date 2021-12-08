import 'package:flutter/material.dart';

import '../news_class.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List<News> _news = [
    News(
        "Training Flutter",
        "Programming Flutter",
        "https://photographylife.com/wp-content/uploads/2020/03/Dan-Ballard-Landscapes-6.jpg",
        "This technique is quite expensive, as it more or less requires that the contents of the viewport be laid out twice (once to find their intrinsic dimensions, and once to actually lay them out)"),
    News(
        "Training Flutter",
        "Programming Flutter",
        "https://photographylife.com/wp-content/uploads/2020/03/Dan-Ballard-Landscapes-6.jpg",
        "This technique is quite expensive, as it more or less requires that the contents of the viewport be laid out twice (once to find their intrinsic dimensions, and once to actually lay them out)")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview Builder"),
        ),
        body: ListView.builder(
            itemCount: _news.length,
            itemBuilder: (BuildContext ctx, int idx) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(_news[idx].img),
                  backgroundColor: Colors.transparent,
                ),
                title: Text(_news[idx].title),
                subtitle: Text(_news[idx].subtitle),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  print("ListTile click");
                },
              );
            }));
  }
}
