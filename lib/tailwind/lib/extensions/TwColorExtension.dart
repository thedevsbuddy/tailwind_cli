const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwColorExtension.dart";

const String stub = """
import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension TwColorExtension on Color {
  /// Make provided color, opac
  ///
  /// In [value] parameter you can provide the opacity amount in [double] between 0 and 1.
  ///
  /// Example Usage:
  /// ```dart
  /// Text(
  ///   'Flutter is awesome',
  ///   style: TextStyle(
  ///     color: Colors.white.o(0.75), // Provide 75% opacity to this text
  ///   ),
  /// ),
  /// ```
  ///
  Color o(double value) => this.withOpacity(value);
  //opacity
}
""";
