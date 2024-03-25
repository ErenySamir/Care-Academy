import 'package:careacademy/Login/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Home.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash>
    with SingleTickerProviderStateMixin {
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
    Future.delayed(Duration(seconds: 2), () {
      navigateToPage();
    });

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

  Future<void> sharedPreferenceCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String email = prefs.getString('email') ?? '';
    print('shared email ${email}');
    if (email.isEmpty) {
      // Email is empty, navigate to the sign-up page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    } else {
      // Email is not empty, navigate to the home page
      // Replace HomeScreen with your actual home screen widget
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),

      );
    }
  }

  void navigateToPage() async {
    await sharedPreferenceCheck();
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.center,
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
            ],
          ),
        ),
      ),
    );
  }
}