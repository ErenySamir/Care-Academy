import 'package:careacademy/Screens/Home.dart';
import 'package:careacademy/Screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'menu.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() {
    return AboutState();
  }

}
class AboutState extends State<About>{
  int currentIndexx = 0;

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
          title: Text(
            "عن المنصة",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Cairo'
            ),
          ),
          centerTitle: true, // Center the title horizontally
        ),

        body:  ListView(
          children: [
            SizedBox(height: 30), // Added space before the image
            Center(
              child: Image.asset(
                'assets/images/Logo.png',
                width: 200, // Take all available width
                fit: BoxFit.fitWidth, // Adjust the image content
              ),
            ),
            SizedBox(height: 30), // Added space after the image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding to the text
              child: Text(
                'تطبيق منصة تعليمية يعتبر جسراً بين المعلمين والطلاب، حيث يوفر مجموعة متنوعة من المواد التعليمية والدروس القصيرة والاختبارات لمساعدة الطلاب على فهم المواد بشكل أفضل وتحسين أدائهم الأكاديمي. يتيح التطبيق أيضاً التواصل المباشر بين الطلاب والمعلمين من خلال دردشات حية أو نظام تعليقات، مما يساعد على حل الاستفسارات وتبادل الملاحظات. يمكن للتطبيق أيضاً تتبع تقدم الطلاب وتقديم تقارير شاملة عن أدائهم، ويوفر ميزات تفاعلية مثل المنتديات والمجموعات الدراسية لتعزيز التعلم التعاوني.',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 18,

                ),
                textAlign: TextAlign.center, // Center the text
              ),
            ),
          ],
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
