import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.white, // Your screen background color
        ),
        SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(height: 70.0),
        ])),
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Text(''), // You can add title here
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.grey.shade600),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Colors.white, //You can make this transparent
            elevation: 0.0, //No shadow
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 100, 0, 0),
              child: Container(
                child: Text('How do i pay my',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    )),
              ),
            ),
          ],
        ),
        Center(
          child: Text('reservation?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
              )),
        )
      ]),
    );
  }
}
