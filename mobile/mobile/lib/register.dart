import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        children: <Widget>[
          TextField(),
          TextField(),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('finish'),
                onPressed: () {

                },
              )
            ],
          )
        ],
      ),
    );
  }
}