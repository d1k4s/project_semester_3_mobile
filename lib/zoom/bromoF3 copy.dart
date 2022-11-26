import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/MorePage/Bromo.dart';

class bromoF3 extends StatelessWidget {
  const bromoF3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: "f3",
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn0-production-images-kly.akamaized.net/c6wfZfI1AxJVSNWSsnZLReRv9XQ=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3567172/original/006768600_1631244835-20210910-hampr-3-bulan-ditutup_-hari-ini-Bromo-dibuka-untuk-wisatawan-ARBAS-2.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
