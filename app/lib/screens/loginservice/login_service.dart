import 'dart:convert';
import 'package:app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/routes.dart';

class LoginService {
  static bool aprovade = false;
  static bool token_user = false;
  static var user = "";
  login(String email, String password) async {
    http.Response response = await http.post(Routes.signIn,
        body: json.encode(
            {"email": email, "password": password, "returnSecureToken": true}));
    if (response.statusCode == 200) {
      aprovade = true;
    }
    if (response.persistentConnection) {
      token_user = true;
      user = response.body;
    }
    debugPrint(user);
    return aprovade;
  }
}
