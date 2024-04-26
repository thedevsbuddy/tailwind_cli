/// Get Targeted Directory
const String target = "tailwind/lib/extensions/";

/// Get file's path with name
const String file = "tailwind/lib/extensions/TwNumbersExtension.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for double
extension DoubleExtension on double {
  // SizedBox Widget
  Widget get spaceX => SizedBox(width: this);
  Widget get spaceY => SizedBox(height: this);

  // Duration
   Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}

/// Extension Methods for int
extension IntExtension on int {
  // SizedBox Widget
  Widget get spaceX => SizedBox(width: toDouble());
  Widget get spaceY => SizedBox(height: toDouble());

  // Duration
  Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}
""";
