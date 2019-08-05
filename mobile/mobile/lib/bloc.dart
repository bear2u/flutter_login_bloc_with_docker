import 'package:mobile/repository.dart';
import 'package:mobile/user.dart';
import 'package:rxdart/rxdart.dart';

class Bloc {
  final _repository = Repository();
  //Input
  final _login = PublishSubject<bool>();

  //Output
  get login => _login.stream;

  loginProc(User user) async {
    // to Repo.
    final isLogin = await _repository.loginProc(user);
    _login.sink.add(isLogin);
  } 

  dispose() {
    _login.close();
  }

  void addUser(User user) async {
    await _repository.addUser(user);
  }
  
}