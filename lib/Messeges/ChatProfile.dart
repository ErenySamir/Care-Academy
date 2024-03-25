import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatProfile extends StatelessWidget {
  const ChatProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
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
                    Navigator.of(context).pop(); // Navigate back to the previous page
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
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              'Online',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
