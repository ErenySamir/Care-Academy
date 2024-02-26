import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Navigate back to the previous page
          },
          child: Image.asset(
            'assets/chevron-right.png', // Replace with your image asset path
            width: 24, // Adjust the width of the image
            height: 24, // Adjust the height of the image
          ),
        ),
        title: Center(child: Text("ملفى",style: TextStyle( fontFamily: 'Cairo',
    fontSize: 22,
    fontWeight: FontWeight.bold,))),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/yara.jpg'),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'يارا عماد',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold, fontFamily: 'Cairo',color: Color(0xFF6C6A6A
                )
                ),
              ),
            ),
            Center(
              child: Text(
                'الصف الثالث الثانوى',
                style: TextStyle(
                  fontSize: 18,
                    fontFamily: 'Cairo'
                ),
              ),
            ),
            SizedBox(height: 28,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F4FE),
                borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اسم الطالب', // Arabic name, replace with your text
                    style: TextStyle(
                      fontSize: 20,
                     fontFamily: 'Cairo'
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the image and text
                  Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.grey, // You can adjust the color as needed
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F4FE),
                borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'البريد الالكترونى', // Arabic name, replace with your text
                    style: TextStyle(
                      fontSize: 20,
                       fontFamily: 'Cairo'
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the image and text
                  Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.grey, // You can adjust the color as needed
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F4FE),
                borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'رقم التليفون', // Arabic name, replace with your text
                    style: TextStyle(
                      fontSize: 20,
                       fontFamily: 'Cairo'
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the image and text
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.grey, // You can adjust the color as needed
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              color: Color(0xFFF6F4FE),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الصف الدراسى', // Arabic name, replace with your text
                        style: TextStyle(
                          fontSize: 20,
                         fontFamily: 'Cairo'
                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the text and next CircleAvatar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                        child: Icon(
                          Icons.school_outlined,
                          size: 30, // Adjust the size of the icon as needed
                          color: Colors.grey, // Adjust the color of the icon as needed
                        ),
                      )

                    ],
                  ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 40,
                        color: Color(0xFF011A51), // You can adjust the color as needed
                      ),



                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
