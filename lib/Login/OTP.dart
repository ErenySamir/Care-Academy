import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  State<OTP> createState() {
    return OTPState();
  }
}

class OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                height: 60.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.navigate_before, color: Colors.black),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "رمز التحقيق",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'الرقم +6223*******45',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0,left: 25.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            width: 53.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color:Color(0xFF008DC9),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            width: 53.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF008DC9),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            width: 53.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF008DC9),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            width: 53.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF008DC9),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: () {
                              keyboardType: TextInputType.number;
                            },
                          child: Container(
                            width: 53.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF008DC9),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        )],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 8.0, top: 30.0,bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        ' 23 ثانية',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.32,
                          color: Color(0xFF008DC9),
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      Text(
                        'لم يتبق سوى ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.32,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 315,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 22.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF008DC9), // Background color
                        ),
                        onPressed: () {},
                        child: Text(
                          'تأكيــــــد',
                          style: TextStyle(color: Colors.white),
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