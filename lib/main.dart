import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/productsadmin.dart';
import './pages/home.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.blueGrey,
      ),
      // home: auth(),
      routes: {
        '/manage': (BuildContext context) => manageProducts(),
        '/': (BuildContext context) => HomePage(),
      },
    );
  }
}
