import 'dart:convert';

import 'package:mobile/repository.dart';
import 'package:mobile/user.dart';

import 'package:http/http.dart' as http;

class Api implements Source {
  @override
  Future<bool> loginProc(User user) async {
    // 서버 통신
    final response =
      await http.get('http://b8346a33.ngrok.io/api/auth');

    if(response.statusCode == 200) {
      final isLogin = jsonDecode(response.body).result;
      return isLogin;
    } else {
      return false;
    }
  }
  
}