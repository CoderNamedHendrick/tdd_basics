import 'dart:convert';

import 'package:http/http.dart';
import 'package:tdd_tut/user_model.dart';

class ApiProvider {
  final Client client;

  ApiProvider(this.client);

  Future<UserModel> getUser() async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1)'));
    return UserModel.fromJson(jsonDecode(response.body));
  }
}
