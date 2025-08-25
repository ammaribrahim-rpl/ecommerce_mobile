import 'package:ecommerce_mobile/features/cart/cart_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/home_screen/home_screen.dart';
import 'package:ecommerce_mobile/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required String name});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(name: ''), ProfileScreen(), CartScreen()];
  // urutan bottom navigation bar sesuai dengan urutan screens
  // jika ingin mengubah urutan, ubah juga urutan di sini
  // misalnya screens[0] = HomeScreen, screens[1] = ProfileScreen, screens[2] = CartScreen
  // jika ingin menambah screens, tambahkan di sini dan di bottomNavigationBar

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            // bisa menambahkan type atau fungsi lain di sini jika diperlukan
          });
        },
        type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType.shifting, jika ingin menggunakan shifting (lebih interaktif)
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
