import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageWidget extends StatelessWidget {
  final String msg;
  final String user;
  final DateTime time;
  final String? previousName;
  final bool isSent;
  final bool isRecieve;

  const MessageWidget({
    required this.msg,
    required this.user,
    required this.time,
    this.previousName,
    this.isSent = true,
    this.isRecieve = true,
  });

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat.jm(); // Format to display only the time

    final textColor = isSent ? Colors.black : Colors.white;
    final backgroundColor = isSent ? Colors.white : Colors.blue.shade800;
    final alignment =
        isSent ? CrossAxisAlignment.start : CrossAxisAlignment.end;

    return Column(
      crossAxisAlignment: alignment,
      children: [
        if (isSent)
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(vertical: 1.0),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: isSent ? Border.all(color: textColor) : null,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                msg,
                style: TextStyle(fontSize: 16, color: textColor),
              ),
            ),
          ),
        if (!isRecieve)
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    timeFormat.format(time), // Format the time using DateFormat
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                   Icon(
                    Icons.check_circle_outline,
                    color: Colors.greenAccent,
                    size: 15,
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              if (isRecieve)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    timeFormat.format(time), // Format the time using DateFormat
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
