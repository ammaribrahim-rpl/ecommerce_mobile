import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/widgets/item_combo.dart';
import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:ecommerce_mobile/preferences/iconDart_icons.dart';
import 'package:flutter/material.dart';

part 'sections/header_section.dart';
part 'sections/recommended_combo_section.dart';
part 'sections/filter_icon_section.dart';

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
          HeaderSection(name: name),
          SizedBox(height: 35),
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
          SizedBox(height: 35),
          RecommendedComboSection(),
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
          FilterIconSection(),
        ],
      ),
    );
  }
}