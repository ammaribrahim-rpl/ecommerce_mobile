import 'package:flutter/material.dart';
import '../onboarding/on_boarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Simulate a delay for splash screen
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the OnBoarding screen after the delay
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => FirstOnBoarding()),
        (route) => false,
      );
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/image/splash.png')),
    );
  }
}
