import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getdata() async {
    final Uri apiurl = Uri.parse(url);
    http.Response response = await http.get(apiurl);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
    print(response.body);
  }
}
