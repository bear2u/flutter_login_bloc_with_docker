import 'package:flutter/material.dart';
import 'package:mobile/provider.dart';
import 'package:mobile/user.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}

class RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  String _id,_pwd;

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                print('1st $value');
                if(value.isEmpty) {
                  return 'check id';
                }                
              },
              onSaved: (value) {
                setState(() {
                  _id = value;
                });                
              },
            ),
            TextFormField(
              validator: (value) {
                print('2st $value');
                if(value.isEmpty) {
                  return 'check pwd';
                }                
              },
              obscureText: true,
              onSaved: (value) {
                setState(() {
                  _pwd = value;
                });           
              },
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('finish'),
                  onPressed: () {
                    final _form = _formKey.currentState;
                    if(_form.validate()) {
                      // TODO 유효성 체크 완료
                      _form.save();
                      final user = User(
                        id: _id,
                        pwd: _pwd
                      );
                      bloc.addUser(user);
                      print('유효성 체크 통과 , $_id, $_pwd');
                    } else {
                      print('유효성 체크 실패');
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
