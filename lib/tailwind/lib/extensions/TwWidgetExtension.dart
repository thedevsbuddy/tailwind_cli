const String target = "tailwind/lib/extensions/";
const String file = "tailwind/lib/extensions/TwWidgetExtension.dart";

const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for widgets
extension WidgetExtension on Widget {
  // Center Widget
  Widget centered() => Center(child: this);
  // Expanded Widget
  Widget expanded({int flex = 1}) => Expanded(child: this, flex: flex);
  // Flexible Widget
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) => Flexible(child: this, flex: flex, fit: fit);
}

""";
