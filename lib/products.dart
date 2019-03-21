import 'package:flutter/material.dart';
import './pages/productdetails.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/rohit.jpg'),
          Text(products[index]),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductDetails()),
                  );
                },
                child: Text('details!'),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget ProductCard = Center(
      child: Text('No Items yet!!'),
    );
    if (products.length > 0) {
      ProductCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return ProductCard;
  }
}
