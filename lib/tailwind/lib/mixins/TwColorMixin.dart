const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/TwColorMixin.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwColorMixin<T> {
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
  Color? twColor;

  @protected
  void setChildForColoring(T child) {
    _child = child;
  }
  
  /// Flutter Theme Colors
  T primaryColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.primaryColor(context);
    return _child;
  }
  
  T onDarkPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.primaryColor(context);
    }
    return _child;
  }
  
  T primaryColorLight(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.primaryColorLight(context);
    return _child;
  }
  
  T onDarkPrimaryColorLight(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.primaryColorLight(context);
    }
    return _child;
  }

  T primaryColorDark(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.primaryColorDark(context);
    return _child;
  }

  T onDarkPrimaryColorDark(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.primaryColorDark(context);
    }
    return _child;
  }

  T secondaryColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.secondary(context);
    return _child;
  }

  T onDarkSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.secondaryColor(context);
    }
    return _child;
  }

  T backgroundColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.backgroundColor(context);
    return _child;
  }

  T onDarkBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.backgroundColor(context);
    }
    return _child;
  }

  T scaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T onDarkScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }

  T cardColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.cardColor(context);
    return _child;
  }

  T onDarkCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.cardColor(context);
    }
    return _child;
  }
 
  //colorGetters
}
""";
