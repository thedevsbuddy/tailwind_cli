const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwColorExtension.dart";

const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for colors
extension StringExtension on Color {
  /// Opacity
  Color o(dynamic value) => this.withOpacity(value);
  Color opacity(dynamic value) => this.withOpacity(value);
  //opacity
}
""";
