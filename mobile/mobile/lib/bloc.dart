import 'package:mobile/user.dart';
import 'package:rxdart/rxdart.dart';

class Bloc {
  //Input
  final _login = PublishSubject<User>();

  //Output
  get login => _login.stream;

  loginProc(User user) {
    // to Repo.
    print(user.id);
  }

  dispose() {
    _login.close();
  }
  
}