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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 44.0,
                    ),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      color: Color(0xFF008DC9), // Background color
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {
                          // Add your action here for the three dots
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 121.0, top: 44),
                    child: Container(
                      width: 118,
                      height: 24,
                      alignment: Alignment.center,
                      child: Text(
                        "المشاهدة لاحقاً",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
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
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
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
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 359,
        height: 76.22,
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
                  SizedBox(height: 2),
                  Text(
                    "ملفى",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
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
                  SizedBox(height: 2),
                  Text(
                    "مباشر",
                    style: TextStyle(color: Colors.black, fontSize: 9),
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
                  SizedBox(height: 2),
                  Text(
                    "الوحدات",
                    style: TextStyle(color: Colors.black, fontSize: 9),
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
                  SizedBox(height: 2),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.black, fontSize: 10),
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
