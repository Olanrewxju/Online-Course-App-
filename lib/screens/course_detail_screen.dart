// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 392,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: const Alignment(1, 0.0),
                  colors: [
                    Color(0xffF4C465),
                    Color(0xffC63956),
                  ],
                ),
                image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage('assets/images/Frame 7.png'))),
          )
        ],
      )),
    );
  }
}
