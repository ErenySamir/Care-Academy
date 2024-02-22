import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Live extends StatefulWidget {
  @override
  State<Live> createState() {
    return LiveState();
  }
}

class LiveState extends State<Live> {
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
                        "بث مباشر",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 8),
                    Container(
                      width: 312.12,
                      height: 448.71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.09),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 10),
                            SizedBox(width: 10), // Adjust the spacing between the columns
                            Stack(
                              children: [
                                Container(
                                  width: 312.91,
                                  height: 209.32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21.89),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/live.png',
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Icon(
                                    Icons.settings,
                                    color: Colors.greenAccent,
                                    size: 24,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.greenAccent,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              width: 312.67,
                              height: 31.32,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Text(
                                "الفيزياء الحديثة",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.89,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xFF4DC9D1),),
                                          onPressed: (){},
                                          child: Text("الفيزياء الحديثة",
                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 11),
                                          )),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF008DC9),),
                                          onPressed: (){},
                                          child: Text("الفيزياء الحديثة",
                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 11),
                                          )),
                                    ],
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: 312,
                              height: 57,
                              child: Text(
                                "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين.....",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.alarm,
                                        color: Colors.black, size: 14.6),
                                    SizedBox(height: 2),
                                    Text(
                                      "5 س 21 د",
                                      style: TextStyle(color: Colors.grey.shade700, fontSize: 9.12),
                                    ),


                                  ],
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            ]
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
                  Icon(Icons.online_prediction, color: Colors.blueAccent, size: 25),
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
                  Icon(Icons.home_outlined, color: Colors.black, size: 25),
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
