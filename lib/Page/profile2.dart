// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/Page/sop.dart';

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

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
                          padding: const EdgeInsets.only(left: 25),
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
                      backgroundImage: AssetImage('assets/justina.jpg'),
                      radius: 45,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 195),
                    child: Icon(Icons.person_search_rounded,
                        size: 40.0, color: Colors.grey.shade400),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tutorial                                           ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Icon(Icons.auto_stories,
                      size: 40.0, color: Colors.grey.shade400)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'SOP',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return sop();
                      }));
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Icon(Icons.info,
                            size: 40.0, color: Colors.grey.shade400)),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 215),
                      child: Icon(Icons.settings,
                          size: 40.0, color: Colors.grey.shade400)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
