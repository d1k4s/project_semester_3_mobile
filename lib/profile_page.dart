import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int pageIndex = 0;
  PageController pageController = PageController();
  changeIndex({required int value}) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: PageView(
        controller: pageController,
        children: const [
          Center(
            child: Text(
              "Home view 🏠",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ),
          Center(
              child: Text(
            "Profile view 🧛",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          )),
        ],
      ),
      bottomNavigationBar: FluidNavBar(
        defaultIndex: pageIndex,
        style: const FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            iconSelectedForegroundColor: Colors.white,
            iconBackgroundColor: Color(0xFF25BAC2),
            barBackgroundColor: Colors.white),
        icons: [
          FluidNavBarIcon(icon: Icons.home),
          FluidNavBarIcon(icon: Icons.person),
          FluidNavBarIcon(icon: Icons.home),
          FluidNavBarIcon(icon: Icons.person),
          FluidNavBarIcon(icon: Icons.person),
        ],
        onChange: (val) {
          changeIndex(value: val);
          pageController.jumpToPage(pageIndex);
        },
      ),
    );
  }
}
