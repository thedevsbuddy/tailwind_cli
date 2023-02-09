const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwColorExtension.dart";

const String stub = """
import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension TwColorExtension on Color {
  Color o(double value) => this.withOpacity(value);
  //opacity
}
""";
