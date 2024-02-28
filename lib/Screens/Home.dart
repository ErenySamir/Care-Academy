import 'package:careacademy/SavedLesson/Saved.dart';
import 'package:careacademy/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'menu.dart';

// Define a model class for sections
class Section {
  final String name;
  final String subtitle;
  final String imageurl;

  Section({required this.name, required this.subtitle, required this.imageurl});
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
return HomeState();
  }

}
class HomeState extends State<Home>{
  int currentIndexx = 0;

  // Dummy list of sections
  List<Section> sections = [
    Section(name: 'الفلزات والافلزات', subtitle: 'دروس 7', imageurl: 'assets/images/Security.jpg'),
    Section(name: 'الفيزياء النظرية', subtitle: 'دروس 10', imageurl: 'assets/images/Security.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'درس 25', imageurl: 'assets/images/Data.jpg'),
  ];

  List<Section> sections2 = [
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Rectangle 2749.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Rectangle 2749.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Rectangle 2749.jpg'),
  ];
  List<Section> sections3 = [
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Content-image.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Content-image.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Content-image.jpg'),
    Section(name: 'الفيزياء الحديثة', subtitle: 'ندرس بها الاسس الحديثةفى ماده الفيزياء و القوانين ....', imageurl: 'assets/images/Content-image.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      // Exit the application when back button is pressed
      SystemNavigator.pop();
      return true;
    },
    child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 16), // Add space before the row
              Row(
                children: [
                  Icon(Icons.notifications, color: Colors.black), // Bell icon
                  SizedBox(width: 8), // Add space between icon and text
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "مرحبا بك ",
                          style: TextStyle(fontSize: 20, fontFamily: 'Cairo',fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          " 👋اهلا شيماء طه ",
                          style: TextStyle(fontSize: 20,fontFamily: 'Cairo',),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8), // Add space between text and image
                  GestureDetector(
                    onTap: () {
                      // Navigate to the about page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menu()),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20, // Adjust the radius as needed
                      backgroundImage: AssetImage('assets/images/yara.jpg'), // Replace with your image asset path
                    ),
                  )

                ],
              ),

              SizedBox(height: 16), // Add space between the user info and the text/button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Material( // Wrap with Material widget
                  elevation: 4, // Add elevation for shadow effect
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Color(0xFF008DC9),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Group.png', // Replace with your image asset path
                            width: 100, // Adjust the width as needed
                            height: 80, // Adjust the height as needed
                          ),
                          SizedBox(width: 16), // Add space between the image and the text/button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '..........أنضم إلى منصتنا الآن'
                                      '\nلنبحر في مادة الفيزياء بسهولة ومتعة',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 16, color: Colors.white,fontFamily: 'Cairo',),
                                ),
                                SizedBox(height: 16), // Add space between the text and button
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button action here
                                  },
                                  child: Text(
                                    'اكتشف المزيد',
                                    style: TextStyle(color: Color(0xFF434343),fontFamily: 'Cairo',),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Add space before the search bar
          Container(
              margin: EdgeInsets.all(10), // Adjust margin as needed
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF008DC9), // Color of the border
                      width: 0.84, // Width of the border
                    ),
                    borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
                  ),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  Container(
                  width: 200, // Adjusted width
                  child:
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'البحث عن اسم الدرس أو الفيديو',
                          hintStyle: TextStyle(color: Color(0xFF008DC9), fontSize: 15, fontFamily: 'Cairo'),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Color(0xFF008DC9), fontFamily: 'Cairo'),
                      ),),
                      SizedBox(width: 10), // Add some space between the image and text
                      SizedBox(width: 10), // Add some space between the text field and the icon
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Adjust margin as needed
                        child: Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: Color(0xFF008DC9), // You can adjust the color as needed
                        ),
                      ),
                    ],
                  ),
                ),


              ),
              SizedBox(height: 16),
              Text(
                "الوحدات",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 100, // Set a fixed height for the SingleChildScrollView
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: sections.map((section) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 200,
                        height: 100, // Adjusted height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 3, blurRadius: 7, offset: Offset(0, 3)),], // Add shadow
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(section.name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Cairo',)),
                                  SizedBox(height: 8),
                                  Text(section.subtitle,style: TextStyle(fontSize: 20,fontFamily: 'Cairo',)),
                                ],
                              ),
                            ),
                            SizedBox(width: 8), // Add space between text and image
                            Image.asset(
                              section.imageurl,
                              width: 50, // Adjust the width of the image
                              height: 50, // Adjust the height of the image
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "مشاهدة المزيد",
                    style: TextStyle(fontSize: 20,  color: Color(0xFF008DC9),fontFamily: 'Cairo',),
                  ),
                  Text(
                    'الاكثر مشاهدة',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                  ),

                ],
              ),
              SizedBox(height:20 ,),
              SizedBox(
                height: 290, // Set a fixed height for the SingleChildScrollView
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sections2.map((section) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 200, // Adjusted width
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded( // Make the image take its size
                              child: Image.asset(
                                section.imageurl,
                                width: double.infinity, // Take all available width
                                fit: BoxFit.cover, // Adjust the image content
                              ),
                            ),
                            SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  section.name,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  section.subtitle,
                                  style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                  textAlign: TextAlign.end, // Align text from right to left
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align row to the start and end
                                  children: [
                                    Row(
                                      children: [

                                        // Add space between icon and number
                                        Text(
                                          '100', // Replace with the actual number of views
                                          style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                        ), SizedBox(width: 4),
                                        Icon(Icons.remove_red_eye, color: Color(0xFF008DC9)), // Video icon
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '5', // Replace with the actual rating number
                                          style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                        ),
                                        SizedBox(width: 4), // Add space between number and icon
                                        Icon(Icons.star, color: Color(0xFFFF9900)), // Star icon

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),


              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "مشاهدة المزيد",
                    style: TextStyle(fontSize: 20, color: Color(0xFF008DC9),fontFamily: 'Cairo',),
                  ),
                  Text(
                    'أضيف حديثأ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                  ),

                ],
              ),

              SizedBox(
                height: 290, // Set a fixed height for the SingleChildScrollView
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sections2.map((section) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 200, // Adjusted width
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded( // Make the image take its size
                              child: Image.asset(
                                section.imageurl,
                                width: double.infinity, // Take all available width
                                fit: BoxFit.cover, // Adjust the image content
                              ),
                            ),
                            SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  section.name,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  section.subtitle,
                                  style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                  textAlign: TextAlign.end, // Align text from right to left
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align row to the start and end
                                  children: [
                                    Row(
                                      children: [

                                        // Add space between icon and number
                                        Text(
                                          '100', // Replace with the actual number of views
                                          style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                        ), SizedBox(width: 4),
                                        Icon(Icons.remove_red_eye, color: Color(0xFF008DC9)), // Video icon
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '5', // Replace with the actual rating number
                                          style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: 'Cairo',),
                                        ),
                                        SizedBox(width: 4), // Add space between number and icon
                                        Icon(Icons.star, color: Color(0xFFFF9900)), // Star icon

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),


              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "مشاهدة المزيد  ",
                    style: TextStyle(fontSize: 20,  color: Color(0xFF008DC9),fontFamily: 'Cairo',),
                  ),
                  Text(
                    'جميع الدورات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                  ),

                ],
              ),
SizedBox(height: 16,),
//IIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // Center the row horizontally
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end, // Center the row horizontally
                      children: <Widget>[
                        Container(
                          width: 180.12,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 30.27,
                                  height: 37.11,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/save.png',
                                  ),
                                ),
                                Text(
                                  "الفيزياء الحديثة",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "52647",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',

                                          ),
                                        ),
                                        Icon(Icons.remove_red_eye_sharp,
                                            color: Colors.blueAccent, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 180.12,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 154.67,
                                  height: 114.32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/save.png',
                                  ),
                                ),
                                Text(
                                  "الفيزياء الحديثة",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "52647",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.remove_red_eye_sharp,
                                            color: Colors.blueAccent, size: 11.7),
                                        SizedBox(height:2),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end, // Center the row horizontally
                      children: <Widget>[
                        Container(
                          width: 180.12,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 154.67,
                                  height: 114.32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/save.png',
                                  ),
                                ),
                                Text(
                                  "الفيزياء الحديثة",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ...",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "52647",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',

                                          ),
                                        ),
                                        Icon(Icons.remove_red_eye_sharp,
                                            color: Colors.blueAccent, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 180.12,
                          height: 217.71,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Container(
                                  width: 154.67,
                                  height: 114.32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/save.png',
                                  ),
                                ),
                                Text(
                                  "الفيزياء الحديثة",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....",
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "52647",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.remove_red_eye_sharp,
                                            color: Colors.blueAccent, size: 11.7),
                                        SizedBox(height:2),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(color: Colors.black, fontSize: 9,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 11.7),
                                        SizedBox(height: 2),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // width: 359,
        // height: 66.22,
        // margin: EdgeInsets.only(top: 33.78, left: 35.5),
        // padding: EdgeInsets.fromLTRB(24.38, 12.61, 24.38, 12.61),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.blueAccent, Colors.white],
            // transform: GradientRotation(-3.14159), // -180 degrees in radians
          ),
        ),

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndexx,
          onTap: (index) {
            // setState(() {
            //   currentIndexx = index;
            // });
          },
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child:InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    profile()),
                          );
                        });
                      },
                      child: Image.asset(
                        'assets/images/user.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "ملفى",
                    style: TextStyle(
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize:10.90,
                    ),
                  ),
                ],
              ),
              label: "", // Set an empty label to hide the default label
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Live()),
                            );
                          });
                        },
                        child: Icon(Icons.online_prediction, color: Colors.grey, size: 25)),),
                  SizedBox(height: 1),
                  Text(
                    "مباشر",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Lessons()),
                          );
                        });
                      },
                      child: Icon(Icons.collections_bookmark_outlined,
                          color: Colors.grey, size: 25),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الوحدات",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home()),
                          );
                        });
                      },
                      child: Image.asset(
                        'assets/images/HouseSimple.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.black, fontSize: 10.90,
                      fontFamily: 'Cairo',

                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    )
    );
  }
}
