import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'Home.dart';
import 'menu.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() {
    return profileState();
  }
}
class profileState extends State<profile>{
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
            "ملفى",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Cairo'
            ),
          ),
          centerTitle: true, // Center the title horizontally
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/yara.jpg'),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'يارا عماد',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold, fontFamily: 'Cairo',color: Color(0xFF6C6A6A)
                  ),
                ),
              ),
              Center(
                child: Text(
                  'الصف الثالث الثانوى',
                  style: TextStyle(
                    color: Color(0xFF6C6A6A),
                    fontSize: 18,
                      fontFamily: 'Cairo'
                  ),
                ),
              ),
              SizedBox(height: 28,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F4FE),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اسم الطالب', // Arabic name, replace with your text
                      style: TextStyle(
                          color: Color(0xFFC3C1C1),

                        fontSize: 20,
                       fontFamily: 'Cairo'
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the image and text
                    Container(
                      height: 21,
                      width: 21,
                      margin: EdgeInsets.only(right: 20.0),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.shade300,
                          BlendMode.modulate,
                        ),
                        child: Image.asset(
                          'assets/images/user.png',
                          color: Color(0xFFD9D9D9),

                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F4FE),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'البريد الالكترونى', // Arabic name, replace with your text
                      style: TextStyle(
                          color: Color(0xFFC3C1C1),

                        fontSize: 20,
                         fontFamily: 'Cairo'
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the image and text
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      // Adjust margin from right
                      child: Icon(
                        color: Colors.grey.shade400,
                        Icons.mail_outline,
                        size: 21,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F4FE),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center, // Align icon and text in the same line
                  children: [
                    Text(
                      'رقم التليفون', // Arabic name, replace with your text
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFC3C1C1),
                        fontFamily: 'Cairo',
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the text and icon
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      // Adjust margin from right
                      child: Icon(
                        Icons.phone,
                        color: Colors.grey.shade400,
                        size: 21,
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F4FE),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'الصف الدراسى',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFC3C1C1),
                            fontFamily: 'Cairo',
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            Icons.school_outlined,
                            color: Colors.grey.shade400,
                            size: 21,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 21,
                        color: Color(0xFF011A51),
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
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
