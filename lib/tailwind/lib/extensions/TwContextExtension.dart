/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwContextExtension` class
const String target = "tailwind/lib/extensions/";

/// Get the full file path for the `TwContextExtension` Class
///
/// [file] This gives a boilerplate for the `TwContextExtension` class
const String file = "tailwind/lib/extensions/TwContextExtension.dart";

/// Get the stub content for the `TwContextExtension` Class
///
/// [stub] This gives a boilerplate for the `TwContextExtension` class
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
