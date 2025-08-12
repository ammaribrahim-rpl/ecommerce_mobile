import 'package:ecommerce_mobile/preference/iconDart_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(IconDart.filtericon, size: 15),
                Column(
                  children: [
                    Icon(IconDart.carticon, size: 24, color: Color(0xffFFA451)),
                    SizedBox(height: 4),
                    Text('My basket', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Text(
              'Hello $name, What fruit salad \ncombo do you want today?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 37),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for fruit salad combo',
                      prefixIcon: Icon(Icons.search, color: Color(0xffC2BDBD)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xffF3F1F1),
                    ),
                  ),
                ),
                SizedBox(width: 22),
                Icon(IconDart.filterr, size: 24, color: Color(0xffFFA451)),
              ],
            ),
            SizedBox(height: 38),
            Text(
              'Recommended Combo',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Column(
                  children: [
                    Card(
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
