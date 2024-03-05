import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircularProgressBar extends StatelessWidget {
  final double strokeWidth;
  final double value;
  final String gpa;

  CircularProgressBar({required this.strokeWidth, required this.value, required this.gpa});

  @override
  Widget build(BuildContext context) {
    String gpaText;
    if(value ==0){
      gpaText = " ";
    }
    if (value >=1 && value<=49) {
      gpaText = "ضعيف";
    }
    else if (value >= 50 && value <= 65) {
      gpaText = "مقبول";
    }
    else if (value >= 66 && value <= 77) {
      gpaText = " جيد ";
    }
    else if (value >= 78 && value <= 100) {
      gpaText = "ممتاز";
    }
    else {
      gpaText = " ";
    }

    return Column(
      children: [
        CustomPaint(
          foregroundPainter: CircleProgressPainter(
            strokeWidth: strokeWidth,
            value: value,
          ),
          child: Container(
            width: 40.0,
            height: 40.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value.toStringAsFixed(0) + '%', // Show percentage value
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 10.61,
                    fontWeight: FontWeight.bold,
                    color: _getTextColor(value), // Determine text color based on value
                  ),
                ),
                Text(
                  gpaText,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 9.61,
                    fontWeight: FontWeight.bold,
                    color: _getTextColor(value),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
//function for color of percentage and gpa
  Color _getTextColor(double value) {
    if (value == 0) {
      return Colors.grey;
    }
    if (value >=1 && value <=49){
      return Colors.red;
    }
    else if (value >= 50 && value <= 65) {
      return Colors.yellow;
    }
    else if (value >= 66 && value <= 77) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }
}

class CircleProgressPainter extends CustomPainter {
  final double strokeWidth;
  final double value;

  CircleProgressPainter({required this.strokeWidth, required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - strokeWidth / 2;
    final startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * (value / 100);

    final grayPaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final bluePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final YellowPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final greenPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    Paint selectedPaint;
    if (value == 0) {
      selectedPaint = grayPaint;
    }
    else if (value > 1 && value < 49) {
      selectedPaint = redPaint;
    }
    else if (value >= 50 && value <= 65) {
      selectedPaint = YellowPaint;
    }
    else if (value >= 66 && value <= 77) {
      selectedPaint = bluePaint;
    }
    else {
      selectedPaint = greenPaint;
    }

    canvas.drawCircle(center, radius, grayPaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      selectedPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
