import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../Screens/menu.dart';
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
    TextDirection _getTextDirection(String text) {
      // Determine the text direction based on text content
      if (text.contains(RegExp(
          r'[\u0600-\u06FF\u0750-\u077F\u0590-\u05FF\uFE70-\uFEFF\uFB50-\uFDFF\u2000-\u206F\u202A-\u202E\u2070-\u209F\u20A0-\u20CF\u2100-\u214F\u2150-\u218F]'))) {
        // RTL language detected
        return TextDirection.rtl;
      } else {
        // LTR language detected
        return TextDirection.ltr;
      }
    }
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); // Navigate back to the previous page
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                'assets/images/chevron-right.png', // Replace with your image asset path
                width: 24, // Adjust the width of the image
                height: 24, // Adjust the height of the image
              ),
            ),
          ),
          title: Center
            (
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text("المشاهده لاحقاً        ",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,)),
                ),
              )),

        ),
        backgroundColor: CupertinoColors.white,
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
            children: <Widget>[
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Center the row horizontally
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                      children: <Widget>[
                        SizedBox(width: 8),
                        Container(
                          width: constraints.maxWidth/2.1,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            // ),
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
                                  width: constraints.maxWidth/2.1,
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
                                  textDirection: _getTextDirection(" ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...."),
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
                          width: constraints.maxWidth/2.1,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            // ),
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
                                  width: constraints.maxWidth/2.1,
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
                                  textDirection: _getTextDirection(" ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...."),
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
                  ),

                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                      children: <Widget>[
                        Container(
                          width: constraints.maxWidth/2.1,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            // ),
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
                                  width: constraints.maxWidth/2.1,
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
                                  textDirection: _getTextDirection(" ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...."),
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
                          width: constraints.maxWidth/2.1,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            // ),
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
                                  width: constraints.maxWidth/2.1,
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
                                  textDirection: _getTextDirection(" ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...."),
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
                  ),
                ],
              ),
            ],
          ));
        }),

        bottomNavigationBar: Container(
          width: 359,
          height: 66.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/user.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "ملفى",
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 10.90,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Live()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/fluent_live-20-regular.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "مباشر",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lessons()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/BookBookmark1.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الوحدات",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/HouseSimple.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الرئيسية",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );

  }
}
