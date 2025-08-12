import 'package:ecommerce_mobile/features/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SecOnBoarding extends StatefulWidget {
  const SecOnBoarding({super.key});

  @override
  State<SecOnBoarding> createState() => _SecOnBoardingState();
}

class _SecOnBoardingState extends State<SecOnBoarding> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFA451),
                image: DecorationImage(
                  image: AssetImage('assets/image/onboarding2.png'),
                  alignment: Alignment(0, 0.6),
                  scale: 1.05,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 35,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              decoration: BoxDecoration(color: Color(0xffffffff)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is your firstname?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your first name',
                    ),
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(name: name),
                        ),
                        (Route) => false,
                      );
                    },
                    child: Text('Start Ordering'),
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
