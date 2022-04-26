// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_ui/screens/screens.dart';
import 'package:app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetailScreen()));
                  },
                  child: Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(height: 22),
            SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyHorzList(
                      courseHeadline: 'Recommended',
                      courseImage: 'assets/images/Saly-10.png',
                      courseTitle: 'UI/UX DESIGNER \nBEGINNER',
                      endColor: 0xff534EA7,
                      startColor: 0xff9288E4,
                    );
                  }),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'From over 80 Lectures',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: const Color(0xff9C9A9A),
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVertList(
                    courseDuration: '8 Hours',
                    courseRating: 3.0,
                    courseImage: 'assets/images/Saly-24.png',
                    courseTitle: 'Flutter Developer',
                  );
                })
          ],
        ),
      ),
    );
  }
}
