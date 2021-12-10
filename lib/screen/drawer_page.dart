import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: ListView(
            children: [
              Text("Mail", style: Theme.of(context).textTheme.subtitle1,),
              Text("scot@gmail.com", style: Theme.of(context).textTheme.caption,),
              Divider(),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Outbox"),
              ),
              ListTile(
                leading: Icon(Icons.favorite ),
                title: Text("Favorites"),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Archive"),
              )
              ,ListTile(
                leading: Icon(Icons.mail),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Spam"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Drawer Page"),
      ),
    );
  }
}
