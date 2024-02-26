import 'package:flutter/material.dart';

import 'menu.dart';

// Define a model class for sections
class Section {
  final String name;
  final String subtitle;
  final String imageurl;

  Section({required this.name, required this.subtitle, required this.imageurl});
}

class Home extends StatelessWidget {
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
    return Scaffold(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 3, blurRadius: 7, offset: Offset(0, 3)),], // Add shadow
                        ),
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
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 3, blurRadius: 7, offset: Offset(0, 3)),], // Add shadow
                        ),
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
                    style: TextStyle(fontSize: 20,  color: Color(0xFF008DC9),fontFamily: 'Cairo',),
                  ),
                  Text(
                    'جميع الدورات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'Cairo',),
                  ),

                ],
              ),

              SizedBox(
                height: 290, // Set a fixed height for the SingleChildScrollView
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sections3.map((section) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 200, // Adjusted width
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 3, blurRadius: 7, offset: Offset(0, 3)),], // Add shadow
                        ),
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

            ],
          ),
        ),
      ),
    );
  }
}
