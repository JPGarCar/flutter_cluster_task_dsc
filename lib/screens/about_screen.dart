import 'package:flutter/material.dart';
import 'package:flutter_cluster_task/constants.dart';
import 'package:flutter_cluster_task/widgets/app_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

// Image asset path name
final imageAssetPath = 'images/dscLogo.jpg';

// Text to be displayed
final textDisplayed =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
    "text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has "
    "survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised "
    "in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
    "like Aldus PageMaker including versions of Lorem Ipsum.";

// Button text and on pressed
final buttonText = 'Visit dsccsastra.com';
final Function buttonOnPressed = () async {
  const url = 'https://dscsastra.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
};

class AboutScreen extends StatefulWidget {
  // Screen id for route
  static final screenId = 'AboutScreen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: AppDrawer(),
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                /// Use of an empty Flexible to constraint the real column from
                /// using the entire length, but still using column spaceAround
                Flexible(
                  flex: 1,
                  child: SizedBox(),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Image
                      Container(
                        child: Image.asset(imageAssetPath),
                      ),
                      // Paragraph
                      Container(
                        child: Text(textDisplayed),
                      ),
                      // Button
                      RaisedButton(
                        textColor: mainColor,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: buttonOnPressed,
                        child: Text(buttonText),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
