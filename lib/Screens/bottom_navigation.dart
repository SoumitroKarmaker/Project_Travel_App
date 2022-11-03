import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../const.dart';
import 'category.dart';
import 'discovery.dart';
import 'home.dart';
import 'notification.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> bottomPage = [
    Home(),
    Category(),
    NotiFication(),
    Discovery(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bottomPage.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellowAccent,
        elevation: 0.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home, color: ColorSelect.primary),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.discovery, color: ColorSelect.primary),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.notification, color: ColorSelect.primary),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category, color: ColorSelect.primary),
              label: ''),
        ],
      ),
    );
  }
}
