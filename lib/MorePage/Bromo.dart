import 'package:flutter/material.dart';
import 'package:login/zoom/bromoF3.dart';
import 'package:login/zoom/bromoF5.dart';
import 'package:login/zoom/bromoFI.dart';
import 'package:login/zoom/bromoF2.dart';
import '../map_utils.dart';
import 'package:login/imageLink/imageLink.dart';

import '../zoom/bromoF4.dart';

class Bromo extends StatefulWidget {
  const Bromo({super.key});

  @override
  State<Bromo> createState() => _BromoState();
}

class _BromoState extends State<Bromo> {
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
                                padding: EdgeInsets.only(left: 25),
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
                                              return bromoF1();
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
                                                      imgLink.bromo1),
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
                                                      imgLink.bromo2),
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
                                                      imgLink.bromo3),
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
                                              return bromoF4();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "f4",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.bromo4),
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
                                              return bromoF5();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "f5",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.bromo5),
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
        ],
      ),
    );
  }
}
