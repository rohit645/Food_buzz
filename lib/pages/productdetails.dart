import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  String title; String imageUrl;
  ProductDetails(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details of the Product!!'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text('DELETE'),
              ),
            )
          ],
        ));
  }
}
