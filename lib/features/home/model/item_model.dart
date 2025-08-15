import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/widgets.dart';

class ItemFoodModel {
  final String imagepath;
  final String name;
  final String price;
  Color? bgColor = MainColors.primaryColor;

  ItemFoodModel({
    required this.imagepath,
    required this.name,
    required this.price,
    this.bgColor,
  });
}
