import 'dart:convert';

import 'package:mobile/repository.dart';
import 'package:mobile/user.dart';

import 'package:http/http.dart' as http;

class Api implements Source {
  @override
  Future<bool> loginProc(User user) async {
    // 서버 통신

    final response =
      await http.post('https://48340ef7.ngrok.io/api/auth', body: user.toJson());

    if(response.statusCode == 200) {
      final data = jsonDecode(response.body);      
      final isLogin = data['result'];
      return isLogin;
    } else {
      return false;
    }
  }
  
}