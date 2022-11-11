// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_tnbts/page/profile.dart';
import 'package:ui_tnbts/page/tutorial.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    ProfilePage(),
    Tutorial(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: GNav(
            backgroundColor: Colors.grey.shade200,
            color: Colors.grey[500],
            activeColor: Color(0xFF25BAC2),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.info, text: 'SOP'),
              GButton(icon: Icons.auto_stories, text: 'Tutorial'),
              GButton(icon: Icons.account_balance_wallet, text: 'Payments'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
