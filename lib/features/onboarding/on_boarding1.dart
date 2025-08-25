import 'package:ecommerce_mobile/features/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: MainColors.primaryColor,
                image: DecorationImage(
                  image: AssetImage(MainAssets.firstOnBoarding),
                  alignment: Alignment(0, 1),
                  scale: 0.1,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 35,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              decoration: BoxDecoration(color: MainColors.whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: MainColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: MainColors.primaryColor[600],
                    ),
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecOnBoarding(),
                        ),
                      );
                    },
                    child: Text('Let’s Continue'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
