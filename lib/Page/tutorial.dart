import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('tutorialPage',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: Colors.black)),
      ),
    );
  }
}
