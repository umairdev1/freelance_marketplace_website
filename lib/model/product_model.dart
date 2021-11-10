import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String desc;
  final List<String> category;

  Product({
    required this.id,
    required this.category,
    required this.title,
    required this.desc,
  });
}

List<Product> products = [
  Product(
      id: 1,
      category: [
        "New",
        "UI/UX",
        "Figma",
      ],
      title: "UI/UX design of a mobile application",
      desc:
          "Ios layout design based on the created prototype and design example."),
  Product(
      id: 2,
      category: [
        "New",
        "UI/UX",
        "Figma",
      ],
      title: "UI/UX design of a mobile application",
      desc:
          "There is a pizza delivery site, you need to turn it into an application."),
  Product(
      id: 3,
      category: [
        "New",
        "UI/UX",
        "Figma",
      ],
      title: "Make adaptives for bootstrap",
      desc: "There is a website fpr 9 screens. You need to make 6 adaptives."),
  Product(
      id: 4,
      category: [
        "New",
        "UI/UX",
        "Figma",
      ],
      title: "Design mobile app screens",
      desc:
          "There is a pizza delivery site, you need to turn it into an application."),
];
