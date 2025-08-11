import 'package:ecommerce_mobile/screens/onboarding/on_boarding2.dart';
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
                color: const Color(0xffFFA451),
                image: DecorationImage(
                  image: AssetImage('assets/image/onboarding1.png'),
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
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5D577E),
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
