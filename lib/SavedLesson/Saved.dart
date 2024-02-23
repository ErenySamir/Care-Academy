import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Container(
                    child: IconButton(
                      icon: Icon(Icons.navigate_before, color: Color(0xFF008DC9)),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "المشاهده لاحقاً",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the row horizontally
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                  children: <Widget>[
                    Container(
                      width: 168.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.09),
                        color: Colors.white,
                      ),
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
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...",
                              style: TextStyle(
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                      width: 168.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.09),
                        color: Colors.white,
                      ),
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
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                      width: 168.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.09),
                        color: Colors.white,
                      ),
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
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                      width: 168.12,
                      height: 217.71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.09),
                        color: Colors.white,
                      ),
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
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                              style: TextStyle(
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
                                      style: TextStyle(color: Colors.black, fontSize: 9),
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
        child: Expanded(
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
                    Icon(Icons.person_outlined, color: Colors.black, size: 25),
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
                    Icon(Icons.online_prediction, color: Colors.black, size: 25),
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
                    Icon(Icons.collections_bookmark_outlined,
                        color: Colors.black, size: 25),
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
                    Icon(Icons.home_outlined, color: Colors.blueAccent, size: 25),
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
      ),

    );
  }
}

