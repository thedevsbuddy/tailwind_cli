/// Get Targeted Directory
const String target = "tailwind/lib/extensions/";

/// Get file's path with name
const String file = "tailwind/lib/extensions/TwColorExtension.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension TwColorExtension on Color {
  Color o(double value) => this.withOpacity(value);
  Color withOpacity(double value) => this.withOpacity(value);
  %opacity%
}
""";
