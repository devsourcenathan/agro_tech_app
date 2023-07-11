import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class MyBottomNavigationBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavigationBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 20,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: " Home",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: " Market",
          ),
          GButton(
            icon: Icons.school_rounded,
            text: " Learning",
          ),
          GButton(
            icon: Icons.account_circle_sharp,
            text: " Account",
          ),
        ],
      ),
    );
  }
}
