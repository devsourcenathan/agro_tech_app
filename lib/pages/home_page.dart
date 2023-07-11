import 'package:agro_tech_app/pages/cart_page.dart';
import 'package:agro_tech_app/pages/shop_page.dart';
import 'package:agro_tech_app/screens/featured_screen.dart';
import 'package:agro_tech_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //page
  final List<Widget> _pages = [
    const ShopPage(),
    const ShopPage(),
    const FeaturedScreen(),
    const ShopPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
