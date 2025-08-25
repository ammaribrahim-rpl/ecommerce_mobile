import 'package:ecommerce_mobile/components/app_back_button.dart';
import 'package:ecommerce_mobile/features/cart/input_address_screen.dart';
import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void showModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: InputAddress(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackButton(),
        title: const Text(
          'My Basket',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: MainColors.whiteColor,
          ),
        ),
        backgroundColor: MainColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: ListView(
          children: [
            buildItem(
              imagepath: MainAssets.food_1,
              backgroundColor: Color(0xFFFAFAEB),
              title: 'Purple Milk',
              price: '20.000',
              quantity: '2 Packs',
            ),
            buildItem(
              imagepath: MainAssets.food_2,
              backgroundColor: Color(0xFFFAFAEB),
              title: 'Blue Drink',
              price: '20.000',
              quantity: '2 Packs',
            ),
            buildItem(
              imagepath: MainAssets.food_3,
              backgroundColor: Color(0xFFFAFAEB),
              title: 'Purple Milk',
              price: '20.000',
              quantity: '2 Packs',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: MainColors.blackColor,
                  ),
                ),
                Text(
                  'Rp 60.000',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: MainColors.blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(width: 25),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showModal();
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: MainColors.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildItem({
    required String imagepath,
    required Color backgroundColor,
    required String title,
    required String price,
    required String quantity,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(MainAssets.food_1, width: 65, height: 65),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: MainColors.blackColor,
                      ),
                    ),
                    Text(quantity),
                  ],
                ),
              ),
              Text(
                'Rp $price',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Divider(
            color: MainColors.blackColor.withOpacity(0.1),
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
