/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwBorderMixin` class
const String target = "tailwind/lib/mixins/";

/// Get the full file path for the `TwBorderMixin` Class
///
/// [file] This gives a boilerplate for the `TwBorderMixin` class
const String file = "tailwind/lib/mixins/TwBorderMixin.dart";

/// Get the stub content for the `TwBorderMixin` Class
///
/// [stub] This gives a boilerplate for the `TwBorderMixin` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwBorderMixin<T> {
  late T _child;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  @protected
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  @protected
  Brightness _brightness = Theme.of(TwService.appKey.currentContext!).brightness;

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
    if (!_needsDarkVariant) twBorderColor = TwColors.primaryColor(context);
    return _child;
  }
  
  T onDarkBorderPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.primaryColor(context);
    }
    return _child;
  }

  T borderPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.primaryColorDark(context);
    return _child;
  }
  
  T onDarkBorderPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.primaryColorDark(context);
    }
    return _child;
  }
  
  T borderAccentColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.secondary(context);
    return _child;
  }
  
  T onDarkBorderAccentColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.secondary(context);
    }
    return _child;
  }
  
  T borderBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.backgroundColor(context);
    return _child;
  }
  
  T onDarkBorderBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.backgroundColor(context);
    }
    return _child;
  }

  T borderScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }
  
  T onDarkBorderScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  
  T borderCardColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.cardColor(context);
    return _child;
  }
  
  T onDarkBorderCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cardColor(context);
    }
    return _child;
  }
  
  //borderColors
}

""";
