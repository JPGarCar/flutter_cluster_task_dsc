import 'package:flutter/material.dart';
import 'package:flutter_cluster_task/utility/api_json_grabber.dart';
import 'package:flutter_cluster_task/widgets/app_drawer.dart';

// Api string
final apiString = 'https://wayhike.com/dsc/demo_app_api.php';

// Card textStyle, margin, and padding
final cardTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
final cardMargin = EdgeInsets.symmetric(vertical: 5, horizontal: 15);
final cardPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 15);

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
        body: Center(
          child: Container(
            child: FutureBuilder(
              future: ApiJsonGrabber(url: apiString).getData(),
              builder: (context, data) {
                if (data.hasData) {
                  // grab the 'event_titles' data from the asyncdata
                  var dataList = data.data['event_titles'];
                  return ListView.builder(
                    itemBuilder: (context, int) {
                      return Card(
                        margin: cardMargin,
                        child: Padding(
                          padding: cardPadding,
                          child: Center(
                            child: Text(
                              dataList[int],
                              textAlign: TextAlign.center,
                              style: cardTextStyle,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: dataList.length,
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
