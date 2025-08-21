import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_screen.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.item});

  @override
  State<FoodItem> createState() => _FoodItemState();

  final ItemFoodModel item;
}

class _FoodItemState extends State<FoodItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 210,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: widget.item.bgColor ?? MainColors.primaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: MainColors.blackColor.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),

      child: Stack(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Image.asset(widget.item.imagepath, width: 90),
              ),
              SizedBox(height: 16),
              Text(
                widget.item.name,
                style: TextStyle(fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 14),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.item.price,
                    style: TextStyle(color: MainColors.primaryColor[800]),
                  ),
                  SizedBox(width: 36),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: MainColors.whiteColor,
                    ),
                    child: Icon(
                      Icons.add,
                      color: MainColors.primaryColor[600],
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
                size: 23,
                color: MainColors.primaryColor[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
