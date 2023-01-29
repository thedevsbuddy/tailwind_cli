const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/TwBorderMixin.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwBorderMixin<T> {
  late T _child;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  bool _needsDarkVariant = false;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  Brightness _brightness = MediaQueryData.fromWindow(WidgetsBinding.instance.window).platformBrightness;

  @protected
  bool hasBorder = false;
  Color? twBorderColor = Colors.grey[500];
  BorderStyle? twBorderStyle = BorderStyle.solid;
  double twBorderWidth = 1;

  @protected
  void setChildForBorder(T child) {
    _child = child;
  }

  T get border {
    hasBorder = true;
    return _child;
  }

  T get borderSolid {
    twBorderStyle = BorderStyle.solid;
    return _child;
  }

  T get borderNone {
    hasBorder = false;
    twBorderStyle = BorderStyle.none;
    return _child;
  }

  /// Border Sizes / Widths
  T borderWidth(dynamic width) {
    twBorderWidth = width;
    return _child;
  }
  
  T get borderDp {
    twBorderWidth = 1;
    return _child;
  }

  T get borderDp2 {
    twBorderWidth = 2;
    return _child;
  }

  T get borderDp3 {
    twBorderWidth = 3;
    return _child;
  }

  //borderWidths

  Border getBorder() {
    if (hasBorder) {
      return Border.all(color: twBorderColor!, width: twBorderWidth);
    } else {
      return Border.all(color: Colors.transparent, width: 0);
    }
  }

  /// Flutter Theme Colors
  T borderColor(Color color) {
    twBorderColor = color;
    return _child;
  }
  
  T borderPrimaryColor(BuildContext context) {
    twBorderColor = TwColors.primaryColor(context);
    return _child;
  }

  T borderPrimaryDarkColor(BuildContext context) {
    twBorderColor = TwColors.primaryColorDark(context);
    return _child;
  }

  T borderAccentColor(BuildContext context) {
    twBorderColor = TwColors.secondary(context);
    return _child;
  }

  T borderBackgroundColor(BuildContext context) {
    twBorderColor = TwColors.backgroundColor(context);
    return _child;
  }

  T borderScaffoldBackgroundColor(BuildContext context) {
    twBorderColor = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T borderCardColor(BuildContext context) {
    twBorderColor = TwColors.cardColor(context);
    return _child;
  }

  //borderColors
}

""";
