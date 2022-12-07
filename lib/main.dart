import 'package:flutter/material.dart';
import 'Page/startup.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
        ),
      ),
      title: "login",
      debugShowCheckedModeBanner: false,
      home: StartUp(),
    );
  }
}
