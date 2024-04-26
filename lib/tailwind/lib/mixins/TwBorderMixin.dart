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
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  Brightness _brightness = Theme.of(TwService.appKey.currentContext!).brightness;

  bool _hasBorder = false;
  Color? twBorderColor = Colors.grey[500];
  BorderStyle? twBorderStyle = BorderStyle.solid;
  double twBorderWidth = 1;

  void setChildForBorder(T child) {
    _child = child;
  }

  @Deprecated('This extension is deprecated now and will no longer be available in future please consider using [hasBorder] instead')
  T get border {
    _hasBorder = true;
    return _child;
  }
  T get hasBorder {
    _hasBorder = true;
    return _child;
  }

  T get borderSolid {
    twBorderStyle = BorderStyle.solid;
    return _child;
  }

  T get borderNone {
    _hasBorder = false;
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

  %sizes%

  Border getBorder() {
    if (_hasBorder) {
      return Border.all(color: twBorderColor!, width: twBorderWidth);
    } else {
      return Border.all(color: Colors.transparent, width: 0);
    }
  }
  
  T borderColor(Color color) {
    twBorderColor = color;
    return _child;
  }
  
  /// Flutter Theme Colors
  /// ---------------------
  /// Primary Colors
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
  
  /// Primary Light Colors
  T borderPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.primaryLightColor(context);
    return _child;
  }
  T onDarkBorderPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T borderPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkBorderPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  
  /// Secondary Colors
  T borderSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) twBorderColor = TwColors.secondaryColor(context);
    return _child;
  }
  T onDarkBorderSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.secondaryColor(context);
    }
    return _child;
  }
  
  /// Background Colors
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
  
  /// Scaffold Background Colors
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
  
  /// Card Colors
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
  
  %colors%
}

""";

const String borderColorStub = """
T get border%colorNameCamel% {
if(!_needsDarkVariant) twBorderColor = TwColors.%colorName%;
return _child;
}
""";

const String borderColorDarkStub = """
T get onDarkBorder%colorNameCamel% {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        twBorderColor = TwColors.%colorName%;
      }
      return _child;
  }
""";

const String borderColorWithShadeStub = """
T get border%colorNameCamel%%colorShade% {
      if(!_needsDarkVariant) twBorderColor = TwColors.%colorName%.shade%colorShade%;
      return _child;
  }
""";

const String borderColorDarkWithShadeStub = """
T get onDarkBorder%colorNameCamel%%colorShade% {
       if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        twBorderColor = TwColors.%colorName%.shade%colorShade%;
      }
      return _child;
  }
""";