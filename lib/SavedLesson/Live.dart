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
                        "بث مباشر",
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
      Stack(
        alignment: Alignment.center,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Icon(Icons.play_circle_outlined,size: 54,color: CupertinoColors.white,

              ),
            ],
          ),
        ],
      ),
            Align(
              child: Container(
                width: 312.67,
                height: 31.32,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Text(
                  textAlign: TextAlign.end,
                  "الفيزياء الحديثة",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.89,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 110,
                        height: 20,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            backgroundColor: Color(0xFF4DC9D1),),
                            onPressed: () {},
                          child: Text(
                            "الفيزياء الحديثة",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 9.12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Color(0xFF008DC9),
                        ),
                        onPressed: () {},
                        child: Text(
                          "الفيزياء الحديثة",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 9.12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.black,
                        size: 14.6,
                      ),
                      SizedBox(height: 2),
                      Text(
                        "5 س 21 د",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 9.12,
                        ),
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
                    Icon(Icons.online_prediction, color: Colors.blueAccent, size: 25),
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
                    Icon(Icons.home_outlined, color: Colors.black, size: 25),
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
