import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;
  
  Products (this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: products
                        .map(
                          (element) => Card(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('assets/logo@2x.png'),
                                    Text(element)
                                  ],
                                ),
                              ),
                        )
                        .toList());
  }
}