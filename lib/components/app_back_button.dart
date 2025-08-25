import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: MainColors.whiteColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.arrow_back_ios_new), Text('Go Back')],
        ),
      ),
    );
  }
}
