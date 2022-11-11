import 'dart:ui';

import 'package:flutter/material.dart';

class anu extends StatelessWidget {
  const anu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 55),
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Text('Rizza',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 37,
                                  color: Colors.black)),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text('view and edit profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/justina.jpg'),
                      radius: 45,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
