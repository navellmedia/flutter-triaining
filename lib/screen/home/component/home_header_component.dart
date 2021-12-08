import 'package:flutter/material.dart';

class HomeHeaderComponent extends StatelessWidget {
  final title;
  const HomeHeaderComponent({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
