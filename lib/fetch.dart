import 'dart:convert';

import 'package:flutter_fetch/model.dart';
import 'package:http/http.dart' as http;

class Fetch {
  String api = "https://api.github.com/users/burakeraslan";

  Future<User> fetchData() async {
    var response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("bir sorun var");
    }
  }
}
