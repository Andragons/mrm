import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movie/app/data/models/user.dart';

class UserRepository {
  Future<User> getCurrentUser() async {
    // Ganti dengan URL API atau endpoint yang sesuai
    var url = 'http://192.168.1.9:5000//user';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var userData = json.decode(response.body);
      return User.fromJson(userData);
    } else {
      throw Exception('Failed to get current user');
    }
  }
}
