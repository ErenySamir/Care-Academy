import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../HomeWork/lessons.dart';
import '../Screens/Home.dart';
import '../Screens/profile.dart';

class Live extends StatefulWidget {
  @override
  State<Live> createState() {
    return LiveState();
  }
}

class LiveState extends State<Live> {
  int currentIndexx = 0;

//use video
  late VideoPlayerController controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Navigate back to the previous page
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Image.asset(
              'assets/images/chevron-right.png',
              // Replace with your image asset path
              width: 24, // Adjust the width of the image
              height: 24, // Adjust the height of the image
            ),
          ),
        ),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Text("بث مباشر",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
        )),
      ),
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Center the column vertically
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    Center(
                      child: controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: controller.value.aspectRatio,
                              child: VideoPlayer(controller),
                            )
                          : CircularProgressIndicator(),
                    ),
                    Positioned(
                      top: 80,
                      right: 180,
                      child: Center(
                        child: Container(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                controller.value.isPlaying
                                    ? controller.pause()
                                    : controller.play();
                              });
                            },
                            child: Icon(
                              controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 44.0, left: 18, right: 18),
                child: Align(
                  child: Container(
                    width: 490.67,
                    height: 31.32,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Text(
                      "الفيزياء الحديثة                    ",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontSize: 21.89,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
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
                                fontFamily: 'Cairo',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 9.12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          width: 110,
                          height: 20,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor: Color(0xFF4DC9D1),
                            ),
                            onPressed: () {},
                            child: Text(
                              "الفيزياء الحديثة",
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 9.12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 444,
                  height: 77,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.grey.shade700,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.grey.shade700,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "..... فى ماده الفيزياء و القوانين ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.grey.shade700,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18),
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
                              fontFamily: 'Cairo',
                              color: Colors.grey.shade700,
                              fontSize: 9.12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
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
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 2,
          //     blurRadius: 5,
          //     offset: Offset(0, 3),
          //   ),
          // ],
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
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => profile()),
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
                      fontSize: 10.90,
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
                              MaterialPageRoute(builder: (context) => Live()),
                            );
                          });
                        },
                        child: Icon(Icons.online_prediction,
                            color: Colors.blueAccent, size: 25)),
                  ),
                  SizedBox(height: 1),
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
                            MaterialPageRoute(builder: (context) => Lessons()),
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.90,
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
                            MaterialPageRoute(builder: (context) => Home()),
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.90,
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
