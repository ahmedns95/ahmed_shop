import 'package:ahmed_shop/home/comming_soon.dart';
import 'package:ahmed_shop/home/new_product.dart';
import 'package:ahmed_shop/widget/side_left_drawer.dart';
import 'package:flutter/material.dart';
import 'package:ahmed_shop/models/products.dart';

import 'models/product_card.dart';
import 'models/section_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Ahmed Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideLeftDrawer(),
      appBar: AppBar(
        actions: [
          Center(
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          const SizedBox(
            width: 90.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.shopping_bag),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.all(17),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              '    Welcome to Ahmed Tech',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            SectionTitle(
              title: 'New Product',
              pressSeeAll: () {},
            ),
            const NewProduct(),
            const ComingSoon(),
            const NewProduct(),
            const ComingSoon(),
          ],
        ),
      ),
    );
  }
}
