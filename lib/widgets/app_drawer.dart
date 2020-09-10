import 'package:flutter/material.dart';
import 'package:flutter_cluster_task/screens/about_screen.dart';
import 'package:flutter_cluster_task/screens/home_screen.dart';

import '../constants.dart';

/// Drawer to be used across the entire application, it holds a drawer header,
/// a list of items, and at the very bottom a container with a text

// Drawer title, color, and text style
final drawerTitle = 'Demo app DSC';
final drawerTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 24,
);

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // Header
                DrawerHeader(
                  decoration: BoxDecoration(color: mainColor),
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
          ),
          Container(
            color: mainColor,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Powered by google developers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
