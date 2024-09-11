import 'dart:ui';

class Tournament {
  final String title;
  final String location;
  final String date;
  final String sport;
  final String buttonText;
  final Color buttonColor;

  Tournament({
    required this.title,
    required this.location,
    required this.date,
    required this.sport,
    required this.buttonText,
    required this.buttonColor,
  });
}
