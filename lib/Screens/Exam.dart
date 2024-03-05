import 'package:careacademy/Screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import '../widget/circle_progress_bar.dart';
import 'Home.dart';
import 'menu.dart';

class Exam extends StatefulWidget {
  @override
  State<Exam> createState() {
    return ExamState();
  }
}
class ExamState extends State<Exam>{
  final List<Map<String, String>> examsData = [
    {
      'title': 'أمتحان على الوحدة الأولى',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '100%',
      'GPA':''
      ,
    },
    {
      'title': 'أمتحان على الوحدة الثانية',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '96%',
      'GPA':'ممتاز'
    },
    {
      'title': 'أمتحان على الوحدة الثالثة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '50%',
      'GPA':''
    },
    {
      'title': 'أمتحان على الوحدة الرابعة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '70%',
      'GPA':''
    },
    {
      'title': 'أمتحان على الوحدة الخامسة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '',
      'GPA':''
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
              'assets/images/chevron-right.png', // Replace with your image asset path
              width: 24, // Adjust the width of the image
              height: 24, // Adjust the height of the image
            ),
          ),
          title: Text(
            "الامتحانات",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items at the ends
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40, // Width of the circle
                    height: 40, // Height of the circle

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressBar(
                          strokeWidth: 2,
                          value: double.tryParse(examsData[index]['Percentage']?.replaceAll('%', '') ?? '0') ?? 0,
                          gpa: examsData[index]['GPA'] ?? '', // Ensure that you provide a default value if GPA is null
                        )





                      ],
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the circle and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end, // Align text to the right
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

                              color: Color(0xFF008DC9), fontFamily: 'Cairo'
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
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
