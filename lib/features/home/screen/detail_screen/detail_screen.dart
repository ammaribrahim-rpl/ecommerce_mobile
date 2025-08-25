import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

part 'sections/header_section.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.primaryColor,
      body: SingleChildScrollView(
        // This is where you can add your content
        child: Column(
          children: [
            HeaderSection(),
            Container(
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: MainColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Pearl Milk Tea',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: MainColors.whiteColor,
                          border: Border.all(color: MainColors.blackColor),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: MainColors.VioletColor[600],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text('1', style: TextStyle(fontSize: 24)),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: MainColors.whiteColor,
                          border: Border.all(color: MainColors.blackColor),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: MainColors.primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        'Rp. 25,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Divider(color: Colors.grey.withOpacity(0.25), thickness: 0.5),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One Pack Contains:',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 153,
                        decoration: BoxDecoration(
                          color: MainColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Black Tea, Milk, Pearls Tapioca.',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 25),
                  Divider(color: Colors.grey.withOpacity(0.25), thickness: 0.5),
                  SizedBox(height: 15),
                  Text(
                    'Chatime Pearl Milk Tea adalah minuman teh hitam premium bercampur susu yang creamy, disajikan dengan boba kenyal untuk sensasi manis dan segar.',
                    style: TextStyle(height: 1.5),
                  ),
                  SizedBox(height: 28),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
