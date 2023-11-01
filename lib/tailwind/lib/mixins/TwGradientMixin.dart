/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwGradientMixin` class
const String target = "tailwind/lib/mixins/";

/// Get the full file path for the `TwGradientMixin` Class
///
/// [file] This gives a boilerplate for the `TwGradientMixin` class
const String file = "tailwind/lib/mixins/TwGradientMixin.dart";

/// Get the stub content for the `TwGradientMixin` Class
///
/// [stub] This gives a boilerplate for the `TwGradientMixin` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwGradientMixin<T> {
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
  bool hasGradient = false;
  Alignment begin = Alignment.topLeft, end = Alignment.bottomRight;
  List<Color> gradientColors = [Colors.transparent, Colors.transparent];
  List<double>? stops;

  @protected
  void setChildForGradient(T child) {
    _child = child;
  }
  
  T get gradientToRight {
    hasGradient = true;
    begin = Alignment.centerLeft;
    end = Alignment.centerRight;
    return _child;
  }

  T get gradientToLeft {
    hasGradient = true;
    begin = Alignment.centerRight;
    end = Alignment.centerLeft;
    return _child;
  }

  T get gradientToBottom {
    hasGradient = true;
    begin = Alignment.topCenter;
    end = Alignment.bottomCenter;
    return _child;
  }

  T get gradientToTop {
    hasGradient = true;
    begin = Alignment.bottomCenter;
    end = Alignment.topCenter;
    return _child;
  }
  
  T get gradientToBr {
    hasGradient = true;
    begin = Alignment.topLeft;
    end = Alignment.bottomRight;
    return _child;
  }

  T get gradientToBl {
    hasGradient = true;
    begin = Alignment.topRight;
    end = Alignment.bottomLeft;
    return _child;
  }

  T get gradientToTr {
    hasGradient = true;
    begin = Alignment.bottomLeft;
    end = Alignment.topRight;
    return _child;
  }

  T get gradientToTl {
    hasGradient = true;
    begin = Alignment.bottomRight;
    end = Alignment.topLeft;
    return _child;
  }
  
  ///---------------------
  /// Gradient Colors
  ///---------------------
  
  /// Flutter Theme Colors
  ///----------------------
  
  /// Primary Colors
  T fromPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryColor(context);
    return _child;
  }
  T onDarkFromPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryColor(context);
    }
    return _child;
  }
  T toPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryColor(context);
    return _child;
  }
  T onDarkToPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryColor(context);
    }
    return _child;
  }
 
   /// Primary Light Colors
  T fromPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryLightColor(context);
    return _child;
  }
  T onDarkFromPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  T toPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryLightColor(context);
    return _child;
  }
  T onDarkToPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T fromPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkFromPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  T toPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkToPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  
  /// Secondary Colors
  T fromSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.secondaryColor(context);
    return _child;
  }
  T onDarkFromSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.secondaryColor(context);
    }
    return _child;
  }
  T toSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.secondaryColor(context);
    return _child;
  }
  T onDarkToSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.secondaryColor(context);
    }
    return _child;
  }

  /// Background Colors
  T fromBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.backgroundColor(context);
    return _child;
  }
  T onDarkFromBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.backgroundColor(context);
    }
    return _child;
  }
  T toBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.backgroundColor(context);
    return _child;
  }
  T onDarkToBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.backgroundColor(context);
    }
    return _child;
  }

  /// Scaffold Background Colors
  T fromScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T onDarkFromScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  T toScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T onDarkToScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }

  /// Card Colors
  T fromCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.cardColor(context);
    return _child;
  }
  T onDarkFromCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.cardColor(context);
    }
    return _child;
  }
  T toCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.cardColor(context);
    return _child;
  }
  T onDarkToCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.cardColor(context);
    }
    return _child;
  }

  %gradientColors%
}
""";
