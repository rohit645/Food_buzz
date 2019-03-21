import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);
    
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            onPressed: () {
              addProduct({'title':'Sexy boi','imageUrl':'assets/rohit.jpg'});
            },
            child: Text('Add Product!'),
          );
  }
}