

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'About.dart';
import 'Home.dart';
import 'profile.dart';
import 'classpage.dart';

import 'live feed.dart';

class firstpage extends StatefulWidget{

  @override
  State<firstpage> createState() {

    return firstpageState();
  }
}

class firstpageState extends State<firstpage> {
  int counterindex = 0;

  List<Widget> get pages => [
    Home(),
    class_page(),
    live_feed(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: counterindex,
          onTap: (index) {
            setState(() {
              counterindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/HouseSimple.png'), // Assuming you have the image in your assets folder
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/BookBookmark.png'), // Assuming you have the image in your assets folder
              label: "الوحدات",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/fluent_live-20-regular.png'), // Assuming you have the image in your assets folder
              label: "بث مباشر",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/user.png'), // Assuming you have the image in your assets folder
              label: "ملفى",
            ),



          ],
        ),
        body: pages[counterindex],
      ),
    );
  }
}

