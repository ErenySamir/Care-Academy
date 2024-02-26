import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'Home.dart';

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
        title: Center(child: Text("ملفى",style: TextStyle( fontFamily: 'Cairo',
    fontSize: 22,
    fontWeight: FontWeight.bold,))),

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
                    fontWeight: FontWeight.bold, fontFamily: 'Cairo',color: Color(0xFF6C6A6A
                  )
                  ),
                ),
              ),
              Center(
                child: Text(
                  'الصف الثالث الثانوى',
                  style: TextStyle(
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
                        fontSize: 20,
                       fontFamily: 'Cairo'
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the image and text
                    Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.grey, // You can adjust the color as needed
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'البريد الالكترونى', // Arabic name, replace with your text
                      style: TextStyle(
                        fontSize: 20,
                         fontFamily: 'Cairo'
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the image and text
                    Icon(
                      Icons.email,
                      size: 20,
                      color: Colors.grey, // You can adjust the color as needed
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'رقم التليفون', // Arabic name, replace with your text
                      style: TextStyle(
                        fontSize: 20,
                         fontFamily: 'Cairo'
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the image and text
                    Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.grey, // You can adjust the color as needed
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Container(
                color: Color(0xFFF6F4FE),
                padding: EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الصف الدراسى', // Arabic name, replace with your text
                          style: TextStyle(
                            fontSize: 20,
                           fontFamily: 'Cairo'
                          ),
                        ),
                        SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                          child: Icon(
                            Icons.school_outlined,
                            size: 30, // Adjust the size of the icon as needed
                            color: Colors.grey, // Adjust the color of the icon as needed
                          ),
                        )

                      ],
                    ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 40,
                          color: Color(0xFF011A51), // You can adjust the color as needed
                        ),



                  ],
                ),
              ),
            ],
          ),
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