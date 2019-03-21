import 'package:flutter/material.dart';
import './home.dart';
import './create_product.dart';
import './list_product.dart';

class manageProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  title: Text('choose'),
                ),
                ListTile(
                  title: Text('All products'),
                  onTap: () {
                    print('hello');
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('Create Product'),
                  icon: Icon(Icons.create),
                ),
                Tab(
                  child: Text('My Products'),
                  icon: Icon(Icons.list),
                )
              ],
            ),
            title: Text('Manage Products'),
          ),
          body: TabBarView(
            children: <Widget>[listProducts(), createProducts()],
          )),
    );
  }
}
