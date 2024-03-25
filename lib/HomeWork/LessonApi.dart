import 'dart:convert';

import 'package:careacademy/HomeWork/LessonsApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'LessonPge.dart';


class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  late Future<List<Lesson>> lessonsFuture;

  @override
  void initState() {
    super.initState();
    lessonsFuture = fetchData();
  }

  Future<List<Lesson>> fetchData() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.0.75/care_academy_api/lesson_search.php'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final lessonData = jsonData['data'] as List<dynamic>;
        return lessonData.map((lesson) => Lesson.fromJson(lesson)).toList();
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
      throw Exception('Failed to load data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons'),
      ),
      body: FutureBuilder<List<Lesson>>(
        future: lessonsFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final lessons = snapshot.data!;
            return ListView.builder(
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                final lesson = lessons[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Lesson ID: ${lesson.id}'),
                    subtitle: Text('Lesson Name: ${lesson.name}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LessonPage(lesson)),
                      );
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error loading data: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
