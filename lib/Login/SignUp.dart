import 'package:careacademy/Login/SignIn.dart';
import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
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
                    padding: EdgeInsets.only(top: 250, left: 21.46),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 317.08,
                        height: 690.95,
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'أسم الطالب',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xFFF6F4FE),
                              alignment: Alignment.centerRight,
                              // Align the container to the right
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: const TextField(
                                        textAlign: TextAlign.right,
                                        // Align the text field content to the right
                                        decoration: InputDecoration(
                                          hintText: 'أسم الطالب',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Cairo',

                                          ),
                                          border: InputBorder
                                              .none, // Remove the default border
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    // Adjust margin from right
                                    child: Icon(
                                      color: Colors.grey,
                                      Icons.person_outline_outlined,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'البريد الألكترونى',
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
                              alignment: Alignment.centerRight,
                              // Align the container to the right
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: const TextField(
                                        textAlign: TextAlign.right,
                                        // Align the text field content to the right
                                        decoration: InputDecoration(
                                          hintText: 'البريد الألكترونى',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Cairo',

                                          ),
                                          border: InputBorder
                                              .none, // Remove the default border
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    // Adjust margin from right
                                    child: Icon(
                                      color: Colors.grey,
                                      Icons.mail_outline,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xFFF6F4FE),
                              alignment: Alignment.centerRight,
                              // Align the container to the right
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: const TextField(
                                        textAlign: TextAlign.right,
                                        // Align the text field content to the right
                                        decoration: InputDecoration(
                                          hintText: 'رقم التليفون',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Cairo',

                                          ),
                                          border: InputBorder
                                              .none, // Remove the default border
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    // Adjust margin from right
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
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'الصف الدراسى',
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
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: DropdownButton<String>(
                                      hint: Text(' الصف الدراسى ',style: TextStyle(
                                        fontFamily: 'Cairo',

                                      ),),
                                      items: [],
                                      onChanged: (Object? value) {},
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Icon(
                                      color: Colors.grey,
                                      Icons.school,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 12.56),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: 318,
                                    height: 56.12,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 28.0),
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
                                            MaterialPageRoute(
                                                builder: (context) => Home()),
                                          );
                                        },
                                        child: Text(
                                          'أنشاء حساب',
                                          style: TextStyle(
                                              fontFamily: 'Cairo',

                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(right: 8.0, top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignIn()),
                                              );
                                            });
                                          },
                                          child: Text(
                                            ' تسجيل الدخول',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Cairo',

                                              fontSize: 12.9,
                                              color: Color(0xFF008DC9),
                                              // Background color
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' هل لديك حساب ؟',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',

                                            fontSize: 15.0,
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
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
