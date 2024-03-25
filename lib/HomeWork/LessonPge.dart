import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LessonsApi.dart';

class LessonPage extends StatelessWidget {
  final Lesson lesson;

  LessonPage(this.lesson);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lesson ID: ${lesson.id}'),
          Text('Lesson Name: ${lesson.name}'),
          // Add more details as needed
        ],
      ),
    );
  }
}