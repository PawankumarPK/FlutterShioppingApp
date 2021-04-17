import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';

import 'categories.dart';

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
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products[0].color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(products[0].image),
            ),
          ],
        )
      ],
    );
  }
}
