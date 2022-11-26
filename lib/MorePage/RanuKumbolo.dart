import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../map_utils.dart';

class RanuKumbolo extends StatefulWidget {
  const RanuKumbolo({super.key});

  @override
  State<RanuKumbolo> createState() => _RanuKumboloState();
}

class _RanuKumboloState extends State<RanuKumbolo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff25bac2),
        elevation: 10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ranu Kumbolo",
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
                length: 3, // length of tabs
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
                          height: 578, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              height: double.infinity,
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: ListView(
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
                                        Container(
                                          height: 250,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg"),
                                                fit: BoxFit.cover,
                                              ),
                                              border: Border.all(
                                                  color: Colors.red)),
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
                                              border: Border.all(
                                                  color: Colors.red)),
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
                                              border: Border.all(
                                                  color: Colors.red)),
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
                                              border: Border.all(
                                                  color: Colors.red)),
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
                                              border: Border.all(
                                                  color: Colors.red)),
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
    );
  }
}