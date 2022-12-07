import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/imageLink/imageLink.dart';
import 'package:login/zoom/ranuKumbolo1.dart';
import 'package:login/zoom/ranuKumbolo2.dart';
import 'package:login/zoom/ranuKumbolo3.dart';
import 'package:login/zoom/ranuKumbolo4.dart';
import 'package:login/zoom/ranuKumbolo5.dart';

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
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuKumbolo1();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rk1",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuKumbolo1),
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
                                              return ranuKumbolo2();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rk2",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuKumbolo2),
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
                                              return ranuKumbolo3();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rk3",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuKumbolo3),
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
                                              return ranuKumbolo4();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rk4",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuKumbolo4),
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
                                              return ranuKumbolo5();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rk5",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuKumbolo5),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
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
                                  MapUtils.openMap(
                                      -8.049398694503319, 112.92077288167322);
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
