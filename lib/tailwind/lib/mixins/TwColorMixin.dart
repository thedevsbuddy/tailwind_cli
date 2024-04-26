/// Get Targeted Directory
const String target = "tailwind/lib/mixins/";

/// Get file's path with name
const String file = "tailwind/lib/mixins/TwColorMixin.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwColorMixin<T> {
  late T _child;
  
  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  
  Brightness _brightness = Theme.of(TwService.appKey.currentContext!).brightness;

  
  Color? twColor;

  
  void setChildForColoring(T child) {
    _child = child;
  }
  
  /// Flutter Theme Colors
  /// ---------------------
  /// Primary Colors
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
  
  /// Primary Light Colors
  T primaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.primaryLightColor(context);
    return _child;
  }
  T onDarkPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T primaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  
  /// Secondary Colors
  T secondaryColor(BuildContext context) {
    if (!_needsDarkVariant) twColor = TwColors.secondaryColor(context);
    return _child;
  }
  T onDarkSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twColor = TwColors.secondaryColor(context);
    }
    return _child;
  }
  
  /// Background Colors
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
  
  /// Scaffold Background Colors
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
  
  /// Card Colors
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
  
  %colorGetters%
}
""";

const String colorStub = """
T get %colorName% {
      if(!_needsDarkVariant) twColor = TwColors.%colorName%;
      return _child;
 }
""";
const String colorStubDark = """
T get onDark%colorNameCamel% {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.%colorName%;
      }
      return _child;
  }
""";

const String colorStubWithShade = """
T get %colorName%%colorShade% {
      if(!_needsDarkVariant) twColor = TwColors.%colorName%.shade%colorShade%;
      return _child;
  }
""";

const String colorStubDarkWithShade = """
T get onDark%colorNameCamel%%colorShade% {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.%colorName%.shade%colorShade%;
      }
      return _child;
  }
""";
