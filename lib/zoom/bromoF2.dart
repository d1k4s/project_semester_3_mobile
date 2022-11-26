import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/MorePage/Bromo.dart';

class bromoF2 extends StatelessWidget {
  const bromoF2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: "f2",
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://storyblok-image.ef.com/unsafe/1500x750/filters:focal(960x375:961x376):quality(70)/f/78828/dd7b752616/ef-id-blog-top-banner-6-tips-wisata-ke-bromo-dari-malang.jpg"),
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
