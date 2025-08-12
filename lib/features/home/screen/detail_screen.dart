import 'package:ecommerce_mobile/preference/iconDart_icons.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: SingleChildScrollView(
        // This is where you can add your content
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(color: Color(0xffFFA451)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0, left: 24.0),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.arrow_back_ios_new, size: 20),
                                Text('Go Back', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'assets/image/food2.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Quinoa Fruit Salad',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp. 25.000',
                        style: TextStyle(
                          color: Color(0xffFFA451),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffFFFFFF),
                          border: Border.all(color: Color(0xff111111)),
                        ),
                        child: Center(child: Icon(Icons.remove)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text('1', style: TextStyle(fontSize: 24)),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffFFFFFF),
                          border: Border.all(color: Color(0xff111111)),
                        ),
                        child: Center(
                          child: Icon(Icons.add, color: Color(0xffFFA451)),
                        ),
                      ),
                      Text(
                        'Rp. 20,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(color: Colors.grey.withOpacity(0.25), thickness: 0.5),
                  SizedBox(height: 30),
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
                        decoration: BoxDecoration(color: Color(0xffFFA451)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 30),
                  Divider(color: Colors.grey.withOpacity(0.25), thickness: 0.5),
                  SizedBox(height: 15),
                  Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                    style: TextStyle(height: 1.5),
                  ),
                  SizedBox(height: 28),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Color(0xffFFA451),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      SizedBox(width: 60),
                      Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Add to Cart'))),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
