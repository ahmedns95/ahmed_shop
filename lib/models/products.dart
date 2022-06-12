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
      description: 'One of the best Camera',
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
      description: 'One of the best Camera',
      price: 50,
      quantiy: 10,
      bgColor: Colors.white),
];
