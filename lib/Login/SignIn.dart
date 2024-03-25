import 'dart:convert';

import 'package:careacademy/Login/OTP.dart';
import 'package:careacademy/Login/SignUp.dart';
import 'package:careacademy/Model/CheckLogIn.dart';
import 'package:careacademy/Reposatory/CheckLogInRepo.dart';
import 'package:careacademy/Reposatory/LoginRepo.dart';
import 'package:careacademy/Reposatory/SchoolYearRepo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/DataRepoModel.dart';
import '../Reposatory/DataReposatory.dart';
import '../Screens/Home.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}


class SignInState extends State<SignIn> with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  profilemodel?
      responseLetters; // used to store the response containing letters fetched from an API.
  late Animation<double> animation;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
  ];

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
    fetchData();
  }

  var Phone = '';

  Future<void> fetchData() async {
    responseLetters = await LoginRepo().LoginStudent();
    print("responseWords : $responseLetters");
    setState(() {});
  }

  String PhoneErrorText = '';

  void validatePhone(String value) {
    if (value.isEmpty) {
      setState(() {
        PhoneErrorText = '*ادخل رقم الهاتف ';
      });
    } else if (value.length < 11) {
      setState(() {
        PhoneErrorText = '* يجب أن يكون رقم الهاتف 11 رقمًا';
      });
    } else {
      setState(() {
        PhoneErrorText = ''; // No error message for 3-letter names
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  //to calllll apiiiiiiiiiiiiiiii
  final prefs = SharedPreferences.getInstance();
  final PhoneController = TextEditingController();

  // Future<void> LoginStudent() async {
  //   try {
  //     String studentId = '1'; // Change this to your actual student ID
  //     // Construct the request body
  //     Map<String, dynamic> requestBody = {
  //       "phone_v": PhoneController.text,
  //       "token_id_v": studentId,
  //       // You can add phone number here if you have it
  //     };
  //     // Make the HTTP POST request to the API
  //     final response = await http.post(
  //       Uri.parse(
  //           'https://petrasoftware.co.uk/care_academy_api/student_login.php'),
  //       body: requestBody,
  //     );
  //     print(requestBody);
  //     // Check if the request was successful
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('تم التسجيل ', textAlign: TextAlign.center,style: TextStyle(
  //               fontFamily: 'Cairo',
  //               fontSize: 15.0,
  //               fontWeight: FontWeight.normal
  //           ),),
  //           backgroundColor: Colors.green,
  //         ),
  //       );
  //       print('Login success');
  //       print('Phone ${PhoneController.text}');
  //     } else {
  //       String errorMessage = response.body; // Assuming the error message is returned in the response body
  //       print('Failed to update student data: ${response.statusCode}');
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(errorMessage, textAlign: TextAlign.center,style: TextStyle(
  //               fontFamily: 'Cairo',
  //               fontSize: 15.0,
  //               fontWeight: FontWeight.normal
  //           ),),
  //           backgroundColor: Colors.red,
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print('Error updating student data: $e');
  //   }
  // }


  final dio = Dio(BaseOptions(baseUrl: "https://petrasoftware.co.uk/care_academy_api"));
  Future<dynamic> LoginStudent() async {
    // Check internet connectivity
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      // Not connected to any network
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'لا يوجد اتصال بالإنترنت',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }

    // Prepare user data
    final Map<String, dynamic> userData = {
      "token_id_v": "", // Placeholder value
      "phone_v": PhoneController.text,
      "os_version_v": "",
      "device_type_v": "",
      "app_version_v": "",
      "fcm_token_id_v": "",
    };

    final response = await dio.post(
      '/student_login.php',
      data: userData,
    );

    print("Data entered: " + response.data.toString());

    if (response.statusCode == 200) {
      // Retrieve the student ID from the API response
      final studentId = response.data['studentId'];

      // Update the user data with the retrieved student ID
      userData['token_id_v'] = studentId;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'تم التسجيل بنجاح',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.green,
        ),
      );

      // Check every item in the error message and print its corresponding message from the API
      final message = response.data['message'];
      print('Phone ${PhoneController.text}');
      print(message);
      PhoneController.text;
      // Show msg from the API
      print(response.data);

      print('Sign In is success');
      print('Phone ${PhoneController.text}');
      print(response.data);

      return response.data;
    } else {
      // Check every item in the error message and print its corresponding message from the API
      Map<String, dynamic> errorData = jsonDecode(response.data);
      errorData.forEach((key, value) {
        if (value is String) {
          print('$key: $value');
        }
      });
      print(response.data);

      // Show the Snackbar with red color and "Try Again" text
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'برجاء المحاولة مرة أخرى',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }
  }
  //}
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Exit the application when back button is pressed
          SystemNavigator.pop();
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          // Avoids resizing the layout when the keyboard appears
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
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'مرحباً بك',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 27.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //SizedBox(height: 8.37),
                            Text(
                              '👋في منصة الأستاذ مايكل عاطف',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'رقم التليفون',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
                                          controller: PhoneController,
                                          cursorColor: Colors.blueAccent,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(
                                                11),
                                          ],
                                          textInputAction: TextInputAction.done,
                                          //to hide number when finished                                                   keyboardType:
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
                                            setState(() {
                                              Phone = value;
                                              validatePhone(value);
                                            });
                                          },
                                          onEditingComplete: () async {
                                            // Move focus to the next text field
                                            FocusScope.of(context).nextFocus();
                                            SharedPreferences prefs =
                                                await SharedPreferences
                                                    .getInstance();
                                            prefs.setString('phone', Phone);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20.0),
                                    child: Icon(
                                      color: Colors.grey.shade400,
                                      Icons.phone,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (PhoneErrorText.isNotEmpty)
                              Text(
                                textAlign: TextAlign.end,
                                PhoneErrorText,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Cairo',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(
                              child: SizedBox(
                                width: 330,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor:
                                        Color(0xFF008DC9), // Background color
                                  ),
                                  onPressed: () async {
                                    // Check internet connectivity
                                    final connectivityResult = await Connectivity().checkConnectivity();
                                    if (connectivityResult == ConnectivityResult.none) {
                                      // I am not connected to any network.
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'لا يوجد اتصال بالإنترنت',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                      return;
                                    }

                                    if (Phone.isEmpty) {
                                      setState(() {
                                        PhoneErrorText = ' يجب ادخال رقم الهاتف *';
                                      });
                                    } else if (Phone.length < 11) {
                                      setState(() {
                                        PhoneErrorText = '* يجب أن يكون رقم الهاتف 11 رقمًا';
                                      });
                                    } else {
                                      LoginStudent();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => OTP()),
                                      );
                                    }
                                  },
                                  child: Text(
                                    'تسجيل دخول',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 33.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()),
                                        );
                                      });
                                    },
                                    child: Text(
                                      'أنشاء حساب',
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
                          ]),
                    ),
                  ),
                ),
              ],
            );
          }),
        ));
  }
}
