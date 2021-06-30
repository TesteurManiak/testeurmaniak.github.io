import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(title: Text('Home')),
          ListTile(title: Text('About')),
          ListTile(title: Text('Projects')),
          ListTile(title: Text('Contact')),
          ListTile(title: Text('Resume')),
        ],
      ),
    );
  }
}
