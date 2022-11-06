import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel/const.dart';

import 'Upcomming/Chittagong.dart';

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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: -2,
                                  blurRadius: 8,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    height: 60,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(imagesUrl[index]),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
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
                            height: 260,
                            alignment: Alignment.topLeft,
                            child: TabBarView(children: <Widget>[
                              //Upcomming Container
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //Japan Container
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 10.0,
                                                bottom: 10.0),
                                            child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Chittagong()));
                                              },
                                              child: Container(
                                                width: 165,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 9,
                                                      offset: Offset(0,
                                                          4), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(8.0),
                                                  //image container
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        alignment:
                                                        Alignment.topRight,
                                                        children: [
                                                          Container(
                                                            height: 160,
                                                            width: 150,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                              image:
                                                              DecorationImage(
                                                                fit: BoxFit.cover,
                                                                image: AssetImage(
                                                                    'assects/country/Chittagong.jpg'),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                            child: Positioned(
                                                                child: Container(
                                                                  height: 30,
                                                                  width: 55,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xFFC0C7FF)
                                                                          .withOpacity(
                                                                          0.6),
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          20)),
                                                                  child: Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            4.0),
                                                                        child: Icon(
                                                                          Icons.star,
                                                                          color: Colors
                                                                              .white,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '4.5',
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                            color: Colors
                                                                                .white),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            top: 8.0, left: 5),
                                                        child: Text(
                                                          'Chittagong',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                        child: Row(
                                                          children: [
                                                            Text('Bangladesh',
                                                                style: TextStyle(
                                                                  color: ColorSelect
                                                                      .subTitle,
                                                                  fontSize: 15,
                                                                )),
                                                            Spacer(),
                                                            Text('\$250',
                                                                style: TextStyle(
                                                                  color: ColorSelect
                                                                      .primary,
                                                                  fontSize: 25,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Container(
                                            width: 165,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              //image container
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 160,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assects/country/Cox.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                        child: Positioned(
                                                            child: Container(
                                                          height: 30,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xFFC0C7FF)
                                                                  .withOpacity(
                                                                      0.6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '4.5',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 5),
                                                    child: Text(
                                                      'Cox\'s Bazar',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      children: [
                                                        Text('Bangladesh',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .subTitle,
                                                              fontSize: 15,
                                                            )),
                                                        Spacer(),
                                                        Text('\$300',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .primary,
                                                              fontSize: 25,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Container(
                                            width: 165,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              //image container
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 160,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assects/country/Sylhet.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                        child: Positioned(
                                                            child: Container(
                                                          height: 30,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xFFC0C7FF)
                                                                  .withOpacity(
                                                                      0.6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '4.5',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 5),
                                                    child: Text(
                                                      'Sylhet',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      children: [
                                                        Text('Bangladesh',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .subTitle,
                                                              fontSize: 15,
                                                            )),
                                                        Spacer(),
                                                        Text('\$250',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .primary,
                                                              fontSize: 25,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //Japan Container

                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Container(
                                            width: 165,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              //image container
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 160,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assects/country/Argentina.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                        child: Positioned(
                                                            child: Container(
                                                          height: 30,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xFFC0C7FF)
                                                                  .withOpacity(
                                                                      0.6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '4.5',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 5),
                                                    child: Text(
                                                      'Argentina',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      children: [
                                                        Text('Argentina',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .subTitle,
                                                              fontSize: 15,
                                                            )),
                                                        Spacer(),
                                                        Text('\$250',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .primary,
                                                              fontSize: 25,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Container(
                                            width: 165,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              //image container
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 160,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assects/country/India.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                        child: Positioned(
                                                            child: Container(
                                                          height: 30,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xFFC0C7FF)
                                                                  .withOpacity(
                                                                      0.6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                            child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '4.5',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 5),
                                                    child: Text(
                                                      'Parice',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      children: [
                                                        Text('Bangladesh',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .subTitle,
                                                              fontSize: 15,
                                                            )),
                                                        Spacer(),
                                                        Text('\$300',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .primary,
                                                              fontSize: 25,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Container(
                                            width: 165,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              //image container
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 160,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assects/country/Brazil.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0,
                                                                top: 8.0),
                                                        child: Positioned(
                                                            child: Container(
                                                          height: 30,
                                                          width: 55,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xFFC0C7FF)
                                                                  .withOpacity(
                                                                      0.6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '4.5',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 5),
                                                    child: Text(
                                                      'Brazil',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      children: [
                                                        Text('Brazil',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .subTitle,
                                                              fontSize: 15,
                                                            )),
                                                        Spacer(),
                                                        Text('\$550',
                                                            style: TextStyle(
                                                              color: ColorSelect
                                                                  .primary,
                                                              fontSize: 25,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
