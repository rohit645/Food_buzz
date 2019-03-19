import 'package:flutter/material.dart';
import './productmanager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Easy List'),
          ),
          body: ProductManager('Sexy Boi!!'),
    ),);
  }
}
