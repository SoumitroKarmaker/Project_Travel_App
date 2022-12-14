import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel/const.dart';

class Chittagong extends StatefulWidget {
  const Chittagong({Key? key}) : super(key: key);

  @override
  State<Chittagong> createState() => _ChittagongState();
}

class _ChittagongState extends State<Chittagong> {
  List<String> name = ['About', 'Benefit', 'Highlights'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F7),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: GestureDetector(
            onTap: () {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // upper picture container with stack
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assects/country/Chittagong.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 15.0, bottom: 15.0),
                          child: Column(
                            children: [
                              Text(
                                'Duration',
                                style: TextStyle(
                                    color: ColorSelect.subTitle, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '6 days',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 15.0, bottom: 15.0),
                          child: Column(
                            children: [
                              Text(
                                'participant',
                                style: TextStyle(
                                    color: ColorSelect.subTitle, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '30 people',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 15.0, bottom: 15.0, right: 15.0),
                          child: Column(
                            children: [
                              Text(
                                'landing',
                                style: TextStyle(
                                    color: ColorSelect.subTitle, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '2 stop',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // chittagong heading text
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              'Chittagong',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          // Location & Rating
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(IconlyLight.location),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Bangladesh',
                      style:
                          TextStyle(fontSize: 15, color: ColorSelect.subTitle),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      IconlyBold.star,
                      color: ColorSelect.primary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.5 (2.220)',
                      style:
                          TextStyle(fontSize: 15, color: ColorSelect.subTitle),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              height: 65,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorSelect.primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:21.0, right: 21, top: 14.0, bottom: 14.0),
                          child: Center(
                              child: Text(
                            name[index],
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Text(
              'Fujinomiya (???????????? Fujinomiya-shi) '
              'adalah kota yang terletak di Prefektur Shizuoka,'
              ' Jepang. Pada 1 Februari 2020, kota ini memiliki p'
              'erkiraan populasi 128,342 dan kepadatan penduduk 330 o'
              'rang per km??. Total wilayah kota adalah 389.08 km??.',
              style: TextStyle(color: ColorSelect.subTitle),
            ),
          ),
        ],
      ),
    //          //       Row(
      //           //         children: [
      //           //           Column(
      //           //             children: [
      //           //               Text('Your Trip Count',style: TextStyle(color: ColorSelect.subTitle),),
      //           //               Text('\$250',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      //           //             ],
      //           //           ),
      //           //         ],
      //           //       )
    );

  }
}
