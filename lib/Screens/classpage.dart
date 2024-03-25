
import 'package:careacademy/SavedLesson/VideoViewPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import '../widget/videowidgt.dart';
import 'Home.dart';
import 'menu.dart';
class v {
  final String name;
  final String subtitle;
  final String vurl;
  final String image;

  v(
      {required this.name, required this.subtitle, required this.vurl, required this.image});
}
class ClassPage extends StatefulWidget {
  final Future<void> initVideoFuture;

  ClassPage({required this.initVideoFuture});

  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  late VideoPlayerController _videoController;
  late SharedPreferences _prefs;
  late double _savedPosition;
  Duration? currentPosition;
  bool _isInitialized = false;
  bool _isBookmarked = false;
  bool _isBookmarked2=false;
  bool _isBookmarked3=false;
  bool _isBookmarked4=false;
  bool _isPlaying = false;
  List<v> videoss = [
    v(
        name: 'مايكل عاطف',
        image: "assets/images/BookmarkSimple.png",
        subtitle: 'الفيزياء الحديثة و نظرية العلماء فى تطور المركب',
        vurl: 'assets/videos/video.mp4'),


  ];
  @override
  void initState() {
    super.initState();
    widget.initVideoFuture.then((_) {
      _initializeVideo();
    });
  }

  Future<void> _initializeVideo() async {
    _prefs = await SharedPreferences.getInstance();
    _savedPosition = _prefs.getDouble('videoPosition') ?? 0;

    _videoController = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_) {
        _videoController.seekTo(Duration(seconds: _savedPosition.toInt()));
        setState(() {
          _isInitialized = true;
        });
      });

    _videoController.addListener(() {
      if (_videoController.value.isPlaying) {
        _savePosition(_videoController.value.position.inSeconds.toDouble());
      }
    });
  }

  Future<void> _savePosition(double position) async {
    await _prefs.setDouble('videoPosition', position);
  }

  @override
  void dispose() {
    _savePosition(_videoController.value.position.inSeconds.toDouble());
    _videoController.dispose();
    super.dispose();
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
            // Replace with your image asset path
            width: 24, // Adjust the width of the image
            height: 24, // Adjust the height of the image
          ),
        ),
        title: Text(
          "الدروس",
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Cairo'
          ),
        ),
        centerTitle: true, // Center the title horizontally
      ),
      body: _isInitialized
          ? SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_isPlaying) {
                          _videoController.pause();
                        } else {
                          _videoController.play();
                        }
                        _isPlaying = !_isPlaying;
                      });
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: AspectRatio(
                        aspectRatio: _videoController.value.aspectRatio,
                        child: VideoPlayer(_videoController),
                      ),
                    ),
                  ),
                  if (!_isPlaying)
                    Positioned.fill(
                      child: IconButton(
                        onPressed: () {
                          _videoController.play();
                          setState(() {
                            _isPlaying = true;
                          });
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  if (_isPlaying)
                    Positioned.fill(
                      child: IconButton(
                        onPressed: () {
                          _videoController.pause();
                          setState(() {
                            _isPlaying = false;
                            // Save the current position before navigating to another page
                            _savedPosition = _videoController.value.position.inSeconds.toDouble();
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Implement save functionality here
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isBookmarked = !_isBookmarked;
                          });
                        },
                        child: Icon(
                          _isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                          size: 27,
                          color: _isBookmarked ? Colors.black : Color(0xFF000000),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(

                    child: Text(
                      "الفيزياء الحديثة",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),

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
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 2),


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
                            // fontWeight: FontWeight.normal,
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
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "مقدمة الوحده",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF181A20),
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 1,),
            InkWell(
              onTap:(){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoView()),
                  );
                });},
              child: Container(
                height: 120, // Adjust this value to change the height of the content

                child: Column(
                  children: videoss.map((section) {
                    return GestureDetector(
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
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(


                                            onTap: (){
                                              setState(() {
                                                _isBookmarked2 = !_isBookmarked2;
                                              });
                                            },
                                            child: Icon(
                                              _isBookmarked2 ? Icons.bookmark : Icons.bookmark_border_outlined,

                                              size: 25, // Adjust the size of the icon as needed
                                              color: _isBookmarked2 ? Colors.black : Color(0xFF6C6A6A),

                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      // Adding some space between the image and text
                                      Text(
                                        section.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF3F3F3F),
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
                            SizedBox(
                              width: 130,
                              height: 100,
                              // Adjust this value to change the width of the video
                              child: VideoWidget(
                                videoUrl: section.vurl,
                                initialPosition: currentPosition, // Pass the currentPosition variable here
                              ),
                            ),
                            // SizedBox(width: 8),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 5,),
            SizedBox(height: 5,),
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "دروس ذات صلة",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF181A20),
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120, // Adjust this value to change the height of the content

              child: InkWell(
    onTap:(){
    setState(() {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => VideoView()),
    );
    });},
                child: Column(
                  children: videoss.map((section) {
                    return GestureDetector(
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
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(


                                            onTap: (){
                                              setState(() {
                                                _isBookmarked3 = !_isBookmarked3;
                                              });
                                            },
                                            child: Icon(
                                              _isBookmarked3 ? Icons.bookmark : Icons.bookmark_border_outlined,

                                              size: 25, // Adjust the size of the icon as needed
                                              color: _isBookmarked3 ? Colors.black : Color(0xFF6C6A6A),

                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      // Adding some space between the image and text
                                      Text(
                                        section.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF3F3F3F),
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
                            SizedBox(
                              width: 130,
                              height: 100,
                              // Adjust this value to change the width of the video
                              child: VideoWidget(
                                videoUrl: section.vurl,
                              ),
                            ),
                            // SizedBox(width: 8),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 120, // Adjust this value to change the height of the content

              child: InkWell(
                  onTap:(){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoView()),
                      );
                    });
                  } ,
                child: Column(
                  children: videoss.map((section) {
                    return GestureDetector(
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
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: (){
                                              setState(() {
                                                _isBookmarked4 = !_isBookmarked4;
                                              });
                                            },
                                            child: Icon(
                                              _isBookmarked4 ? Icons.bookmark : Icons.bookmark_border_outlined,

                                              size: 25, // Adjust the size of the icon as needed
                                              color: _isBookmarked4 ? Colors.black : Color(0xFF6C6A6A),

                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      // Adding some space between the image and text
                                      Text(
                                        section.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF3F3F3F),
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
                            SizedBox(
                              width: 130,
                              height: 100,
                              // Adjust this value to change the width of the video
                              child: VideoWidget(
                                videoUrl: section.vurl,
                                initialPosition: currentPosition, // Pass the currentPosition variable here

                              ),
                            ),
                            // SizedBox(width: 8),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 5,),
          ],
        ),
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
      bottomNavigationBar: Container(
        width: 359,
        height: 66.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),

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
      ),
    );
  }
}

