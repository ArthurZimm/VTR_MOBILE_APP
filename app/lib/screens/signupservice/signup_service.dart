import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/routes.dart';

class SignupService {
  signUp(String email, String password) async {
    http.Response response = await http.post(Routes.Signup,
        body: json.encode(
            {"email": email, "password": password, "returnSecureToken": true}));
    print(response.body);
  }
}
