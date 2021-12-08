import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              height: 150,
              child: Text("Hi, Supardi asdasd asdasd asdasd as"),
              //child: Image.asset("assets/image/landscape1.jpg"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                //color: Colors.greenAccent,
                border: Border.all(color: Colors.black, width: 1),
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.orangeAccent],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 1.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.decal),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              padding: const EdgeInsets.all(16),
              //child: Text("Hi, Supardi asdasd asdasd asdasd as"),
              child: Image.asset("assets/image/landscape1.jpg"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("assets/image/landscape1.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
