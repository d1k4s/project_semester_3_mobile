import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/main_page.dart';
import 'Page/Loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Page/startup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
