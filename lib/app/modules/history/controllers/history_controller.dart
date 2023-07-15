import 'model_movie.dart';
// import 'package:capstone_s6/utils/api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryController extends GetxController {
  final movie = <Movie>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse("http://192.168.8.121:5000/movie"));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      movie.value = jsonData
          .map((data) => Movie(
              id: data['id'],
              emotion: data['emotion'],
              movie_title: data['movie_title'],
              timestamp: data['timestamp']))
          .toList();
    } else {
      // Handle error
      print('Failed to fetch users');
    }
  }
}
