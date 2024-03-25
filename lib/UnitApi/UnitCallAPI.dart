import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Unit {
  final String id;
  final String name;
  final String schoolYearId;
  final String schoolYearName;
  final String schoolYearDescription;
  final String unitPhoto;
  final String unitLessonsCount;
  final String addedByUser;
  final String addDate;
  final String lastEditDate;
  Unit({
    required this.id,
    required this.name,
    required this.schoolYearId,
    required this.schoolYearName,
    required this.schoolYearDescription,
    required this.unitPhoto,
    required this.unitLessonsCount,
    required this.addedByUser,
    required this.addDate,
    required this.lastEditDate,
  });
  factory Unit.fromJson(Map<String, dynamic> json) {
    return Unit(
      id: json['u_id'] ?? '',
      name: json['u_name'] ?? '',
      schoolYearId: json['u_school_year_id'] ?? '',
      schoolYearName: json['sy_name'] ?? '',
      schoolYearDescription: json['sy_description'] ?? '',
      unitPhoto: json['u_photo'] != null ? 'http://192.168.0.75/care_academy_api/${json['u_photo']}' : '',
      unitLessonsCount: json['u_lessons_count'] ?? '',
      addedByUser: json['add_by_user'] ?? '',
      addDate: json['add_date'] ?? '',
      lastEditDate: json['last_edit_date'] ?? '',
    );
  }
}
class UnitScreen extends StatefulWidget {
  @override
  _UnitScreenState createState() => _UnitScreenState();
}
class _UnitScreenState extends State<UnitScreen> {
  late List<Unit> units = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }
  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.0.75/care_academy_api/unit_search.php'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final unitData = jsonData['data'] as List<dynamic>;
        setState(() {
          units = unitData.map((unit) => Unit.fromJson(unit)).toList();
        });
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
        title: Text('Units'),
      ),
      body: units.isNotEmpty
          ? ListView.builder(
        itemCount: units.length,
        itemBuilder: (context, index) {
          final unit = units[index];
          return ListTile(
            title: Text('Unit ID: ${unit.id}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Unit Name: ${unit.name}'),
                Text('Description: ${unit.schoolYearDescription}'),
                if (unit.unitPhoto.isNotEmpty) // Check if it's not empty
                  Image.network(
                    unit.unitPhoto,
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
            onTap: () {
              // Handle tap event if needed
            },
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}