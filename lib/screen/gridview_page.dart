import 'package:flutter/material.dart';
import 'package:inteligo/news_class.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({Key? key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<GridviewPage> {
  List<News> _listNews = [
    News("120", "Programming", "", "",
        iconData: Icon(Icons.description), myColor: Colors.redAccent[200]),
    News("120", "Flutter", "", "",
        iconData: Icon(Icons.description), myColor: Colors.blueAccent[200]),
    News("120", "Flutter", "", "",
        iconData: Icon(Icons.description), myColor: Colors.greenAccent[200]),
    News("120", "Flutter", "", "",
        iconData: Icon(Icons.description), myColor: Colors.lime)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Hello David",
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _listNews.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 30,
                          childAspectRatio: 1),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: _listNews[index].myColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.description, color: Colors.white,),
                              Text(
                                _listNews[index].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.apply(color: Colors.white),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
