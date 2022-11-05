import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countryName = [
    'Bangladesh',
    'India',
    'Pakistan',
    'Nepal',
    'France',
    'Uk',
    'Canada',
    'Us',
    'Russia'
  ];
  List<String> imagesUrl = [
    'assects/country/bangladesh.jpg',
    'assects/country/India.jpg',
    'assects/country/Pakistan.jpg',
    'assects/country/Nepal.jpg',
    'assects/country/France.jpg',
    'assects/country/Uk.jpg',
    'assects/country/Canada.jpg',
    'assects/country/Us.jpg',
    'assects/country/Russia.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //upper main container
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
                                    style:
                                        TextStyle(color: ColorSelect.subTitle),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
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
                                        border: Border.all(
                                            color: Colors.white, width: 4)),
                                    child: Image.asset(
                                        'assects/images/profile.png'))),
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
                          suffixIcon: Icon(
                            IconlyLight.search,
                            color: ColorSelect.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Catagories
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'see all',
                          style: TextStyle(color: ColorSelect.subTitle),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: ColorSelect.subTitle,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: countryName.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 60,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(imagesUrl[index]),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    countryName[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              //Tab bar
              DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: TabBar(
                              labelPadding: EdgeInsets.only(left: 20),
                              isScrollable: true,
                              labelColor: ColorSelect.secondery,
                              unselectedLabelColor: ColorSelect.subTitle,
                              tabs: [
                                Tab(
                                  text: 'Upcoming',
                                ),
                                Tab(text: 'Recent'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            height: 200,
                            alignment: Alignment.topLeft,
                            child: TabBarView(children: <Widget>[
                              //Upcomming Container
                              Container(
                                color: Colors.blue,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 170,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 170,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 170,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text('Display Tab 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ]))
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
