import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About.dart';
import 'Exam.dart';

class menu extends StatelessWidget {
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
        title: Center(child: Text("ملفى",style: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 22,
          fontWeight: FontWeight.bold,))),

      ),
      body: SingleChildScrollView(
    child: Center(
    child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(10), // Adjust margin as needed
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'يارا عماد',
                          style: TextStyle(
                            fontFamily: 'Cairo', // Specify the font family here
                            color: Color(0xFF6C6A6A),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          'الصف الثالث الثانوى',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Color(0xFF6C6A6A),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/yara.jpg'),
                  ),
                ],
              ),
            ),




            SizedBox(height: 16,),
            Divider(
              color: Colors.black, // Adjust the color of the line as needed
              thickness: 1, // Adjust the thickness of the line as needed
            ),
            SizedBox(height: 16,),

            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'حسابى', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/user.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),

            SizedBox(height: 16,),
            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'البث المباشر', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/fluent_live-20-regular.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
            //  color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الواجبـــــات', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/material-symbols_home-work-outline.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                         // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الامتحانات', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/healthicons_i-exam-qualification-outline.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the about page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Exam()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                      color: Color(0xFF6C6A6A), // You can adjust the color as needed
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'المشاهده لاحقا', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/BookBookmark.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
            //  color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اشتراكى', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/lock.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عن المنصة', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/WarningCircle.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the about page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                      color: Color(0xFF6C6A6A), // You can adjust the color as needed
                    ),
                  )


                ],
              ),
            ),
            SizedBox(height: 16,),

            Container(
             // color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الأعدادات', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF6C6A6A),
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/settings.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                    color: Color(0xFF6C6A6A), // You can adjust the color as needed
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
            //  color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تسجيل خروج', // Arabic name, replace with your text
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 20,
                          color:Color(0xFFD60000),
                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child:Image.asset(
                          'assets/images/Power.png', // Replace 'your_image.png' with the path to your image asset
                          width: 30, // Adjust the width of the image as needed
                          height: 30, // Adjust the height of the image as needed
                          // color: Colors.grey, // Adjust the color of the image as needed
                        ),

                      )
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
      )
    );

  }
}
