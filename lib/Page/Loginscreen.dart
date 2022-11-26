import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/BottomBar.dart';
import 'Register.dart';
import 'forgot_pw_page.dart';

class Loginscreen extends StatefulWidget {
  @override
  _Loginscreenstate createState() => _Loginscreenstate();
}

class _Loginscreenstate extends State<Loginscreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
    print(_emailController.text);
    print(_passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                "Login",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230, right: 20),
              child: TextButton(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot Password..?",
                    style: TextStyle(color: Color(0xff25bac2)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPasswordPage();
                  }));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Color(0xff25bac2)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage();
                  }));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20),
                ),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("does'nt have an account..?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return register();
                      }));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Color(0xff25bac2)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
