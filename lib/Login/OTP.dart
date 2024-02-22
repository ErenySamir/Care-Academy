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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    child: IconButton(
                      icon: Icon(Icons.navigate_before),
                      color: Colors.black,
                      onPressed: () {
                        // Add your action here for the three dots
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,right: 135),
                    child: Center(
                      child: Text(
                        "رمز التحقيق",
                        style: TextStyle(
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
            SizedBox(height: 20.0),
            Text(
              'لقد أرسلنا الرمز إلى',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'الرقم +6223*******45',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF008DC9), // Background color
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 220.0,left: 25.5),
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
                              color: Colors.blue,
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
                              color: Colors.blue,
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
                              color: Colors.blue,
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
                              color: Colors.blue,
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
                              color: Colors.blue,
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
                padding: EdgeInsets.only(right: 8.0, top: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      ' 23 ثانية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.32,
                        color: Colors.blue,
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
    );
  }
}