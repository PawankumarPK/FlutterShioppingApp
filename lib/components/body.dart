import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/detail/details_screen.dart';
import 'package:shopping_app/models/Product.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Women",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) =>
                      ItemCard(
                        product: products[index],
                        press: () =>
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(
                                          product: products[index],
                                        ))),
                      ),
                ),
              ))
        ]);
  }
}
