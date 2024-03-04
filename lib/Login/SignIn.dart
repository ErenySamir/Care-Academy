import 'package:careacademy/Login/OTP.dart';
import 'package:careacademy/Login/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Screens/Home.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final List<FocusNode> _focusNodes = [
  FocusNode(),];
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
    return Scaffold(
        resizeToAvoidBottomInset: false, // Avoids resizing the layout when the keyboard appears
        backgroundColor: CupertinoColors.white,
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Container(
              child: SizedBox(
                height: constraints.maxHeight / 1.3,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight / 7.7,
                          margin: EdgeInsets.only(top: 50.43, left: 76.95, right: 28),
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
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 8.37),
                              Text(
                                '👋في منصة الأستاذ مايكل عاطف',
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
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18.0,left: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'رقم التليفون',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 52.82,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                    color: Color(0xFFF6F4FE),
                                  ),
                                  alignment: Alignment.centerRight,
                                  // Align the container to the right
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(right: 15.0),
                                            child: TextField(
                                              //normal number of phone
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(12),
                                              ],

                                              keyboardType: TextInputType.number,
                                              textAlign: TextAlign.right,
                                              decoration: InputDecoration(
                                                hintText: 'رقم التليفون',
                                                hintStyle: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  color: Colors.grey,
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              onChanged: (value) {
                                                // if (value.isNotEmpty) {
                                                //   FocusScope.of(context).nextFocus();
                                                // }
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 20.0),
                                        // Adjust margin from right
                                        child: Icon(
                                          color: Colors.grey.shade400,
                                          Icons.phone,
                                          size: 21,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                  
                                Padding(
                                  padding: const EdgeInsets.only(top: 38.0,left: 40.46,right: 40.46),
                                child:  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                          width: 300,
                                          height: 66,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 22.0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                ),
                                                backgroundColor: Color(
                                                    0xFF008DC9), // Background color
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => OTP()),
                                                );
                                              },
                                              child: Text(
                                                'تسجيل دخول',
                                                style: TextStyle(color: Colors.white,fontFamily: 'Cairo',fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 280,
                                    height: 35.12,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUp()),
                                              );
                                            });
                                          },
                                          child: Text(
                                            'أنشاء حساب',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: 12.96,
                                              color: Color(0xFF008DC9), // Background color
                                              fontWeight: FontWeight.normal,
                                            ),
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
                    ),
                                 // ],
                  
                                ],
                              ),

            ),
      ),
      )]);}),
    );
  }
}