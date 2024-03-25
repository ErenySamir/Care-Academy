import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Lesson {
  final String id;
  final String name;
  final String videoUrl;
  final String schoolYearId;
  final String schoolYearName;
  final String schoolYearDescription;
  final String unitId;
  final String unitName;
  final String unitDescription;
  final String unitPhoto;
  final String unitLessonsCount;
  final String addedByUser;
  final String addDate;
  final String updatedByUser;
  final String updateDate;
  final String lastEditDate;
  Lesson({
    required this.id,
    required this.name,
    required this.videoUrl,
    required this.schoolYearId,
    required this.schoolYearName,
    required this.schoolYearDescription,
    required this.unitId,
    required this.unitName,
    required this.unitDescription,
    required this.unitPhoto,
    required this.unitLessonsCount,
    required this.addedByUser,
    required this.addDate,
    required this.updatedByUser,
    required this.updateDate,
    required this.lastEditDate,
  });
  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['l_id'] ?? '',
      name: json['l_name'] ?? '',
      videoUrl: json['l_video'] ?? '',
      schoolYearId: json['l_school_year_id'] ?? '',
      schoolYearName: json['sy_name'] ?? '',
      schoolYearDescription: json['sy_description'] ?? '',
      unitId: json['l_unit_id'] ?? '',
      unitName: json['u_name'] ?? '',
      unitDescription: json['u_description'] ?? '',
      unitPhoto: json['u_photo'] ?? '',
      unitLessonsCount: json['u_lessons_count'] ?? '',
      addedByUser: json['add_by_user'] ?? '',
      addDate: json['add_date'] ?? '',
      updatedByUser: json['update_by_user'] ?? '',
      updateDate: json['update_date'] ?? '',
      lastEditDate: json['last_edit_date'] ?? '',
    );
  }
}
