import 'package:careacademy/Screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import '../Screens/Home.dart';
import '../Screens/menu.dart';
import '../Screens/physics_homework.dart';
import '../widget/circle_progress_bar.dart';


class HomeWork extends StatefulWidget {
  @override
  State<HomeWork> createState() {
    return HomeWorkState();
  }
}
class HomeWorkState extends State<HomeWork>{
  final List<Map<String, String>> examsData = [
    {
      'title': 'واجب الفيزياء الحديثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'isCompleted': 'true',
    },
    {
      'title': 'واجب الفيزياء الحديثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
    },
    {
      'title': 'واجب الفيزياء الحديثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
    },
    {
      'title': 'واجب الفيزياء الحديثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
    },
    {
      'title': 'واجب الفيزياء الحديثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndexx = 0;

    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); // Navigate back to the previous page
            },
            child: Image.asset(
                'assets/images/chevron-right.png',
                // Replace with your image asset path
                width: 24, // Adjust the width of the image
                height: 24, // Adjust the height of the image

            ),
          ),
          title: Text(
            "الواجبات",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Cairo'
            ),
          ),
          centerTitle: true, // Center the title horizontally
        ),

        body:  ListView.builder(
          itemCount: examsData.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFCFCFC),
                borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhysicsHomework()),
                    );
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    examsData[index]['isCompleted'] == 'true' // Check if item is completed
                        ? Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 20.0,
                    )
                        : Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            examsData[index]['title'] ?? '',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Colors.black,
                              fontSize: 15.13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            examsData[index]['deadline'] ?? '',
                            style: TextStyle(
                              fontSize: 9.61,
                              color: Color(0xFF008DC9),
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Container(
          width: 359,
          height: 66.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),

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
                          color: Color(0xFF6C6A6A),

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
                        child:Icon(Icons.online_prediction_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color:Color(0xFF6C6A6A),
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
                        child: Icon(Icons.collections_bookmark_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color:Color(0xFF6C6A6A),
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
