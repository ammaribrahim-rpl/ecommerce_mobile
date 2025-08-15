import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/widgets/item_combo.dart';
import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:ecommerce_mobile/preferences/iconDart_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  final List<String> category = [
    "Hottest",
    "Popular",
    "New combo",
    "Top",
    "Most Like",
    "Recently Added",
    "Newest",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(IconDart.filtericon, size: 14),
              Column(
                children: [
                  Icon(IconDart.cart, color: MainColors.primaryColor[600]),
                  Text("My basket", style: TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Hello $name, What fruit salad combo\ndo you want today?",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 37),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(IconDart.filterr, color: MainColors.blackColor),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 37),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommended Combo",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: MainAssets.food1,
                      name: "Pearl Milk Tea",
                      price: "Rp 25.000",
                      bgColor: MainColors.VioletColor[200],
                    ),
                  ),
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: MainAssets.food3,
                      name: "Berry mango combo",
                      price: "Rp 8.000",
                      bgColor: MainColors.VioletColor[400],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 60),
          SizedBox(
            height: 25,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  category[index],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 26);
              },
              itemCount: category.length,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 182,
            child: ListView(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: MainAssets.food_1,
                    name: "Quinoa fruit salad",
                    price: "Rp 10.000",
                    bgColor: MainColors.VioletColor[200],
                  ),
                ),
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: MainAssets.food_2,
                    name: "Tropical fruit salad",
                    price: "Rp 10.000",
                    bgColor: MainColors.VioletColor[400],
                  ),
                ),
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: MainAssets.food_3,
                    name: "Tropical fruit salad",
                    price: "Rp 10.000",
                    bgColor: MainColors.VioletColor[200],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
