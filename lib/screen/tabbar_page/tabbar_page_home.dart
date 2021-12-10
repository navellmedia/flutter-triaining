import 'package:flutter/material.dart';

class TabarHomePage extends StatefulWidget {
  const TabarHomePage({Key? key}) : super(key: key);

  @override
  _TabarHomePageState createState() => _TabarHomePageState();
}

class _TabarHomePageState extends State<TabarHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext ctx, int idx) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://img.tek.id/img/content/2019/10/04/21135/begini-gambaran-proses-syuting-avatar-2-OUv6EI6mLH.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Breatmanrock"),
                subtitle: Text("Milley Ciruss"),
                trailing: Icon(Icons.more_horiz),
                onTap: () {
                  print("ListTile click");
                },
              ),
              Image.network("https://photographylife.com/wp-content/uploads/2020/03/Dan-Ballard-Landscapes-6.jpg")
            ],
          );
        });
  }
}
