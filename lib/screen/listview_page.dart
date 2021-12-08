import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview"),),
      body: ListView(
        children: [
          Text("Title"),
          containerItem(Colors.green),
          containerItem(Colors.red),
          containerItem(Colors.blue),
          containerItem(Colors.lime),
          containerItem(Colors.orangeAccent),
          containerItem(Colors.grey),
        ],
      ),
    );
  }

  Widget containerItem(Color _color){
    return Container(
      margin: EdgeInsets.all(16),
      height: 100,
      color: _color,
    );
  }
}
