// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
// ignore_for_file: prefer_const_constructors

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_tnbts/pages/payments.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    Text('home'),
    Text('sop'),
    payments(),
    Text('osas'),
    Text('ossas'),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens.elementAt(currentTab)),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
          child: GNav(
            backgroundColor: Colors.grey.shade200,
            color: Colors.grey[500],
            activeColor: Color(0xFF25BAC2),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
              ),
              // GButton(
              //   icon: Icons.info,
              //   text: 'SOP',
              //   onPressed: () {
              //     setState(() {
              //       currentTab = 1;
              //     });
              //   },
              // ),
              // GButton(
              //   icon: Icons.auto_stories,
              //   text: 'Tutorial',
              //   onPressed: () {
              //     setState(() {
              //       currentTab = 2;
              //     });
              //   },
              // ),
              GButton(
                icon: Icons.account_balance_wallet,
                text: 'Payments',
                onPressed: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                onPressed: () {
                  setState(() {
                    currentTab = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
