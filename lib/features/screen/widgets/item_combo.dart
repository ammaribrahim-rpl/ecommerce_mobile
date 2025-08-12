import 'package:ecommerce_mobile/preference/iconDart_icons.dart';
import 'package:flutter/material.dart';

class ItemCombo extends StatefulWidget {
  const ItemCombo({super.key});

  @override
  State<ItemCombo> createState() => _ItemComboState();
}

class _ItemComboState extends State<ItemCombo> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      // height: 200,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xff202020),
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/food1.png', width: 90),
              SizedBox(height: 16),
              Text(
                'honey lime combo',
                style: TextStyle(fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              SizedBox(height: 14),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RP.2.000',
                        style: TextStyle(color: Color(0xff000000)),
                      ),
                      Icon(IconDart.plus, color: Color(0xffffa451)),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffffffff),
                    ),
                    child: Icon(IconDart.heart, color: Color(0xffffa451)),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite
                    ? Icons.favorite_border_rounded
                    : Icons.favorite_border_sharp,
                color: Color(0xffffa451),
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}