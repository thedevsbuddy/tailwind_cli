import 'package:flutter/material.dart';

/// Extension Methods for widgets
extension WidgetExtension on Widget {
  // Center Widget
  Widget centered() => Center(child: this);
  Widget expanded({int flex = 1}) => Expanded(child: this, flex: flex);
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) => Flexible(child: this, flex: flex, fit: fit);
}
