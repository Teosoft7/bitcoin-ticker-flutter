import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    var res = await http.get(Uri.parse(this.url));

    if (res.statusCode == 200) {
      // succeed
      String data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}
