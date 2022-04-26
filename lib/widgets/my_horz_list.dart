// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorzList extends StatelessWidget {
  const MyHorzList({
    Key? key,
    required this.endColor,
    required this.courseImage,
    required this.startColor,
    required this.courseHeadline,
    required this.courseTitle,
  }) : super(key: key);

  final int startColor, endColor;
  final String courseHeadline, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: [
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(children: [
          Positioned(
              top: 15,
              left: 11,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 39,
                width: 115,
                decoration: BoxDecoration(
                    color: const Color(0xffAFA8EE),
                    borderRadius: BorderRadius.circular(36)),
                child: Text(
                  courseHeadline,
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Positioned(
              top: 80,
              left: 14,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                courseImage,
                scale: 1,
              ))
        ]),
      ),
    );
  }
}
