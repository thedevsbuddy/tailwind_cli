/// Get Targeted Directory
const String target = "tailwind/lib/extensions/";

/// Get file's path with name
const String file = "tailwind/lib/extensions/TwContextExtension.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for context
extension ContextExtension on BuildContext {
  // Get screen size
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
""";
