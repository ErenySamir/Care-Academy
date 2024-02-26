import 'package:careacademy/Login/OTP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    // Define animation controller
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the duration as needed
    );
    Future.delayed(Duration(seconds: 2), () {});

    // Define animation
    animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: CupertinoColors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 265.75,
                      height: 94.75,
                      margin: EdgeInsets.only(top: 140.43, left: 76.95),
                      padding: EdgeInsets.all(8.37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'مرحباً بك',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 27.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.37),
                          Text(
                            'في منصة الأستاذ مايكل عاطف👋',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 54.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 142,
                        height: 74.72,
                        child: AnimatedBuilder(
                          animation: animationController,
                          builder: (context, child) {
                            return Transform.scale(
                              scale: animation.value,
                              child: Image.asset('assets/images/Logo.png'),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerRight,

                              child:  Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'رقم التليفون',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                          Container(
                            color: Color(0xFFF6F4FE),
                            alignment: Alignment.centerRight, // Align the container to the right
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: const TextField(
                                      textAlign: TextAlign.right, // Align the text field content to the right
                                      decoration: InputDecoration(
                                        hintText: 'رقم التليفون',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Cairo',
                                        ),
                                        border: InputBorder.none, // Remove the default border
                                      ),
                                    ),

                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20.0), // Adjust margin from right
                                  child: Icon(
                                    color: Colors.grey,
                                    Icons.phone,
                                    size: 21,
                                  ),
                                ),
                              ],
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: 318,
                                    height: 70,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 28.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF008DC9), // Background color
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => OTP()),
                                          );
                                        },
                                        child: Text(
                                          ' تسجيل دخول',
                                          style: TextStyle(color: Colors.white,fontFamily: 'Cairo',),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.only(right: 8.0, top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'أنشاء حساب',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 12.96,
                                        color: Color(0xFF008DC9), // Background color
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      ' هل لديك حساب ؟',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 12.96,
                                        color: Colors.grey,
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
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
