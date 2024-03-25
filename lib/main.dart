import 'dart:convert';
import 'dart:io';

import 'package:careacademy/Chat/Camera.dart';
import 'package:careacademy/HomeWork/LessonApi.dart';
import 'package:careacademy/HomeWork/LessonPge.dart';
import 'package:careacademy/HomeWork/lessons.dart';
import 'package:careacademy/Login/SignIn.dart';
import 'package:careacademy/Login/SignUp.dart';
import 'package:careacademy/HomeWork/LessonsApi.dart';
import 'package:careacademy/Messeges/Chat.dart';
import 'package:careacademy/SavedLesson/Live.dart';
import 'package:careacademy/SavedLesson/VideoViewPage.dart';
import 'package:careacademy/Screens/Home.dart';
import 'package:careacademy/Screens/tv.dart';
import 'package:careacademy/Splach.dart';
import 'package:careacademy/UnitApi/UnitCallAPI.dart';
import 'package:careacademy/WebSocket/WebSocket.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

import 'WebSocket/ChatSocket.dart';
import 'Screens/classpage.dart';
import 'Screens/profile.dart';

Future<void> main() async {
  Duration? savedPosition;
  WidgetsFlutterBinding.ensureInitialized();
  //initializeApp بستخدمه دايما مع فايربييز
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyDjwUUfcc5_WU2xT98y8ZXYh8K_R0U6bnE",
  //         authDomain: "fir-firstproject-80449.firebaseapp.com",
  //         projectId: "fir-firstproject-80449",
  //         storageBucket: "fir-firstproject-80449.appspot.com",
  //         messagingSenderId: "274911957689",
  //         appId: "1:274911957689:web:cceb0b0845f5a9dba28168",
  //         measurementId: "G-RXJYDCE3B3"
  //     )
  // );
  // final wsUrl = Uri.parse('ws://echo.websocket.org');
  // final channel = WebSocketChannel.connect(wsUrl);
  // await channel.ready;
  // channel.stream.listen((message) {
  //   channel.sink.add('received!');
  //   channel.sink.close(status.goingAway);
  // });

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home:ChatSocket()));
}