import 'package:flutter/material.dart';

class ListviewMenu extends StatefulWidget {
  const ListviewMenu({Key? key}) : super(key: key);

  @override
  _ListviewMenuState createState() => _ListviewMenuState();
}

class _ListviewMenuState extends State<ListviewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            cardVisaItem(Colors.blue),
            cardVisaItem(Colors.red),
            cardVisaItem(Colors.orangeAccent),
            cardVisaItem(Colors.blue),
            cardVisaItem(Colors.red),
            cardVisaItem(Colors.orangeAccent),
          ],
        ),
      ),
    );
  }

  Widget cardVisaItem(Color _color){
    return Container(
      padding: EdgeInsets.all(20),
      height: 180,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: _color,
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
    );
  }
}
