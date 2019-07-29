import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/provider.dart';
import 'package:mobile/register.dart';
import 'package:mobile/user.dart';

void main() => runApp(
  Provider(
    child: MyApp()
  ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _MyLoginPage());
  }
}

class _MyLoginPage extends StatelessWidget {
  TextEditingController _idController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  _loginProc(context) {
    final bloc = Provider.of(context);
    final id = _idController.text;
    final pwd = _pwdController.text;

    // print('id => $id, pwd => $pwd');
    bloc.loginProc(User(
      id: id,
      pwd: pwd
    ));
  }

  _registerProc(context) {
    // TODO Register
    Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Register()));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _idController,
            ),
            TextField(
              controller: _pwdController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // StreamBuilder<bool>(
                //   stream: bloc.login,
                //   builder: (context, AsyncSnapshot<bool> snapshot) {
                //     final isLogin = snapshot.data ?? false;
                //     return Text(isLogin ? '로그인 성공' : '로그인 실패');
                //   }
                // ),
                RaisedButton(
                  child: Text('Register'),
                  color: Colors.redAccent,
                  onPressed: () {
                    _registerProc(context);
                  },
                ),
                RaisedButton(
                  child: Text('Login'),
                  onPressed: () {
                    _loginProc(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
