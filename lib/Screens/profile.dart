import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'Home.dart';
import 'menu.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() {
    return profileState();
  }
}
class profileState extends State<profile>{
  int currentIndexx = 0;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); // Navigate back to the previous page
            },
            child: Image.asset(
              'assets/images/chevron-right.png', // Replace with your image asset path
              width: 24, // Adjust the width of the image
              height: 24, // Adjust the height of the image
            ),
          ),
          title: Text(
            "ملفى",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Cairo'
            ),
          ),
          centerTitle: true, // Center the title horizontally
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/yara.jpg'),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'يارا عماد',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold, fontFamily: 'Cairo',color: Color(0xFF6C6A6A)
                  ),
                ),
              ),
              Center(
                child: Text(
                  'الصف الثالث الثانوى',
                  style: TextStyle(
                    color: Color(0xFF6C6A6A),
                    fontSize: 18,
                      fontFamily: 'Cairo'
                  ),
                ),
              ),
              SizedBox(height: 28,),
              
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    // width: 337.08,
                    // height: 590.95,
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0, left: 18),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[

                            Container(
                              // width: 317,
                              // height: 52.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                                color: Color(0xFFF6F4FE),
                              ),
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15.0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            hintText: 'أسم الطالب',
                                            hintStyle: TextStyle(
                                              fontFamily: 'Cairo',
                                              color: Colors.grey,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          onChanged: (value) {
                                            // if (value.isNotEmpty) {
                                            //   FocusScope.of(context).nextFocus();
                                            // }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 21,
                                    width: 21,
                                    margin: EdgeInsets.only(right: 20.0),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.grey.shade300,
                                        BlendMode.modulate,
                                      ),
                                      child: Image.asset(
                                        'assets/images/name.png',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 52.82,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                                color: Color(0xFFF6F4FE),
                              ),

                              alignment: Alignment.centerRight,
                              // Align the container to the right
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15.0),
                                        child: TextField(
                                          keyboardType:
                                          TextInputType.emailAddress,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            hintText: 'البريد الألكترونى',
                                            hintStyle: TextStyle(
                                              fontFamily: 'Cairo',
                                              color: Colors.grey,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          onChanged: (value) {
                                            // if (value.isNotEmpty) {
                                            //   FocusScope.of(context).nextFocus();
                                            // }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20.0),
                                    // Adjust margin from right
                                    child: Icon(
                                      color: Colors.grey.shade400,
                                      Icons.mail_outline,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),

                            Container(
                              height: 52.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                                color: Color(0xFFF6F4FE),
                              ),
                              alignment: Alignment.centerRight,
                              // Align the container to the right
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15.0),
                                        child: TextField(
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(12),
                                          ],
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            hintText: 'رقم التليفون',
                                            hintStyle: TextStyle(
                                              fontFamily: 'Cairo',
                                              color: Colors.grey,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          onChanged: (value) {
                                            // if (value.isNotEmpty) {
                                            //   FocusScope.of(context).nextFocus();
                                            // }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20.0),
                                    // Adjust margin from right
                                    child: Icon(
                                      color: Colors.grey.shade400,
                                      Icons.phone,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),

                            Container(
                              height: 52.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                                color: Color(0xFFF6F4FE),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  SizedBox(width: 8.0),
                                  Expanded(
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2.0),
                                          child: DropdownButtonFormField<String>(
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              size: 1,
                                              color: Color(0xFFF6F4FE), // <-- SEE HERE
                                            ),
                                            value: selectedValue,
                                            items: <String>[
                                              'Grade 1',
                                              'Grade 2',
                                              'Grade 3',
                                              'Grade 4',
                                              'Grade 5'
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                child: Text(value),
                                                value: value,
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                selectedValue = newValue;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'الصف الدراسي     ',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Cairo',
                                                color: Colors.grey,
                                              ),
                                              isDense: true,
                                              // contentPadding: EdgeInsets.zero, // Remove left padding
                                              border: InputBorder.none, // Remove underline
                                              icon:  Padding(
                                                padding: const EdgeInsets.only(right: 128.0),
                                                child: Icon(
                                                  Icons.keyboard_arrow_down_sharp,
                                                  color: Colors.grey.shade900,
                                                  size: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 260.0),
                                          child: Icon(
                                            Icons.school_outlined,
                                            color: Colors.grey.shade400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ]),
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
          width: 359,
          height: 66.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),

            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/user.png',
                          color: Color(0xFF6C6A6A),

                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "ملفى",
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 10.90,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Live()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child:Icon(Icons.online_prediction_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color:Color(0xFF6C6A6A),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "مباشر",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lessons()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Icon(Icons.collections_bookmark_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color:Color(0xFF6C6A6A),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الوحدات",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/HouseSimple.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الرئيسية",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )


    );

  }
}
