import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  @override
  State<HomeWork> createState() {
    return HomeWorkState();
  }
}

class HomeWorkState extends State<HomeWork> {
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
                        "الواجباتً",
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
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: 323,
                            height: 70,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white30,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "واجب الفيزياء الحديثة ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "تاريخ انتهاء التسليم:25/2/2024",
                                        style: TextStyle(
                                          color: Color(0xFF008DC9),
                                          fontSize: 9.61,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: 323,
                            height: 70,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white30,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.radio_button_unchecked,
                                  color: Colors.grey,
                                  size: 20.0,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "واجب الفيزياء الحديثة ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "تاريخ انتهاء التسليم:25/2/2024",
                                        style: TextStyle(
                                          color: Color(0xFF008DC9),
                                          fontSize: 9.61,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: 323,
                            height: 70,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white30,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.radio_button_unchecked,
                                  color: Colors.grey,
                                  size: 20.0,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "واجب الفيزياء الحديثة ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "تاريخ انتهاء التسليم:25/2/2024",
                                        style: TextStyle(
                                          color: Color(0xFF008DC9),
                                          fontSize: 9.61,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: 323,
                            height: 70,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white30,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.radio_button_unchecked,
                                  color: Colors.grey,
                                  size: 20.0,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "واجب الفيزياء الحديثة ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "تاريخ انتهاء التسليم:25/2/2024",
                                        style: TextStyle(
                                          color: Color(0xFF008DC9),
                                          fontSize: 9.61,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
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
