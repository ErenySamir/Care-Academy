import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChatProfile.dart';
import 'InputField.dart';
import 'Message.dart';
import 'MessageBubble.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> messages = [
    Message(text: 'السؤال الاول ايه', isSender: true), // Message 1
    Message(text: 'مش عارف', isSender: false),
    Message(text: 'طيب ميعاد الكورس امتى؟', isSender: false), // Message 7
    Message(text: 'انا بقى اللى مش عارف', isSender: true), // Message 9
    Message(text: 'طيب فل', isSender: true), // Message 7
  ];
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChatProfile(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Align(
                    alignment: message.isSender
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: MessageBubble(
                      message: message.text,
                      isSender: message.isSender,
                      color: message.isSender ? Colors.black : Colors.white,
                    ),
                  );
                },
              ),
            ),
          ),
          InputField(
            //Controller: textEditingController,
            onSendMessage: _handleSendMessage,          ),
        ],
      ),
    );
  }

  void _handleSendMessage(String message) {
    setState(() {
      messages.add(Message(text: message, isSender: true));
      // Simulating the receiver's response
      messages.add(Message(text: 'hey dear', isSender: false));
    });
    textEditingController.clear();
  }
}