import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'WebSocket.dart';
import '../Chat/ChatController.dart';
import '../Chat/MessageWidget.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:web_socket_channel/io.dart';
import 'package:image_picker/image_picker.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MyHomePageSocket extends StatefulWidget {
  final WebSocketChannel channel;
  MyHomePageSocket({required this.channel});

  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}
class ChatSocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
      home: new MyHomePageSocket(
        channel: WebSocketChannel.connect(Uri.parse("ws://echo.websocket.org")),
      ),
    );
  }
}

class MyHomePageState extends State<MyHomePageSocket> {
  TextEditingController editingController = new TextEditingController();
  final messageList = <String>[];
  final messages = <String>[];
  bool isSending = false;
  TextEditingController messageTxt = TextEditingController();
  TextEditingController NameTxt = TextEditingController();

  String? previousResponse;
  late ChatController chatController;

  final List<XFile> listofFiles = [];
  bool dragging = false;
  Uint8List? galleryImage;
  final ImagePicker picker = ImagePicker();
  late String cameraImage = '';

  // Future<void> openCamera() async {
  //   final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (image != null) {
  //     final imageBytes = await image.readAsBytes();
  //     final encodedImageBytes = base64Encode(imageBytes);
  //
  //     // Send the image.
  //     await sendImage(encodedImageBytes);
  //
  //     setState(() {
  //       cameraImage = encodedImageBytes;
  //     });
  //   }
  // }
  // Future<void> sendImage(String imageBytes) async {
  //   final response = await http.post(
  //     Uri.parse('https://your-server.com/api/chat/send-image'),
  //     headers: {'Content-Type': 'application/json'},
  //     body: jsonEncode({
  //       'image': imageBytes,
  //     }),
  //   );
  //   if (response.statusCode == 200) {
  //     // Image was sent successfully.
  //   } else {
  //     // Handle error.
  //   }
  // }

  //webbbbbbbbbbbbbbb
  //final ImagePicker picker = ImagePicker();
  File? imageFile;
  String imagePath = '';
  List<File> sentImages = [];
  Future<void> openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
  Future<void> sendPhoto() async {
    if (imageFile != null) {
      final bytes = imageFile!.readAsBytesSync();
      channel.sink.add(bytes);
      setState(() {
        sentImages.add(imageFile!);
        imageFile = null;
      });
    }
  }
  void sendMyMessage() {
    String newMessage = messageTxt.text;
    setState(() {
      if (newMessage.isNotEmpty) {
        messages.add(newMessage);
        messageTxt.clear();
      }
    });
    widget.channel.sink.add(newMessage);
  }
  //)))))))))))))))))))))))))))))))))
  late WebSocketChannel channel;
  @override
  void initState() {
    super.initState();
    chatController = Get.put(ChatController());
    String url = "ws://your-websocket-server.com/ws";
    channel = WebSocketChannel.connect(Uri.parse(url));
  }
 // final FlutterSoundRecorder _soundRecorder = FlutterSoundRecorder();
  // bool _isRecording = false;
  // void _startRecording() async {
  //   try {
  //     await _soundRecorder.openRecorder();
  //   await _soundRecorder.startRecorder(toFile:"C:/Users/Developer/Desktop.m4a",);
  //     setState(() {
  //       _isRecording = true;
  //     });
  //   } catch (err) {
  //     print('Failed to start recording: $err');
  //   }
  // }
  // void _stopRecording() async {
  //   try {
  //     await _soundRecorder.stopRecorder();
  //     await _soundRecorder.closeRecorder();
  //     setState(() {
  //       _isRecording = false;
  //     });
  //   } catch (err) {
  //     print('Failed to stop recording: $err');
  //   }
  // }
  @override
  void dispose() {
    widget.channel.sink.close();
    editingController.dispose();
    channel.sink.close();
    super.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isWriting = false;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back_ios, size: 25),
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(width: 16),
                        CircleAvatar(
                          radius: 24,
                          child: Image.asset('assets/images/name.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Aya Essam',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: MessageWidget(
                      msg: messages[index],
                      user: "sender", // Replace this with the actual user name
                      time: DateTime.now(),
                      isSent: true,
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: -5.0,
                      blurRadius: 20.0,
                    ),
                  ],
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: openCamera,
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                      if (imageFile != null)
                        Image.file(
                          imageFile!,
                          width: 100,
                          height: 100,
                        ),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.end,
                          controller: messageTxt,
                          onChanged: (value) {
                            setState(() {
                              isWriting = value.isNotEmpty;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: ' .........  أبدا الكتابة  ',
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      new StreamBuilder(
                        stream: widget.channel.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            messageList.add(snapshot.data);
                            return new Container();
                          } else {
                            return new Center(child: Text(""));
                          }
                        },
                      ),
                      if (galleryImage != null)
                        Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Image.memory(
                            galleryImage!,
                            height: 250,
                            width: 250,
                          ),
                        ),

                      IconButton(
                        onPressed: () async {
                          if (imageFile != null) {
                            setState(() {
                              isSending = true;
                            });
                            await sendPhoto();
                            setState(() {
                              isSending = false;
                            });
                          } else {
                            sendMyMessage();
                          }
                        },
                        icon: isSending
                            ? CircularProgressIndicator() // Display a loading indicator while sending the image
                            : Icon(
                          Icons.send,
                          color: isWriting || imageFile != null ? Colors.grey.shade800 : Colors.grey.shade700,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ])
      ),
    );
  }
}