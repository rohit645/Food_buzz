import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details of the Product!!'),
        ),
        body: Column(
          children: <Widget>[
            Text('Here are the details of the product!!'),
            RaisedButton(onPressed: () {
              Navigator.pop(context);
            },child: Text('Go Back'),)
          ],
        ));
  }
}
