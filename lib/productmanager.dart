import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  Map <String, String> StartingProduct;
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  String title;
  String imageUrl;
  List<Map<String,String>> _products=[];

  @override
  void initState() {
    if (widget.StartingProduct != null) {
      _products.add(widget.StartingProduct);
    }
    super.initState();
  }
  
  void _addProduct(Map <String,String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProducts(int index) {
    setState(() {
      _products.removeAt(index);  
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_products);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products,_deleteProducts),
        ),
      ],
    );
  }
}
