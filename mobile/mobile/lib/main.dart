import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/provider.dart';
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
  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
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
