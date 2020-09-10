import 'dart:convert';

import 'package:http/http.dart' as http;

/// This class is used to grab json data from a url
class ApiJsonGrabber {
  String url;

  ApiJsonGrabber({this.url});

  Future getData() async {
    // get response using http package
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      // if code is non error then return parsed json data
      return jsonDecode(response.body);
    } else {
      // else print error code
      print(response.statusCode);
    }
  }
}
