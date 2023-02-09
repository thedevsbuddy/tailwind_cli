/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwColorExtension` class
const String target = "tailwind/lib/extensions/";

/// Get the full file path for the `TwColorExtension` Class
///
/// [file] This gives a boilerplate for the `TwColorExtension` class
const String file = "tailwind/lib/extensions/TwColorExtension.dart";

/// Get the stub content for the `TwColorExtension` Class
///
/// [stub] This gives a boilerplate for the `TwColorExtension` class
const String stub = """
import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension TwColorExtension on Color {
  Color o(double value) => this.withOpacity(value);
  //opacity
}
""";
