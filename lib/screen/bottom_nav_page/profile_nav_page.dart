import 'package:flutter/material.dart';

class ProfileNavPage extends StatefulWidget {
  const ProfileNavPage({Key? key}) : super(key: key);

  @override
  _ProfileNavPageState createState() => _ProfileNavPageState();
}

class _ProfileNavPageState extends State<ProfileNavPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile ",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Today's Special ",
                style: Theme.of(context).textTheme.headline6
            ),
            Text(
              "Fresh Food Menu ",
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
