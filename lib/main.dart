import 'package:ecommerce_mobile/features/onboarding/on_boarding1.dart';
import 'package:ecommerce_mobile/features/splash/splash_screen.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        fontFamily: 'Josefin Sans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: MainColors.VioletColor[600],
            foregroundColor: MainColors.whiteColor[400],
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: MainColors.whiteColor[400],
          filled: true,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: MainColors.blackColor[200],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
