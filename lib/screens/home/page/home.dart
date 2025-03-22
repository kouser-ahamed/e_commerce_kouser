import 'package:flutter/material.dart';
import '../widgets/appBar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Container(
      color: Colors.green,
      height: double.infinity,
    ),
    Container(
      color: Colors.pink,
      height: double.infinity,
    ),
    Container(
      color: Colors.red,
      height: double.infinity,
    ),
    Container(
      color: Colors.purple,
      height: double.infinity,
    ),
  ];

  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppbar(backButton: true),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapMethod,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart_outline),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag_outline),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user_outline),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
