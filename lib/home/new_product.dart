import 'package:ahmed_shop/home/details_page.dart';
import 'package:ahmed_shop/models/product_card.dart';
import 'package:ahmed_shop/models/products.dart';
import 'package:ahmed_shop/models/section_title.dart';
import 'package:ahmed_shop/pages/log_in_page.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SectionTitle(
            title: 'New Arrival',
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 17),
                child: ProductCard(
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  image: demo_product[index].image,
                  bgColor: demo_product[index].bgColor,
                  quantity: demo_product[index].quantiy,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                product:
                                    demo_product[index])) //change it to Details
                        );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
