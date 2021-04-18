import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/detail/components/product_title_with_image.dart';
import 'package:shopping_app/models/Product.dart';

import 'color_and_size.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product,)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
