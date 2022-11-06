import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel/const.dart';

class Chittagong extends StatefulWidget {
  const Chittagong({Key? key}) : super(key: key);

  @override
  State<Chittagong> createState() => _ChittagongState();
}

class _ChittagongState extends State<Chittagong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Icon(IconlyLight.arrow_left_circle,
                  size: 30, color: ColorSelect.primary),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
