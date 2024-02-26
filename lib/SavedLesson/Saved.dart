import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../Screens/profile.dart';
import 'Live.dart';

class Saved extends StatefulWidget {
  @override
  State<Saved> createState() {
    return SavedState();
  }
}

class SavedState extends State<Saved> {
  int currentIndexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop(); // Navigate back to the previous page
        },
        child: Image.asset(
          'assets/images/chevron-right.png', // Replace with your image asset path
          width: 24, // Adjust the width of the image
          height: 24, // Adjust the height of the image
        ),
      ),
      title: Center(child: Text("المشاهده لاحقاً",style: TextStyle( fontFamily: 'Cairo',
        fontSize: 22,
        fontWeight: FontWeight.bold,))),

    ),
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
          children: <Widget>[

            SizedBox(height: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the row horizontally
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Center the row horizontally
                  children: <Widget>[
                    Container(
                      width: 200.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(width: 10),
                            Container(
                              width: 154.67,
                              height: 114.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                'assets/images/save.png',
                              ),
                            ),
                            Text(
                              "الفيزياء الحديثة",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "52647",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',

                                      ),
                                    ),
                                    Icon(Icons.remove_red_eye_sharp,
                                        color: Colors.blueAccent, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 200.12,

                      height: 217.71,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Container(
                              width: 154.67,
                              height: 114.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                'assets/images/save.png',
                              ),
                            ),
                            Text(
                              "الفيزياء الحديثة",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "52647",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.remove_red_eye_sharp,
                                        color: Colors.blueAccent, size: 11.7),
                                    SizedBox(height:2),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                  children: <Widget>[
                    Container(
                      width: 200.12,

                      height: 217.71,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Container(
                              width: 154.67,
                              height: 114.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                'assets/images/save.png',
                              ),
                            ),
                            Text(
                              "الفيزياء الحديثة",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "52647",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.remove_red_eye_sharp,
                                        color: Colors.blueAccent, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 200.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Container(
                              width: 154.67,
                              height: 114.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                'assets/images/save.png',
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.end,

                              "الفيزياء الحديثة",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
                                fontFamily: 'Cairo',

                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "52647",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.remove_red_eye_sharp,
                                        color: Colors.blueAccent, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.black, fontSize: 9,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 11.7),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        // width: 359,
        // height: 66.22,
        // margin: EdgeInsets.only(top: 33.78, left: 35.5),
        // padding: EdgeInsets.fromLTRB(24.38, 12.61, 24.38, 12.61),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.blueAccent, Colors.white],
            // transform: GradientRotation(-3.14159), // -180 degrees in radians
          ),
        ),

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndexx,
          onTap: (index) {
            // setState(() {
            //   currentIndexx = index;
            // });
          },
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child:InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    profile()),
                          );
                        });
                      },
                      child: Image.asset(
                        'assets/images/user.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "ملفى",
                    style: TextStyle(
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize:10.90,
                    ),
                  ),
                ],
              ),
              label: "", // Set an empty label to hide the default label
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Live()),
                            );
                          });
                        },
                        child: Icon(Icons.online_prediction, color: Colors.grey, size: 25)),),
                  SizedBox(height: 1),
                  Text(
                    "مباشر",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Lessons()),
                          );
                        });
                      },
                      child: Icon(Icons.collections_bookmark_outlined,
                          color: Colors.grey, size: 25),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الوحدات",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home()),
                          );
                        });
                      },
                      child: Image.asset(
                        'assets/images/HouseSimple.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),


    );
  }
}

