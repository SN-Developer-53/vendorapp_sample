import 'package:flutter/material.dart';
import 'package:vendor_app_sample/presentation/screens/dashboard_screen.dart';
import 'package:vendor_app_sample/presentation/screens/order_screen.dart';
import 'package:vendor_app_sample/presentation/screens/product_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final screens = [
    const DashboardScreen(),
    const OdersScreen(),
    const ProductScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final items = <Widget>[
    //   const Icon(Icons.home, size: 30),
    //   const Icon(Icons.shopping_bag_rounded, size: 30),
    //   const Icon(Icons.delivery_dining_outlined, size: 30),
    // ];

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining_outlined),
              label: 'Products',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
