import 'package:flutter/material.dart';
import 'package:ahmed_shop/models/products.dart';
import 'package:flutter/cupertino.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.bgColor,
    required this.press,
    required this.quantity,
  }) : super(
          key: key,
        );
  final String title, image;
  final Color bgColor;
  final int price, quantity;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.all(Radius.circular(17))),
                child: Image.asset(
                  image,
                  width: 80,
                  height: 80,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Text('\$$price',
                          style: Theme.of(context).textTheme.subtitle2),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
