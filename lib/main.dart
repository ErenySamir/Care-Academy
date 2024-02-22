import 'package:careacademy/HomeWork/HomeWork.dart';
import 'package:careacademy/Login/OTP.dart';
import 'package:careacademy/Login/SignIn.dart';
import 'package:careacademy/Login/SignUp.dart';
import 'package:careacademy/SavedLesson/Saved.dart';
import 'package:careacademy/Splach.dart';
import 'package:flutter/material.dart';

import 'SavedLesson/Live.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Live(),
      )
  );
}
