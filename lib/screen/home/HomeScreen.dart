import 'package:flutter/material.dart';
import 'package:inteligo/constans.dart';

import 'component/home_header_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _inc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Appoitment"),
      ),
      body: Column(
        children: [
            Text("Ini adalah text saya\nYang pertama",style: TextStyle(
              fontSize: 16, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
              color: Colors.orangeAccent[400]
            ),),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                text: "Hi,",
                children: const<TextSpan>[
                  TextSpan(
                    text: "Supardi",
                    style: TextStyle(
                        color: Colors.blue
                    )
                  ),
                  TextSpan(
                      text: " Selamat malam",
                      style: TextStyle(
                          color: nText, fontWeight: FontWeight.w600, fontSize: 20
                      )
                  ),
                  TextSpan(
                      text: " Selamat malam",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600, fontSize: 20,
                          fontFamily: "Poppins"
                      )
                  )
                ]
              )
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          setState(() {
            _inc += 1;
          });
        },
      ),
    );
  }
}
