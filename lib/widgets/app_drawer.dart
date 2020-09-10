import 'package:flutter/material.dart';
import 'package:flutter_cluster_task/screens/about_screen.dart';
import 'package:flutter_cluster_task/screens/home_screen.dart';

// Drawer title, color, and text style
final drawerTitle = 'Demo app DSC';
final drawerTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 24,
);

final drawerTitleColor = Colors.deepPurpleAccent.shade200;

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header
          DrawerHeader(
            decoration: BoxDecoration(color: drawerTitleColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  drawerTitle,
                  style: drawerTitleStyle,
                ),
              ],
            ),
          ),
          // List of Children Buttons
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () =>
                Navigator.popAndPushNamed(context, HomeScreen.screenId),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            onTap: () =>
                Navigator.popAndPushNamed(context, AboutScreen.screenId),
          ),
        ],
      ),
    );
  }
}
