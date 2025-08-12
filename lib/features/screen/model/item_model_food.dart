import 'package:flutter/material.dart';

class ItemFoodModel {
  final String imagepath;
  final String name;
  final String price;
  Color bgcolor = Color(0xffffffff);

  ItemFoodModel({
    required this.imagepath,
    required this.name,
    required this.price,
    required this.bgcolor,
  });
}