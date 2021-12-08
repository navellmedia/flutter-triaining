import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image"),),
      body: Column(
        children: [
          Icon(Icons.account_balance_wallet, size: 50,color: Colors.blue,),
          Image.asset("assets/image/landscape1.jpg"),
          Image.asset("assets/image/landscape2.jpg"),
          Image.network("https://q-xx.bstatic.com/xdata/images/hotel/840x460/84734154.jpg?k=0fbb772e1478e06b914028627b0c4bcb7a90cc083772d0a847f6a6ee9991a3de&o="),
        ],
      ),
    );
  }
}
