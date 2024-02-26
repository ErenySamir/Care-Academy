import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
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
        title: Center(child: Text("عن المنصة",style: TextStyle(
          fontFamily: 'Cairo',
    fontSize: 22,
    ))),

      ),
      body: ListView(
        children: [
          SizedBox(height: 30), // Added space before the image
          Center(
            child: Image.asset(
              'assets/images/Logo.png',
              width: 200, // Take all available width
              fit: BoxFit.fitWidth, // Adjust the image content
            ),
          ),
          SizedBox(height: 30), // Added space after the image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding to the text
            child: Text(
              'تطبيق منصة تعليمية يعتبر جسراً بين المعلمين والطلاب، حيث يوفر مجموعة متنوعة من المواد التعليمية والدروس القصيرة والاختبارات لمساعدة الطلاب على فهم المواد بشكل أفضل وتحسين أدائهم الأكاديمي. يتيح التطبيق أيضاً التواصل المباشر بين الطلاب والمعلمين من خلال دردشات حية أو نظام تعليقات، مما يساعد على حل الاستفسارات وتبادل الملاحظات. يمكن للتطبيق أيضاً تتبع تقدم الطلاب وتقديم تقارير شاملة عن أدائهم، ويوفر ميزات تفاعلية مثل المنتديات والمجموعات الدراسية لتعزيز التعلم التعاوني.',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 18,

              ),
              textAlign: TextAlign.center, // Center the text
            ),
          ),
        ],
      ));


  }
}
