import 'package:flutter/material.dart';
import '../productmanager.dart';
// import './productsadmin.dart';

//
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/manage');
              },
            )
          ],
        ),
      ),
      
      body: ProductManager(), // now making   named arguments
    );
  }
}
