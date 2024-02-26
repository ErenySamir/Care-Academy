import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  final List<Map<String, String>> examsData = [
    {
      'title': 'أمتحان على الوحدة الأولى',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '96%',
      'GPA':'ممتاز'
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
      'Percentage': '',
      'GPA':''
    },
    {
      'title': 'أمتحان على الوحدة الرابعة',
      'deadline': 'تاريخ انتهاء التسليم: 25/2/2024',
      'Percentage': '',
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
        title: Center(
          child: Text(
            "الامتحانات",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold, fontFamily: 'Cairo'
            ),
          ),
        ),
      ),
      body: ListView.builder(
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
                  width: 60, // Width of the circle
                  height: 60, // Height of the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Color of the circle
                    border: Border.all(
                      color: Colors.grey, // Color of the border
                      width: 2, // Width of the border
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        examsData[index]['GPA'] ?? '',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          color: Color(0xFF019147), // Color of the "ممتاز" text
                        ),
                      ),
                      Text(
                  examsData[index]['Percentage'] ?? '', // Percentage text
                        style: TextStyle(fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF019147), // Color of the percentage text
                        ),
                      ),

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
                          fontSize: 20,
                          fontWeight: FontWeight.bold, fontFamily: 'Cairo'
                        ),
                      ),
                      Text(
                        examsData[index]['deadline'] ?? '',
                        style: TextStyle(
                          fontSize: 12,
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
    );
  }
}
