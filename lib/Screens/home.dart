import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // upper main container
          Container(
            color: ColorSelect.secondery,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                // Hei text with image vector in a row
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Hei soumitro text .....
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hei, Soumitro Karmaker',
                                style: TextStyle(color: ColorSelect.subTitle),
                              ),
                              SizedBox(height: 7,),
                              Text(
                                'Discover your destination for Holiday',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ],
                          ),
                        ),

                        // vector image
                        Expanded(
                            child: Container(
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF8A48),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white, width: 4)
                                ),
                                child:
                                    Image.asset('assects/images/profile.png'))),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search Location...',
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: Icon(IconlyLight.search, color: ColorSelect.primary,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Categories',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          
        ],
      ),


    );

  }
}
