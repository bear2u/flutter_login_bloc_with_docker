import 'dart:convert';

import 'package:mobile/repository.dart';
import 'package:mobile/user.dart';

import 'package:http/http.dart' as http;

class Api implements Source {
  final _url = 'http://70b7c797.ngrok.io/api/';
  @override
  Future<bool> loginProc(User user) async {
    // 서버 통신


    final response =
      await http.post('$_url/auth', body: user.toJson());

    print(response.body);
    if(response.statusCode == 200) {
      final data = jsonDecode(response.body);      
      final isLogin = data['result'];
      return isLogin;
    } else {
      return false;
    }
  }

  @override
  Future<void> addUser(User user) async{
    final response =
      await http.post('$_url/users', body: user.toJson());

    // if(response.statusCode == 201) {
    //   final data = jsonDecode(response.body);      
    //   print(data);
    // }
    print(response.body);

    // final data = jsonDecode(response.body);      
    // print(data);
  }
  
}