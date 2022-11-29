import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/zoom/bromoF3.dart';
import 'package:login/zoom/bromoFI.dart';
import 'package:login/zoom/bromoF2.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Page/forgot_pw_page.dart';
import '../map_utils.dart';

class Bromo extends StatefulWidget {
  const Bromo({super.key});

  @override
  State<Bromo> createState() => _BromoState();
}

class _BromoState extends State<Bromo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   backgroundColor: Color(0xff25bac2),
        //   elevation: 10,
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bromo",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "00.00-00.00",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "WIB",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                child: DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'View'),
                                Tab(text: 'Maps'),
                              ],
                            ),
                          ),
                          Container(
                              height: double.infinity, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Container(
                                  height: double.infinity,
                                  alignment: Alignment.topCenter,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Wrap(
                                          direction: Axis.horizontal,
                                          // alignment: WrapAlignment.center,
                                          spacing: 15.0,
                                          // runAlignment:WrapAlignment.center,
                                          runSpacing: 15.0,
                                          // crossAxisAlignment: WrapCrossAlignment.center,
                                          // textDirection: TextDirection.rtl,
                                          // verticalDirection: VerticalDirection.up,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return bromoFI();
                                                }));
                                              },
                                              child: Hero(
                                                tag: "f1",
                                                child: Container(
                                                  height: 250,
                                                  width: 180,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://iili.io/H3eJH5x.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return bromoF2();
                                                }));
                                              },
                                              child: Hero(
                                                tag: "f2",
                                                child: Container(
                                                  height: 250,
                                                  width: 180,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://storyblok-image.ef.com/unsafe/1500x750/filters:focal(960x375:961x376):quality(70)/f/78828/dd7b752616/ef-id-blog-top-banner-6-tips-wisata-ke-bromo-dari-malang.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return bromoF3();
                                                }));
                                              },
                                              child: Hero(
                                                tag: "f3",
                                                child: Container(
                                                  height: 250,
                                                  width: 180,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://cdn0-production-images-kly.akamaized.net/c6wfZfI1AxJVSNWSsnZLReRv9XQ=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3567172/original/006768600_1631244835-20210910-hampr-3-bulan-ditutup_-hari-ini-Bromo-dibuka-untuk-wisatawan-ARBAS-2.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff25bac2),
                                    ),

                                    onPressed: () {
                                      MapUtils.openMap(-8.0215648, 112.9524508);
                                    },
                                    icon: Icon(Icons
                                        .location_on), //icon data for elevated button
                                    label: Text("Location"), //label text
                                  ),
                                ),
                              ]))
                        ])),
              )
              // Center(
              //   child: Stack(
              //     children: [
              //       Container(
              //         alignment: Alignment.topLeft,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(15),
              //             color: Colors.grey[400]),
              //         height: 150,
              //         width: 350,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Row(
              //             children: [
              //               Text(
              //                 "Kuota :",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Text("50", style: TextStyle(fontSize: 25))
              //             ],
              //           ),
              //         ),
              //       ),
              //       Padding(
              //           padding: const EdgeInsets.only(top: 50),
              //           child: Container(
              //               height: 500,
              //               width: 350,
              //               decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius: BorderRadius.circular(15),
              //                   border: Border.all(
              //                     color: Colors.grey,
              //                     width: 5,
              //                   )),
              //               // color: Colors.blue,
              //               child: Text(
              //                 "Ranu Pane",
              //                 style: TextStyle(
              //                     fontFamily: 'KaushanScript', fontSize: 30),
              //                 // textScaleFactor: 1.0,
              //               ))),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
