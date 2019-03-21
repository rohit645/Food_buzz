import 'package:flutter/material.dart';
import './pages/productdetails.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProducts;

  Products(this.products, this.deleteProducts);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductDetails(
                            products[index]['title'],
                            products[index]['imageUrl'])),
                  ).then((bool value) {
                    if (value) {
                      deleteProducts(index);
                    }
                  });
                },
                child: Text('details!'),
                // shape: CircleBorder(),
              ),
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
