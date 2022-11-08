// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // int pageIndex = 0;
  // PageController pageController = PageController();
  // changeIndex({required int value}) {
  //   setState(() {
  //     pageIndex = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.grey[300],
    //   body: PageView(
    //     controller: pageController,
    //     children: const [
    //       Center(
    //         child: Text(
    //           "Home view 🏠",
    //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    //         ),
    //       ),
    //       Center(
    //         child: Text(
    //           "Rizza",
    //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    //         ),
    //       ),
    //       Center(
    //         child: Text(
    //           "Riz",
    //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    //         ),
    //       ),
    //       Center(
    //         child: Text(
    //           "Ria",
    //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    //         ),
    //       ),
    //       Center(
    //         child: Text(
    //           "STORIA",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               fontSize: 35,
    //               color: Colors.black),
    //         ),
    //       ),
    //     ],
    //   ),
    //   bottomNavigationBar: FluidNavBar(
    //     defaultIndex: pageIndex,
    //     style: const FluidNavBarStyle(
    //         iconUnselectedForegroundColor: Colors.white,
    //         iconSelectedForegroundColor: Colors.white,
    //         iconBackgroundColor: Color(0xFF25BAC2),
    //         barBackgroundColor: Colors.white),
    //     icons: [
    //       FluidNavBarIcon(icon: Icons.home),
    //       FluidNavBarIcon(icon: Icons.info),
    //       FluidNavBarIcon(icon: Icons.auto_stories),
    //       FluidNavBarIcon(icon: Icons.account_balance_wallet),
    //       FluidNavBarIcon(icon: Icons.person),
    //     ],
    //     onChange: (val) {
    //       changeIndex(value: val);
    //       pageController.jumpToPage(pageIndex);
    //     },
    //   ),
    // );
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Color(0xFF25BAC2),
        color: Colors.grey[300],
        activeColor: Colors.grey[300],
        tabBackgroundColor: Colors.grey.shade800,
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
    );
  }
}
