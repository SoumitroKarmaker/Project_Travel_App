import 'package:flutter/material.dart';

import 'package:travel/const.dart';

import 'bottom_navigation.dart';
import 'home.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }

  goToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomNavigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assects/images/splash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CircleAvatar(
            backgroundColor: ColorSelect.primary.withOpacity(0.7),
            // backgroundImage: Image.asset('assects/images/splash.jpg'),
            // backgroundImage: AssetImage('assects/images/splash.jpg'),
            radius: 120,
            child: Text(
              'Travel',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'DancingScript',),
            ),
          ),
        ),
      ),
    );
  }
}
