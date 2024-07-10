import 'dart:convert';

import 'package:http/http.dart' as http;

class Data {
  static String data = "https://api.kanye.rest/";

  static Future<Map> get() async {
    http.Response response = await http.get(Uri.parse(data));
    return json.decode(response.body);
  }
}
