import 'dart:ui';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, quantiy;
  final Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.quantiy,
      required this.bgColor});
}

List<Product> demo_product = [
  Product(
      image: 'assests/images/camera.png',
      title: 'Camera',
      description:
          'High resolution 8K x 8K images and the world\'s largest FOV of 25 mm enable you to obtain more data than ever,'
          'expanding the possibilities of a wide range of research fields\.',
      price: 20,
      quantiy: 10,
      bgColor: Colors.white),
  Product(
      image: 'assests/images/headphones.jpg',
      title: 'Headphones',
      description: 'One of the best headphones',
      price: 70,
      quantiy: 10,
      bgColor: Colors.white),
  Product(
      image: 'assests/images/powerbank.jpg',
      title: 'Camera',
      description:
          'High resolution 8K x 8K images and the world\'s largest FOV of 25 mm enable you to obtain more data than ever,'
          'expanding the possibilities of a wide range of research fields\.',
      price: 50,
      quantiy: 10,
      bgColor: Colors.white),
];
