import 'package:flutter/material.dart';
import 'package:flutter_cluster_task/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  // Home Screen ID for route
  static const screenId = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: AppDrawer(),
        body: Container(
          child: FutureBuilder(
            future: ,
            builder: (context, data) {


              if (data.hasData) {
                var dataList = data.data;
                return ListView.builder(
                  itemBuilder: (context, int) {
                    return Card(
                      child: Text(dataList[int]),
                    );
                  },
                  itemCount: ,
                );
              } else {
                return CircularProgressIndicator();
              }

            },
          ),
        ),
      ),
    );
  }
}
