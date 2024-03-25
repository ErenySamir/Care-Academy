import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MesssageWidget extends StatelessWidget {
  final String msg;
  final String user;
  final DateTime time;
  final String? previousName;
  final bool isSent;

  const MesssageWidget({
    required this.msg,
    required this.user,
    required this.time,
    this.previousName,
    this.isSent = true,
  });

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat.jm(); // Format to display only the time

    final textColor = isSent ? Colors.black : Colors.white;
    final backgroundColor = isSent ? Colors.white : Colors.blue.shade800;
    final alignment = isSent ? CrossAxisAlignment.start : CrossAxisAlignment.end;

    return Column(
      crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        if (isSent)

          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: !isSent ? Radius.circular(16) : Radius.circular(0),
                bottomRight: isSent ? Radius.circular(16) : Radius.circular(0),
              ),
              color: isSent ? Colors.blue.shade900 : Color(0xffDCF3F7),
            ),
            child: Text(
              msg,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 4),
              Icon(Icons.check_circle_outline, color: Colors.greenAccent, size: 15),
              Text(
                timeFormat.format(time),
                style: TextStyle(color: Colors.grey),
              ),

            ],
          ),
        ),
      ],
    );
  }
}