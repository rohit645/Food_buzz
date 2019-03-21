import 'package:flutter/material.dart';
import './home.dart';

class auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE'),
      ),
      body: RaisedButton(
        child: Text('LOGIN'),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
          );
        },
      ),
    );
  }
}
