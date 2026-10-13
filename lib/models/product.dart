import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String category;
  final String shortDescription;
  final String description;
  final double price;
  final double rating;
  final int stock;
  final String warranty;
  final String imageUrl;
  final IconData icon;
  final List<String> specs;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.shortDescription,
    required this.description,
    required this.price,
    required this.rating,
    required this.stock,
    required this.warranty,
    required this.imageUrl,
    required this.icon,
    required this.specs,
  });
}
