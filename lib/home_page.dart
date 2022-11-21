import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:login/pageView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;
  String i = "";
  var controller;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Color(0xff25bac2),
        ),
        child: Scaffold(
          body: ListView(
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    items: [
                      Stack(children: [
                        Container(
                          // margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 430, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              primary: Color(0xff25bac2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "More",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280, left: 20),
                          child: Text(
                            "Bromo",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 310, left: 20),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                                "Bromo mountain is not only rich of its natural beauty but also in harmony with the local people around it."),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          // margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/9/93/Frost_in_Ranu_Pani_on_4_August_2018_by_Susanto_Tan.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 430, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              primary: Color(0xff25bac2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "More",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280, left: 20),
                          child: Text(
                            "Ranu Pane",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 310, left: 20),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Ranu Pani adalah salah satu titik berangkat untuk pendaki yang akan melakukan pendakian ke Gunung Semeru",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          // margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.republika.co.id/uploads/images/inpicture_slide/keindahan-ranu-regulo-di-pagi-hari-_180502192610-850.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 430, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              primary: Color(0xff25bac2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "More",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280, left: 20),
                          child: Text(
                            "Ranu Regulo",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 310, left: 20),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Ranu Regulo are three rows of beautiful lakes at the foot of Mount Semeru, located in the village of Ranu Pane, Senduro District, Lumajang.",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          // margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.agentwisatabromo.com/wp-content/uploads/2015/08/Ranu-Kumbolo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 430, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              primary: Color(0xff25bac2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "More",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280, left: 20),
                          child: Text(
                            "Ranu Kumbolo",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 310, left: 20),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Ranu Kumbolo is a lake with a breathtaking and exotic scenery. The lake edge is used as resting place and make camp for Gunung Semeru climners.",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          // margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.okezone.com/content/2022/11/09/519/2704343/gunung-semeru-kembali-erupsi-pvmbg-minta-masyarakat-jauhi-sungai-hindari-aliran-lahar-IgeXSgDoUA.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 430, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              primary: Color(0xff25bac2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "More",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280, left: 20),
                          child: Text(
                            "Mount Semeru",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 310, left: 20),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "the highest mountain on the island of Java with a height of 3,676 meters above sea level",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                    ],
                    options: CarouselOptions(
                      height: 500.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _activeIndex = index;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 450, left: 290),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _activeIndex,
                      count: 5,
                      effect: const JumpingDotEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          jumpScale: .7,
                          verticalOffset: 20,
                          activeDotColor: Colors.red,
                          dotColor: Colors.grey),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text("log out"))
            ],
          ),
        ));
  }
}
