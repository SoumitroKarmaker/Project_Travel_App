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
        selectedItemColor: ColorSelect.primary,
        unselectedItemColor: ColorSelect.subTitle,
        backgroundColor: Colors.yellow,
        elevation: 0.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.discovery, ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.notification, ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category, ),
              label: ''),
        ],
      ),
    );
  }
}
