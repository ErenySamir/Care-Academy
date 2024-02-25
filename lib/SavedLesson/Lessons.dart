import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lessons extends StatefulWidget {
  @override
  State<Lessons> createState() {
    return LessonsState();
  }
}

class LessonsState extends State<Lessons> {
  int currentIndexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.navigate_before,
                          color: Color(0xFF008DC9)),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "الواحدات",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Center the row horizontally
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                    children: <Widget>[
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.09),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(width: 10),
                              Container(
                                width: 30.27,
                                height: 37.11,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Image.asset(
                                  'assets/images/security.png',
                                ),
                              ),
                              Text(
                                "الفيزياء النظرية",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                " دروس   7",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.05,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.09),
                          color: Colors.white70,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 30.27,
                                  height: 37.11,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/security.png',
                                  ),
                                ),
                                Text(
                                  "الفلزات و الافلزات",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  " دروس   7",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.05,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                    children: <Widget>[
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.09),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(width: 10),
                              Container(
                                width: 30.27,
                                height: 37.11,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Image.asset(
                                  'assets/images/security.png',
                                ),
                              ),
                              Text(
                                "الفلزات و الافلزات",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                " دروس   7",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.05,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.09),
                          color: Colors.white70,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 30.27,
                                  height: 37.11,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/security.png',
                                  ),
                                ),
                                Text(
                                  "             المعادلات",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  " دروس   7",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.05,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )                            ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                    children: <Widget>[
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.09),
                          color: Colors.white70,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(width: 10),
                              Container(
                                width: 30.27,
                                height: 37.11,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Image.asset(
                                  'assets/images/security.png',
                                ),                                    ),
                              Text(
                                "الفلزات و الافلزات",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                " دروس   7",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.05,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 155.08,
                        height: 154.78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.09),
                          color: Colors.white70,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 30.27,
                                  height: 37.11,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/security.png',
                                  ),                                    ),
                                Text(
                                  "الفلزات و الافلزات",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "7 دروس",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.05,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )                            ),
                      ),

                    ],
                  ),
                ],
              ),
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
            setState(() {
              currentIndexx = index;
            });
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
                    child: Image.asset(
                      'assets/images/user.png',
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "ملفى",
                    style: TextStyle(
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
                    child: Icon(Icons.online_prediction, color: Colors.grey, size: 25),),
                  SizedBox(height: 1),
                  Text(
                    "مباشر",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
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
                    child: Icon(Icons.collections_bookmark_outlined,
                        color: Colors.blueAccent, size: 25),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الوحدات",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
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
                    child: Image.asset(
                      'assets/images/home.png',
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
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
