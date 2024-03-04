import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SignIn.dart';

class OTP extends StatefulWidget {
  @override
  State<OTP> createState() {
    return OTPState();
  }
}

class OTPState extends State<OTP> {
  TextEditingController _controller = TextEditingController(); // Add this line

  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),

  ];

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //to allow input
    List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
    List<TextEditingController> _controller = List<TextEditingController>.generate(
      5, // Replace numberOfFields with the actual number of text fields
          (index) => TextEditingController(),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.navigate_before,
                          color: Colors.black,
                          size: 25.8,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "رمز التحقيق",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'لقد أرسلنا الرمز إلى',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.15,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'الرقم +6223*******45',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF008DC9),
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //###########################################
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 53.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF008DC9),
                              width: 1.0,
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.length > 1) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Clear the text field
                                _controller[0].clear();

                              }
                              else  if (value.isNotEmpty ) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Move the focus to the next input field
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            focusNode: _focusNodes[0],
                            controller: _controller[0], // Use a separate TextEditingController for each TextField
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 53.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF008DC9),
                              width: 1.0,
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.length > 1) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Clear the text field
                                _controller[1].clear();

                              }
                              else  if (value.isNotEmpty ) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Move the focus to the next input field
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            focusNode: _focusNodes[1],
                            controller: _controller[1], // Use a separate TextEditingController for each TextField
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 53.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF008DC9),
                              width: 1.0,
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.length > 1) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Clear the text field
                                _controller[2].clear();

                              }
                              else  if (value.isNotEmpty ) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Move the focus to the next input field
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            focusNode: _focusNodes[2],
                            controller: _controller[2], // Use a separate TextEditingController for each TextField
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 53.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF008DC9),
                              width: 1.0,
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.length > 1) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Clear the text field
                                _controller[3].clear();

                              }
                              else  if (value.isNotEmpty ) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Move the focus to the next input field
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            focusNode: _focusNodes[3],
                            controller: _controller[3], // Use a separate TextEditingController for each TextField
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 53.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF008DC9),
                              width: 1.0,
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.length > 1) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Clear the text field
                                _controller[4].clear();

                              }
                              else  if (value.isNotEmpty ) {
                                // Remove all characters except the first digit
                                value = value.substring(0, 1);
                                // Move the focus to the next input field
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            focusNode: _focusNodes[4],
                            controller: _controller[4], // Use a separate TextEditingController for each TextField
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 8.0, top: 30.0, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        ' 23 ثانية',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 12.32,
                          color: Color(0xFF008DC9),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'لم يتبق سوى ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 12.32,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 38.0, left: 31.46, right: 31.46),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 300,
                        height: 66,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              backgroundColor:
                                  Color(0xFF008DC9), // Background color
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Text(
                              'تأكيــــــد',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
