import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Page"),
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 200,
            color: Colors.blueAccent,
          ),
          Positioned(
            top: 100,
            left: 40,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.orangeAccent,
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 40,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.blue[900],
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card Balance",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("\$4000",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.apply(color: Colors.white))
                        ],
                      ),
                      Container(
                        width: 40,
                        child: Image.asset("assets/image/visa.png"),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text("9088 XXX XXX XXXX XXXX",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.apply(color: Colors.white))),
                        Text("09/10",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.apply(color: Colors.white))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
