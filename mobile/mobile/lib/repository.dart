import 'package:mobile/Api.dart';
import 'package:mobile/user.dart';

class Repository {
  final sources = [
    Api(),
  ];

  Future<bool> loginProc(User user) => sources[0].loginProc(user);
}

abstract class Source {
  Future<bool> loginProc(User user);
}