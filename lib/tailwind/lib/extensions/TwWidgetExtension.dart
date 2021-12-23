const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwWidgetExtension.dart";

const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for widgets
extension WidgetExtension on Widget {
  // Center Widget
  Widget centered() => Center(child: this);
}

""";
