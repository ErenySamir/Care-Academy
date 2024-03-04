import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:careacademy/Screens/Home.dart';
import 'package:careacademy/Screens/profile.dart';
import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import '../widget/videowidgt.dart';
import 'menu.dart';
class v {
  final String name;
  final String subtitle;
  final String vurl;
  final String image;
  v( {required this.name, required this.subtitle, required this.vurl, required this.image});
}
class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  late VideoPlayerController controller;
  int currentIndexx = 0;
  bool isPlaying = false;

  List<v> videoss = [
    v(
        name: 'مايكل عاطف',
        image:"assets/images/strock.png",
        subtitle: 'الفيزياء الحديثة و نظرية العلماء فى تطور المركب',
        vurl: 'assets/videos/video.mp4'),

  ];
  void initState() {
    super.initState();
    // Initialize the VideoPlayerController
    controller = VideoPlayerController.asset("assets/videos/video.mp4");
    // Add listener to update state when controller is initialized
    controller.initialize().then((_) {
      setState(() {});
    });
  }

  loadVideoPlayer(String videoUrl) {
    controller = VideoPlayerController.asset(videoUrl);
    controller.initialize().then((_) {
      setState(() {});
      // Play the video after it has been initialized
      controller.play();
      setState(() {
        isPlaying = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Navigate back to the previous page
          },
          child: Image.asset(
            'assets/images/chevron-right.png',
            width: 24,
            height: 24,
          ),
        ),
        title: Center(
          child: Text(
            "الدروس",
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                    child: AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                  ),
                  if (!isPlaying)
                    Positioned.fill(
                      child: IconButton(
                        onPressed: () {
                          controller.play();
                          setState(() {
                            isPlaying = true;
                          });
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  if (isPlaying)
                    Positioned.fill(
                      child: IconButton(
                        onPressed: () {
                          controller.pause();
                          setState(() {
                            isPlaying = false;
                          });
                        },
                        icon: Icon(
                          Icons.pause,
                          size: 50,
                          color: Colors.white12,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Implement save functionality here
                    },
                    child: Image.asset(
                      'assets/images/strock.png',
                      width: 30,
                      height: 30,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "الفيزياء الحديثة",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    Icon(Icons.star, color: Color(0xFFFF9900), size: 17),
                    SizedBox(width: 2),
                    Icon(Icons.star, color: Color(0xFFFF9900), size: 17),
                    SizedBox(width: 2),
                    Icon(Icons.star, color: Color(0xFFFF9900), size: 17),
                    SizedBox(width: 2),
                    Icon(Icons.star, color: Color(0xFFFF9900), size: 17),
                    SizedBox(width: 2),
                    Text(
                      "(200)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "مقدمة الدرس",
                    style: TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  v section = videoss[0];
                  return
                    // Use GestureDetector to handle taps on video items
                    GestureDetector(

                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  /////////////////////////////////
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Implement save functionality here
                                        },
                                        child: Image.asset(
                                          'assets/images/strock.png',
                                          width: 30,
                                          height: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 10), // Adding some space between the image and text
                                      Text(
                                        section.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 8),
                                  Text(
                                    section.subtitle,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Cairo',
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              flex: 1,
                              child: VideoWidget(videoUrl: section.vurl),
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                    );

                },
              ),
            ),
           // SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "دروس ذات صلة",
                    style: TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: videoss.length,
                itemBuilder: (BuildContext context, int index) {
                  v section = videoss[index];
                  return
                    // Use GestureDetector to handle taps on video items
                    GestureDetector(

                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Implement save functionality here
                                        },
                                        child: Image.asset(
                                          'assets/images/strock.png',
                                          width: 30,
                                          height: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 10), // Adding some space between the image and text
                                      Text(
                                        section.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    section.subtitle,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Cairo',
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              flex: 1,
                              child: VideoWidget(videoUrl: section.vurl),
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                    );

                },
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: Container(
          width: 359,
          height: 66.22,
          // margin: EdgeInsets.only(top: 33.78, left: 35.5),
          // padding: EdgeInsets.fromLTRB(24.38, 12.61, 24.38, 12.61),
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
            ], // Add shadow
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // Add space between icons
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
                child: Column(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(
                        'assets/images/fluent_live-20-regular.png',
                      ),
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
                child: Column(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(
                        'assets/images/BookBookmark1.png',
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
              ),
            ],
          ),
        )
    );
  }
}

