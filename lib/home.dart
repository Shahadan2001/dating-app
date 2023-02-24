import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isLiked = false;
  bool disLiked = false;
  final urlImages = [
    'assets/images/image 49.png',
    'assets/images/image 71.png',
    'assets/images/image 65.png',
    'assets/images/image 49.png',
  ];

  var pagecontroller = PageController(initialPage: 1);
  int activeIndex1 = 0;
  final controller1 = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage('assets/images/image 65.png'),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Text(
              '150',
              style: TextStyle(
                color: Colors.orangeAccent,
              ),
            ),
          ),
          Image.asset('assets/images/diamond.png'),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.notifications,
            color: Colors.red[300],
          ),
          Align(
            alignment: Alignment(-1, -0.3),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.red[300],
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.settings_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome,',
                  style: GoogleFonts.pangolin(color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Shikha Gaur!',
                  style: GoogleFonts.pangolin(
                    color: Colors.blue,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: PageView(
                    controller: pagecontroller,
                    onPageChanged: (value) {
                      setState(() {
                        if (value == 2) {
                          isLiked = true;
                          disLiked = false;
                        } else if (value == 0) {
                          isLiked = false;
                          disLiked = true;
                        } else {
                          isLiked = false;
                          disLiked = false;
                        }
                      });
                    },
                    children: [
                      containerCard1Cover(),
                      containerCard2Cover(),
                      containerCard3Cover(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (disLiked) ...[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 60),
                          backgroundColor: Colors.red[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/images/cancel.png'),
                      ),
                    ] else ...[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/images/cancel.png'),
                      ),
                    ],
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(60, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/star.png'),
                    ),
                    if (isLiked) ...[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Colors.green[100],
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/images/check.png'),
                      ),
                    ] else ...[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/images/check.png'),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.05, -3.8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        child: Image.asset(
                          'assets/images/finger.png',
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/Vector.png'),
                        Image.asset('assets/images/Vector (1).png'),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            'Swipe',
                            style: GoogleFonts.pangolin(color: Colors.black),
                          ),
                        ),
                        Image.asset('assets/images/Vector (2).png'),
                        Image.asset('assets/images/Vector (3).png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 1.9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
  Widget buildIndicator1() => AnimatedSmoothIndicator(
        activeIndex: activeIndex1,
        count: urlImages.length,
        effect: SlideEffect(
          dotWidth: 50,
          dotHeight: 5,
          dotColor: Colors.white24,
          activeDotColor: Colors.white70,
        ),
      );

  Widget buildButton1() {
    return (activeIndex1 != 0)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: previous1,
                icon: Image.asset('assets/images/backward.png'),
              ),
              IconButton(
                onPressed: next1,
                icon: Image.asset(
                  'assets/images/forward.png',
                ),
              ),
            ],
          )
        : Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: next1,
              icon: Image.asset(
                'assets/images/forward.png',
              ),
            ),
          );
  }

  // Widget buildButton2() {
  //   return (activeIndex1 != 0)
  //       ? Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             IconButton(
  //               onPressed: previous1,
  //               icon: Image.asset('assets/images/backward.png'),
  //             ),
  //             IconButton(
  //               onPressed: next1,
  //               icon: Image.asset(
  //                 'assets/images/forward.png',
  //               ),
  //             ),
  //           ],
  //         )
  //       : Align(
  //           alignment: Alignment.centerRight,
  //           child: IconButton(
  //             onPressed: next1,
  //             icon: Image.asset(
  //               'assets/images/forward.png',
  //             ),
  //           ),
  //         );
  // }

  // Widget buildButton3() {
  //   return (activeIndex1 != 0)
  //       ? Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             IconButton(
  //               onPressed: previous1,
  //               icon: Image.asset('assets/images/backward.png'),
  //             ),
  //             IconButton(
  //               onPressed: next1,
  //               icon: Image.asset(
  //                 'assets/images/forward.png',
  //               ),
  //             ),
  //           ],
  //         )
  //       : Align(
  //           alignment: Alignment.centerRight,
  //           child: IconButton(
  //             onPressed: next1,
  //             icon: Image.asset(
  //               'assets/images/forward.png',
  //             ),
  //           ),
  //         );
  // }

  Widget containerCard3() {
    // isLiked = true;

    return Container(
      child: Center(
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              carouselController: controller1,
              options: CarouselOptions(
                scrollPhysics: NeverScrollableScrollPhysics(),
                height: MediaQuery.of(context).size.height / 1.9,
                viewportFraction: 1,
                initialPage: activeIndex1,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reason) {
                  setState(() {
                    activeIndex1 = index;
                  });
                }),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: buildIndicator1()),
                Center(child: buildButton1()),
                SizedBox(
                  height: 195,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 4,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'LIKE',
                    style: GoogleFonts.outfit(
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  )),
                ),
                SizedBox(
                  height: 18,
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        height: 125,
                        width: MediaQuery.of(context).size.width / 1.1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Samara Doe, 26',
                                style: GoogleFonts.philosopher(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.green[200],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lives in Spain',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23.1',
                                style: GoogleFonts.outfit(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Center(
                            child: Icon(
                              FontAwesomeIcons.anglesUp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget containerCard2() {
    // bool isLiked = false;
    // bool disLiked = false;

    return Container(
      child: Center(
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              carouselController: controller1,
              options: CarouselOptions(
                scrollPhysics: NeverScrollableScrollPhysics(),
                initialPage: activeIndex1,
                height: MediaQuery.of(context).size.height / 1.9,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reason) {
                  setState(() {
                    activeIndex1 = index;
                  });
                }),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: buildIndicator1()),
                Center(child: buildButton1()),
                SizedBox(
                  height: 263,
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        height: 125,
                        width: MediaQuery.of(context).size.width / 1.1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Samara Doe, 26',
                                style: GoogleFonts.philosopher(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.green[200],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lives in Spain',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23.1',
                                style: GoogleFonts.outfit(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Center(
                            child: Icon(
                              FontAwesomeIcons.anglesUp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget containerCard1() {
    return Container(
      child: Center(
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              carouselController: controller1,
              options: CarouselOptions(
                scrollPhysics: NeverScrollableScrollPhysics(),
                height: MediaQuery.of(context).size.height / 1.9,
                initialPage: activeIndex1,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reason) {
                  setState(() {
                    activeIndex1 = index;
                  });
                }),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: buildIndicator1()),
                Center(child: buildButton1()),
                SizedBox(
                  height: 195,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 4,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'NOPE',
                    style: GoogleFonts.outfit(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  )),
                ),
                SizedBox(
                  height: 18,
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        height: 125,
                        width: MediaQuery.of(context).size.width / 1.1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Samara Doe, 26',
                                style: GoogleFonts.philosopher(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.green[200],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lives in Spain',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23.1',
                                style: GoogleFonts.outfit(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Center(
                            child: Icon(
                              FontAwesomeIcons.anglesUp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardContainer4() {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 1.9,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  urlImages[activeIndex1],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Samara Doe',
                    style: GoogleFonts.philosopher(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.green[200],
                  ),
                ],
              ),
              Text(
                'Lives in Spain',
                style: GoogleFonts.outfit(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                style: GoogleFonts.outfit(
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Interests',
                style: GoogleFonts.outfit(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Pets',
                    style: textstyles(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Religion',
                    style: textstyles(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Psychology',
                    style: textstyles(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Music',
                    style: textstyles(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Cosplay',
                    style: textstyles(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget containerCard2Cover() {
    return Container(
      child: PageView(scrollDirection: Axis.vertical, children: [
        containerCard2(),
        cardContainer4(),
      ]),
    );
  }

  Widget containerCard3Cover() {
    return Container(
      child: PageView(scrollDirection: Axis.vertical, children: [
        containerCard3(),
        cardContainer4(),
      ]),
    );
  }

  Widget containerCard1Cover() {
    return Container(
      child: PageView(scrollDirection: Axis.vertical, children: [
        containerCard1(),
        cardContainer4(),
      ]),
    );
  }

  TextStyle textstyles() => GoogleFonts.outfit(
      fontSize: 14,
      background: Paint()
        ..strokeWidth = 20
        ..color = Color.fromARGB(255, 243, 125, 116)
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round);
  void next1() => controller1.nextPage(duration: Duration(milliseconds: 500));
  void previous1() =>
      controller1.previousPage(duration: Duration(milliseconds: 500));
  void change() {
    setState(() {
      isLiked = false;
      disLiked = false;
    });
  }
}
