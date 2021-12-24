const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwNumbersExtension.dart";

const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for double
extension DoubleExtension on double {
  // SizedBox Widget
  Widget get widthBox => SizedBox(width: this);
  Widget get heightBox => SizedBox(height: this);

  // Duration
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}

/// Extension Methods for int
extension IntExtension on int {
  // SizedBox Widget
  Widget get widthBox => SizedBox(width: toDouble());
  Widget get heightBox => SizedBox(height: toDouble());

  // Duration
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}
""";
