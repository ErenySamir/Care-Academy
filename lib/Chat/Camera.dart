import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final WebSocketChannel channel = WebSocketChannel.connect(
    Uri.parse("wss://socketsbay.com/wss/v2/1/demo/"),
  );
  final ImagePicker picker = ImagePicker();
  File? imageFile;
  String imagePath = '';

  Future<void> openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  void sendPhoto() {
    if (imageFile != null) {
      // Send the image as a byte array.
      channel.sink.add(imageFile!.readAsBytesSync());

      // Listen for the image data from the server.
      channel.stream.listen(
            (data) {
          // Update the image state with the received image data.
          setState(() {
            imageFile = File(imagePath);
          });
        },
      );

      setState(() {
        imageFile = null;
        imagePath = '';
      });
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(88.0),
          child: Column(
            children: [
              IconButton(
                onPressed: openCamera,
                icon: Icon(Icons.camera_alt),
              ),
              if (imageFile != null)
                Image.file(
                  imageFile!,
                  width: 100,
                  height: 100,
                ),
              ElevatedButton(
                onPressed: sendPhoto,
                child: Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}