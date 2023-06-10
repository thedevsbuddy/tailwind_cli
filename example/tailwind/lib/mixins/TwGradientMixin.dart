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
  T get fromThemePrimaryColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themePrimaryColor;
    return _child;
  }
  T onDarkFromPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryColor(context);
    }
    return _child;
  }
  T get onDarkFromThemePrimaryColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themePrimaryColor;
    }
    return _child;
  }
  T toPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryColor(context);
    return _child;
  }
  T get toThemePrimaryColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themePrimaryColor;
    return _child;
  }
  T onDarkToPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryColor(context);
    }
    return _child;
  }
  T get onDarkToThemePrimaryColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themePrimaryColor;
    }
    return _child;
  }
 
   /// Primary Light Colors
  T fromPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryLightColor(context);
    return _child;
  }
  T get fromThemePrimaryLightColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themePrimaryLightColor;
    return _child;
  }
  T onDarkFromPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  T get onDarkFromThemePrimaryLightColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themePrimaryLightColor;
    }
    return _child;
  }
  T toPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryLightColor(context);
    return _child;
  }
  T get toThemePrimaryLightColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themePrimaryLightColor;
    return _child;
  }
  T onDarkToPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryLightColor(context);
    }
    return _child;
  }
  T get onDarkToThemePrimaryLightColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themePrimaryLightColor;
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T fromPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryDarkColor(context);
    return _child;
  }
  T get fromThemePrimaryDarkColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themePrimaryDarkColor;
    return _child;
  }
  T onDarkFromPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  T get onDarkFromThemePrimaryDarkColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themePrimaryDarkColor;
    }
    return _child;
  }
  T toPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryDarkColor(context);
    return _child;
  }
  T get toThemePrimaryDarkColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themePrimaryDarkColor;
    return _child;
  }
  T onDarkToPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryDarkColor(context);
    }
    return _child;
  }
  T get onDarkToThemePrimaryDarkColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themePrimaryDarkColor;
    }
    return _child;
  }
  
  /// Secondary Colors
  T fromSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.secondaryColor(context);
    return _child;
  }
  T get fromThemeSecondaryColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themeSecondaryColor;
    return _child;
  }
  T onDarkFromSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.secondaryColor(context);
    }
    return _child;
  }
  T get onDarkFromThemeSecondaryColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themeSecondaryColor;
    }
    return _child;
  }
  T toSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.secondaryColor(context);
    return _child;
  }
  T get toThemeSecondaryColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themeSecondaryColor;
    return _child;
  }
  T onDarkToSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.secondaryColor(context);
    }
    return _child;
  }
  T get onDarkToThemeSecondaryColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themeSecondaryColor;
    }
    return _child;
  }

  /// Background Colors
  T fromBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.backgroundColor(context);
    return _child;
  }
  T get fromThemeBackgroundColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themeBackgroundColor;
    return _child;
  }
  T onDarkFromBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.backgroundColor(context);
    }
    return _child;
  }
  T get onDarkFromThemeBackgroundColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themeBackgroundColor;
    }
    return _child;
  }
  T toBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.backgroundColor(context);
    return _child;
  }
  T get toThemeBackgroundColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themeBackgroundColor;
    return _child;
  }
  T onDarkToBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.backgroundColor(context);
    }
    return _child;
  }
  T get onDarkToThemeBackgroundColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themeBackgroundColor;
    }
    return _child;
  }

  /// Scaffold Background Colors
  T fromScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T get fromThemeScaffoldBackgroundColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themeScaffoldBackgroundColor;
    return _child;
  }
  T onDarkFromScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  T get onDarkFromThemeScaffoldBackgroundColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themeScaffoldBackgroundColor;
    }
    return _child;
  }
  T toScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T get toThemeScaffoldBackgroundColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themeScaffoldBackgroundColor;
    return _child;
  }
  T onDarkToScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  T get onDarkToThemeScaffoldBackgroundColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themeScaffoldBackgroundColor;
    }
    return _child;
  }

  /// Card Colors
  T fromCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.cardColor(context);
    return _child;
  }
  T get fromThemeCardColor {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.themeCardColor;
    return _child;
  }
  T onDarkFromCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.cardColor(context);
    }
    return _child;
  }
  T get onDarkFromThemeCardColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.themeCardColor;
    }
    return _child;
  }
  T toCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.cardColor(context);
    return _child;
  }
  T get toThemeCardColor {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.themeCardColor;
    return _child;
  }
  T onDarkToCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.cardColor(context);
    }
    return _child;
  }
  T get onDarkToThemeCardColor {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.themeCardColor;
    }
    return _child;
  }

  T get fromBlack {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.black;
      return _child;
  }
	T get toBlack {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.black;
      return _child;
  }
	T get onDarkFromBlack {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.black;
      }
      return _child;
  }
	T get onDarkToBlack {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.black;
      }
      return _child;
  }
	T get fromWhite {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.white;
      return _child;
  }
	T get toWhite {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.white;
      return _child;
  }
	T get onDarkFromWhite {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.white;
      }
      return _child;
  }
	T get onDarkToWhite {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.white;
      }
      return _child;
  }
	T get fromTransparent {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.transparent;
      return _child;
  }
	T get toTransparent {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.transparent;
      return _child;
  }
	T get onDarkFromTransparent {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.transparent;
      }
      return _child;
  }
	T get onDarkToTransparent {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.transparent;
      }
      return _child;
  }
	T get fromGray {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray;
      return _child;
  }
	T get toGray {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray;
      return _child;
  }
	T get fromGray50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade50;
      return _child;
  }
	T get toGray50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade50;
      return _child;
  }
	T get fromGray100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade100;
      return _child;
  }
	T get toGray100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade100;
      return _child;
  }
	T get fromGray200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade200;
      return _child;
  }
	T get toGray200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade200;
      return _child;
  }
	T get fromGray300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade300;
      return _child;
  }
	T get toGray300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade300;
      return _child;
  }
	T get fromGray400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade400;
      return _child;
  }
	T get toGray400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade400;
      return _child;
  }
	T get fromGray500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade500;
      return _child;
  }
	T get toGray500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade500;
      return _child;
  }
	T get fromGray600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade600;
      return _child;
  }
	T get toGray600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade600;
      return _child;
  }
	T get fromGray700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade700;
      return _child;
  }
	T get toGray700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade700;
      return _child;
  }
	T get fromGray800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade800;
      return _child;
  }
	T get toGray800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade800;
      return _child;
  }
	T get fromGray900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.gray.shade900;
      return _child;
  }
	T get toGray900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.gray.shade900;
      return _child;
  }
	T get onDarkFromGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray;
      }
      return _child;
  }
	T get onDarkToGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray;
      }
      return _child;
  }
	T get onDarkFromGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade50;
      }
      return _child;
  }
	T get onDarkToGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade50;
      }
      return _child;
  }
	T get onDarkFromGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade100;
      }
      return _child;
  }
	T get onDarkToGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade100;
      }
      return _child;
  }
	T get onDarkFromGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade200;
      }
      return _child;
  }
	T get onDarkToGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade200;
      }
      return _child;
  }
	T get onDarkFromGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade300;
      }
      return _child;
  }
	T get onDarkToGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade300;
      }
      return _child;
  }
	T get onDarkFromGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade400;
      }
      return _child;
  }
	T get onDarkToGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade400;
      }
      return _child;
  }
	T get onDarkFromGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade500;
      }
      return _child;
  }
	T get onDarkToGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade500;
      }
      return _child;
  }
	T get onDarkFromGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade600;
      }
      return _child;
  }
	T get onDarkToGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade600;
      }
      return _child;
  }
	T get onDarkFromGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade700;
      }
      return _child;
  }
	T get onDarkToGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade700;
      }
      return _child;
  }
	T get onDarkFromGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade800;
      }
      return _child;
  }
	T get onDarkToGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade800;
      }
      return _child;
  }
	T get onDarkFromGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.gray.shade900;
      }
      return _child;
  }
	T get onDarkToGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.gray.shade900;
      }
      return _child;
  }
	T get fromBlueGray {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray;
      return _child;
  }
	T get toBlueGray {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray;
      return _child;
  }
	T get fromBlueGray50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade50;
      return _child;
  }
	T get toBlueGray50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade50;
      return _child;
  }
	T get fromBlueGray100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade100;
      return _child;
  }
	T get toBlueGray100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade100;
      return _child;
  }
	T get fromBlueGray200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade200;
      return _child;
  }
	T get toBlueGray200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade200;
      return _child;
  }
	T get fromBlueGray300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade300;
      return _child;
  }
	T get toBlueGray300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade300;
      return _child;
  }
	T get fromBlueGray400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade400;
      return _child;
  }
	T get toBlueGray400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade400;
      return _child;
  }
	T get fromBlueGray500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade500;
      return _child;
  }
	T get toBlueGray500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade500;
      return _child;
  }
	T get fromBlueGray600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade600;
      return _child;
  }
	T get toBlueGray600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade600;
      return _child;
  }
	T get fromBlueGray700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade700;
      return _child;
  }
	T get toBlueGray700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade700;
      return _child;
  }
	T get fromBlueGray800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade800;
      return _child;
  }
	T get toBlueGray800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade800;
      return _child;
  }
	T get fromBlueGray900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blueGray.shade900;
      return _child;
  }
	T get toBlueGray900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blueGray.shade900;
      return _child;
  }
	T get onDarkFromBlueGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray;
      }
      return _child;
  }
	T get onDarkToBlueGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray;
      }
      return _child;
  }
	T get onDarkFromBlueGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade50;
      }
      return _child;
  }
	T get onDarkToBlueGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade50;
      }
      return _child;
  }
	T get onDarkFromBlueGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade100;
      }
      return _child;
  }
	T get onDarkToBlueGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade100;
      }
      return _child;
  }
	T get onDarkFromBlueGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade200;
      }
      return _child;
  }
	T get onDarkToBlueGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade200;
      }
      return _child;
  }
	T get onDarkFromBlueGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade300;
      }
      return _child;
  }
	T get onDarkToBlueGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade300;
      }
      return _child;
  }
	T get onDarkFromBlueGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade400;
      }
      return _child;
  }
	T get onDarkToBlueGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade400;
      }
      return _child;
  }
	T get onDarkFromBlueGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade500;
      }
      return _child;
  }
	T get onDarkToBlueGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade500;
      }
      return _child;
  }
	T get onDarkFromBlueGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade600;
      }
      return _child;
  }
	T get onDarkToBlueGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade600;
      }
      return _child;
  }
	T get onDarkFromBlueGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade700;
      }
      return _child;
  }
	T get onDarkToBlueGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade700;
      }
      return _child;
  }
	T get onDarkFromBlueGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade800;
      }
      return _child;
  }
	T get onDarkToBlueGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade800;
      }
      return _child;
  }
	T get onDarkFromBlueGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blueGray.shade900;
      }
      return _child;
  }
	T get onDarkToBlueGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blueGray.shade900;
      }
      return _child;
  }
	T get fromCoolGray {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray;
      return _child;
  }
	T get toCoolGray {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray;
      return _child;
  }
	T get fromCoolGray50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade50;
      return _child;
  }
	T get toCoolGray50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade50;
      return _child;
  }
	T get fromCoolGray100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade100;
      return _child;
  }
	T get toCoolGray100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade100;
      return _child;
  }
	T get fromCoolGray200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade200;
      return _child;
  }
	T get toCoolGray200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade200;
      return _child;
  }
	T get fromCoolGray300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade300;
      return _child;
  }
	T get toCoolGray300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade300;
      return _child;
  }
	T get fromCoolGray400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade400;
      return _child;
  }
	T get toCoolGray400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade400;
      return _child;
  }
	T get fromCoolGray500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade500;
      return _child;
  }
	T get toCoolGray500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade500;
      return _child;
  }
	T get fromCoolGray600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade600;
      return _child;
  }
	T get toCoolGray600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade600;
      return _child;
  }
	T get fromCoolGray700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade700;
      return _child;
  }
	T get toCoolGray700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade700;
      return _child;
  }
	T get fromCoolGray800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade800;
      return _child;
  }
	T get toCoolGray800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade800;
      return _child;
  }
	T get fromCoolGray900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.coolGray.shade900;
      return _child;
  }
	T get toCoolGray900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.coolGray.shade900;
      return _child;
  }
	T get onDarkFromCoolGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray;
      }
      return _child;
  }
	T get onDarkToCoolGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray;
      }
      return _child;
  }
	T get onDarkFromCoolGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade50;
      }
      return _child;
  }
	T get onDarkToCoolGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade50;
      }
      return _child;
  }
	T get onDarkFromCoolGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade100;
      }
      return _child;
  }
	T get onDarkToCoolGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade100;
      }
      return _child;
  }
	T get onDarkFromCoolGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade200;
      }
      return _child;
  }
	T get onDarkToCoolGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade200;
      }
      return _child;
  }
	T get onDarkFromCoolGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade300;
      }
      return _child;
  }
	T get onDarkToCoolGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade300;
      }
      return _child;
  }
	T get onDarkFromCoolGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade400;
      }
      return _child;
  }
	T get onDarkToCoolGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade400;
      }
      return _child;
  }
	T get onDarkFromCoolGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade500;
      }
      return _child;
  }
	T get onDarkToCoolGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade500;
      }
      return _child;
  }
	T get onDarkFromCoolGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade600;
      }
      return _child;
  }
	T get onDarkToCoolGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade600;
      }
      return _child;
  }
	T get onDarkFromCoolGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade700;
      }
      return _child;
  }
	T get onDarkToCoolGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade700;
      }
      return _child;
  }
	T get onDarkFromCoolGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade800;
      }
      return _child;
  }
	T get onDarkToCoolGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade800;
      }
      return _child;
  }
	T get onDarkFromCoolGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.coolGray.shade900;
      }
      return _child;
  }
	T get onDarkToCoolGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.coolGray.shade900;
      }
      return _child;
  }
	T get fromTrueGray {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray;
      return _child;
  }
	T get toTrueGray {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray;
      return _child;
  }
	T get fromTrueGray50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade50;
      return _child;
  }
	T get toTrueGray50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade50;
      return _child;
  }
	T get fromTrueGray100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade100;
      return _child;
  }
	T get toTrueGray100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade100;
      return _child;
  }
	T get fromTrueGray200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade200;
      return _child;
  }
	T get toTrueGray200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade200;
      return _child;
  }
	T get fromTrueGray300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade300;
      return _child;
  }
	T get toTrueGray300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade300;
      return _child;
  }
	T get fromTrueGray400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade400;
      return _child;
  }
	T get toTrueGray400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade400;
      return _child;
  }
	T get fromTrueGray500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade500;
      return _child;
  }
	T get toTrueGray500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade500;
      return _child;
  }
	T get fromTrueGray600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade600;
      return _child;
  }
	T get toTrueGray600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade600;
      return _child;
  }
	T get fromTrueGray700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade700;
      return _child;
  }
	T get toTrueGray700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade700;
      return _child;
  }
	T get fromTrueGray800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade800;
      return _child;
  }
	T get toTrueGray800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade800;
      return _child;
  }
	T get fromTrueGray900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.trueGray.shade900;
      return _child;
  }
	T get toTrueGray900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.trueGray.shade900;
      return _child;
  }
	T get onDarkFromTrueGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray;
      }
      return _child;
  }
	T get onDarkToTrueGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray;
      }
      return _child;
  }
	T get onDarkFromTrueGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade50;
      }
      return _child;
  }
	T get onDarkToTrueGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade50;
      }
      return _child;
  }
	T get onDarkFromTrueGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade100;
      }
      return _child;
  }
	T get onDarkToTrueGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade100;
      }
      return _child;
  }
	T get onDarkFromTrueGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade200;
      }
      return _child;
  }
	T get onDarkToTrueGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade200;
      }
      return _child;
  }
	T get onDarkFromTrueGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade300;
      }
      return _child;
  }
	T get onDarkToTrueGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade300;
      }
      return _child;
  }
	T get onDarkFromTrueGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade400;
      }
      return _child;
  }
	T get onDarkToTrueGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade400;
      }
      return _child;
  }
	T get onDarkFromTrueGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade500;
      }
      return _child;
  }
	T get onDarkToTrueGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade500;
      }
      return _child;
  }
	T get onDarkFromTrueGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade600;
      }
      return _child;
  }
	T get onDarkToTrueGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade600;
      }
      return _child;
  }
	T get onDarkFromTrueGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade700;
      }
      return _child;
  }
	T get onDarkToTrueGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade700;
      }
      return _child;
  }
	T get onDarkFromTrueGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade800;
      }
      return _child;
  }
	T get onDarkToTrueGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade800;
      }
      return _child;
  }
	T get onDarkFromTrueGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.trueGray.shade900;
      }
      return _child;
  }
	T get onDarkToTrueGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.trueGray.shade900;
      }
      return _child;
  }
	T get fromWarmGray {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray;
      return _child;
  }
	T get toWarmGray {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray;
      return _child;
  }
	T get fromWarmGray50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade50;
      return _child;
  }
	T get toWarmGray50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade50;
      return _child;
  }
	T get fromWarmGray100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade100;
      return _child;
  }
	T get toWarmGray100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade100;
      return _child;
  }
	T get fromWarmGray200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade200;
      return _child;
  }
	T get toWarmGray200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade200;
      return _child;
  }
	T get fromWarmGray300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade300;
      return _child;
  }
	T get toWarmGray300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade300;
      return _child;
  }
	T get fromWarmGray400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade400;
      return _child;
  }
	T get toWarmGray400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade400;
      return _child;
  }
	T get fromWarmGray500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade500;
      return _child;
  }
	T get toWarmGray500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade500;
      return _child;
  }
	T get fromWarmGray600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade600;
      return _child;
  }
	T get toWarmGray600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade600;
      return _child;
  }
	T get fromWarmGray700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade700;
      return _child;
  }
	T get toWarmGray700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade700;
      return _child;
  }
	T get fromWarmGray800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade800;
      return _child;
  }
	T get toWarmGray800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade800;
      return _child;
  }
	T get fromWarmGray900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.warmGray.shade900;
      return _child;
  }
	T get toWarmGray900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.warmGray.shade900;
      return _child;
  }
	T get onDarkFromWarmGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray;
      }
      return _child;
  }
	T get onDarkToWarmGray {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray;
      }
      return _child;
  }
	T get onDarkFromWarmGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade50;
      }
      return _child;
  }
	T get onDarkToWarmGray50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade50;
      }
      return _child;
  }
	T get onDarkFromWarmGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade100;
      }
      return _child;
  }
	T get onDarkToWarmGray100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade100;
      }
      return _child;
  }
	T get onDarkFromWarmGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade200;
      }
      return _child;
  }
	T get onDarkToWarmGray200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade200;
      }
      return _child;
  }
	T get onDarkFromWarmGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade300;
      }
      return _child;
  }
	T get onDarkToWarmGray300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade300;
      }
      return _child;
  }
	T get onDarkFromWarmGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade400;
      }
      return _child;
  }
	T get onDarkToWarmGray400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade400;
      }
      return _child;
  }
	T get onDarkFromWarmGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade500;
      }
      return _child;
  }
	T get onDarkToWarmGray500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade500;
      }
      return _child;
  }
	T get onDarkFromWarmGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade600;
      }
      return _child;
  }
	T get onDarkToWarmGray600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade600;
      }
      return _child;
  }
	T get onDarkFromWarmGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade700;
      }
      return _child;
  }
	T get onDarkToWarmGray700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade700;
      }
      return _child;
  }
	T get onDarkFromWarmGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade800;
      }
      return _child;
  }
	T get onDarkToWarmGray800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade800;
      }
      return _child;
  }
	T get onDarkFromWarmGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.warmGray.shade900;
      }
      return _child;
  }
	T get onDarkToWarmGray900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.warmGray.shade900;
      }
      return _child;
  }
	T get fromRed {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red;
      return _child;
  }
	T get toRed {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red;
      return _child;
  }
	T get fromRed50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade50;
      return _child;
  }
	T get toRed50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade50;
      return _child;
  }
	T get fromRed100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade100;
      return _child;
  }
	T get toRed100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade100;
      return _child;
  }
	T get fromRed200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade200;
      return _child;
  }
	T get toRed200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade200;
      return _child;
  }
	T get fromRed300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade300;
      return _child;
  }
	T get toRed300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade300;
      return _child;
  }
	T get fromRed400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade400;
      return _child;
  }
	T get toRed400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade400;
      return _child;
  }
	T get fromRed500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade500;
      return _child;
  }
	T get toRed500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade500;
      return _child;
  }
	T get fromRed600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade600;
      return _child;
  }
	T get toRed600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade600;
      return _child;
  }
	T get fromRed700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade700;
      return _child;
  }
	T get toRed700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade700;
      return _child;
  }
	T get fromRed800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade800;
      return _child;
  }
	T get toRed800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade800;
      return _child;
  }
	T get fromRed900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.red.shade900;
      return _child;
  }
	T get toRed900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.red.shade900;
      return _child;
  }
	T get onDarkFromRed {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red;
      }
      return _child;
  }
	T get onDarkToRed {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red;
      }
      return _child;
  }
	T get onDarkFromRed50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade50;
      }
      return _child;
  }
	T get onDarkToRed50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade50;
      }
      return _child;
  }
	T get onDarkFromRed100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade100;
      }
      return _child;
  }
	T get onDarkToRed100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade100;
      }
      return _child;
  }
	T get onDarkFromRed200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade200;
      }
      return _child;
  }
	T get onDarkToRed200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade200;
      }
      return _child;
  }
	T get onDarkFromRed300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade300;
      }
      return _child;
  }
	T get onDarkToRed300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade300;
      }
      return _child;
  }
	T get onDarkFromRed400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade400;
      }
      return _child;
  }
	T get onDarkToRed400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade400;
      }
      return _child;
  }
	T get onDarkFromRed500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade500;
      }
      return _child;
  }
	T get onDarkToRed500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade500;
      }
      return _child;
  }
	T get onDarkFromRed600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade600;
      }
      return _child;
  }
	T get onDarkToRed600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade600;
      }
      return _child;
  }
	T get onDarkFromRed700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade700;
      }
      return _child;
  }
	T get onDarkToRed700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade700;
      }
      return _child;
  }
	T get onDarkFromRed800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade800;
      }
      return _child;
  }
	T get onDarkToRed800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade800;
      }
      return _child;
  }
	T get onDarkFromRed900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.red.shade900;
      }
      return _child;
  }
	T get onDarkToRed900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.red.shade900;
      }
      return _child;
  }
	T get fromOrange {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange;
      return _child;
  }
	T get toOrange {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange;
      return _child;
  }
	T get fromOrange50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade50;
      return _child;
  }
	T get toOrange50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade50;
      return _child;
  }
	T get fromOrange100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade100;
      return _child;
  }
	T get toOrange100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade100;
      return _child;
  }
	T get fromOrange200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade200;
      return _child;
  }
	T get toOrange200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade200;
      return _child;
  }
	T get fromOrange300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade300;
      return _child;
  }
	T get toOrange300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade300;
      return _child;
  }
	T get fromOrange400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade400;
      return _child;
  }
	T get toOrange400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade400;
      return _child;
  }
	T get fromOrange500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade500;
      return _child;
  }
	T get toOrange500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade500;
      return _child;
  }
	T get fromOrange600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade600;
      return _child;
  }
	T get toOrange600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade600;
      return _child;
  }
	T get fromOrange700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade700;
      return _child;
  }
	T get toOrange700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade700;
      return _child;
  }
	T get fromOrange800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade800;
      return _child;
  }
	T get toOrange800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade800;
      return _child;
  }
	T get fromOrange900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.orange.shade900;
      return _child;
  }
	T get toOrange900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.orange.shade900;
      return _child;
  }
	T get onDarkFromOrange {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange;
      }
      return _child;
  }
	T get onDarkToOrange {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange;
      }
      return _child;
  }
	T get onDarkFromOrange50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade50;
      }
      return _child;
  }
	T get onDarkToOrange50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade50;
      }
      return _child;
  }
	T get onDarkFromOrange100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade100;
      }
      return _child;
  }
	T get onDarkToOrange100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade100;
      }
      return _child;
  }
	T get onDarkFromOrange200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade200;
      }
      return _child;
  }
	T get onDarkToOrange200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade200;
      }
      return _child;
  }
	T get onDarkFromOrange300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade300;
      }
      return _child;
  }
	T get onDarkToOrange300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade300;
      }
      return _child;
  }
	T get onDarkFromOrange400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade400;
      }
      return _child;
  }
	T get onDarkToOrange400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade400;
      }
      return _child;
  }
	T get onDarkFromOrange500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade500;
      }
      return _child;
  }
	T get onDarkToOrange500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade500;
      }
      return _child;
  }
	T get onDarkFromOrange600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade600;
      }
      return _child;
  }
	T get onDarkToOrange600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade600;
      }
      return _child;
  }
	T get onDarkFromOrange700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade700;
      }
      return _child;
  }
	T get onDarkToOrange700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade700;
      }
      return _child;
  }
	T get onDarkFromOrange800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade800;
      }
      return _child;
  }
	T get onDarkToOrange800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade800;
      }
      return _child;
  }
	T get onDarkFromOrange900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.orange.shade900;
      }
      return _child;
  }
	T get onDarkToOrange900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.orange.shade900;
      }
      return _child;
  }
	T get fromAmber {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber;
      return _child;
  }
	T get toAmber {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber;
      return _child;
  }
	T get fromAmber50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade50;
      return _child;
  }
	T get toAmber50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade50;
      return _child;
  }
	T get fromAmber100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade100;
      return _child;
  }
	T get toAmber100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade100;
      return _child;
  }
	T get fromAmber200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade200;
      return _child;
  }
	T get toAmber200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade200;
      return _child;
  }
	T get fromAmber300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade300;
      return _child;
  }
	T get toAmber300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade300;
      return _child;
  }
	T get fromAmber400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade400;
      return _child;
  }
	T get toAmber400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade400;
      return _child;
  }
	T get fromAmber500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade500;
      return _child;
  }
	T get toAmber500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade500;
      return _child;
  }
	T get fromAmber600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade600;
      return _child;
  }
	T get toAmber600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade600;
      return _child;
  }
	T get fromAmber700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade700;
      return _child;
  }
	T get toAmber700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade700;
      return _child;
  }
	T get fromAmber800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade800;
      return _child;
  }
	T get toAmber800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade800;
      return _child;
  }
	T get fromAmber900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.amber.shade900;
      return _child;
  }
	T get toAmber900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.amber.shade900;
      return _child;
  }
	T get onDarkFromAmber {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber;
      }
      return _child;
  }
	T get onDarkToAmber {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber;
      }
      return _child;
  }
	T get onDarkFromAmber50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade50;
      }
      return _child;
  }
	T get onDarkToAmber50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade50;
      }
      return _child;
  }
	T get onDarkFromAmber100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade100;
      }
      return _child;
  }
	T get onDarkToAmber100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade100;
      }
      return _child;
  }
	T get onDarkFromAmber200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade200;
      }
      return _child;
  }
	T get onDarkToAmber200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade200;
      }
      return _child;
  }
	T get onDarkFromAmber300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade300;
      }
      return _child;
  }
	T get onDarkToAmber300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade300;
      }
      return _child;
  }
	T get onDarkFromAmber400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade400;
      }
      return _child;
  }
	T get onDarkToAmber400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade400;
      }
      return _child;
  }
	T get onDarkFromAmber500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade500;
      }
      return _child;
  }
	T get onDarkToAmber500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade500;
      }
      return _child;
  }
	T get onDarkFromAmber600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade600;
      }
      return _child;
  }
	T get onDarkToAmber600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade600;
      }
      return _child;
  }
	T get onDarkFromAmber700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade700;
      }
      return _child;
  }
	T get onDarkToAmber700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade700;
      }
      return _child;
  }
	T get onDarkFromAmber800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade800;
      }
      return _child;
  }
	T get onDarkToAmber800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade800;
      }
      return _child;
  }
	T get onDarkFromAmber900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.amber.shade900;
      }
      return _child;
  }
	T get onDarkToAmber900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.amber.shade900;
      }
      return _child;
  }
	T get fromYellow {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow;
      return _child;
  }
	T get toYellow {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow;
      return _child;
  }
	T get fromYellow50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade50;
      return _child;
  }
	T get toYellow50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade50;
      return _child;
  }
	T get fromYellow100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade100;
      return _child;
  }
	T get toYellow100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade100;
      return _child;
  }
	T get fromYellow200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade200;
      return _child;
  }
	T get toYellow200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade200;
      return _child;
  }
	T get fromYellow300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade300;
      return _child;
  }
	T get toYellow300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade300;
      return _child;
  }
	T get fromYellow400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade400;
      return _child;
  }
	T get toYellow400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade400;
      return _child;
  }
	T get fromYellow500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade500;
      return _child;
  }
	T get toYellow500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade500;
      return _child;
  }
	T get fromYellow600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade600;
      return _child;
  }
	T get toYellow600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade600;
      return _child;
  }
	T get fromYellow700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade700;
      return _child;
  }
	T get toYellow700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade700;
      return _child;
  }
	T get fromYellow800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade800;
      return _child;
  }
	T get toYellow800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade800;
      return _child;
  }
	T get fromYellow900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.yellow.shade900;
      return _child;
  }
	T get toYellow900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.yellow.shade900;
      return _child;
  }
	T get onDarkFromYellow {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow;
      }
      return _child;
  }
	T get onDarkToYellow {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow;
      }
      return _child;
  }
	T get onDarkFromYellow50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade50;
      }
      return _child;
  }
	T get onDarkToYellow50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade50;
      }
      return _child;
  }
	T get onDarkFromYellow100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade100;
      }
      return _child;
  }
	T get onDarkToYellow100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade100;
      }
      return _child;
  }
	T get onDarkFromYellow200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade200;
      }
      return _child;
  }
	T get onDarkToYellow200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade200;
      }
      return _child;
  }
	T get onDarkFromYellow300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade300;
      }
      return _child;
  }
	T get onDarkToYellow300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade300;
      }
      return _child;
  }
	T get onDarkFromYellow400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade400;
      }
      return _child;
  }
	T get onDarkToYellow400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade400;
      }
      return _child;
  }
	T get onDarkFromYellow500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade500;
      }
      return _child;
  }
	T get onDarkToYellow500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade500;
      }
      return _child;
  }
	T get onDarkFromYellow600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade600;
      }
      return _child;
  }
	T get onDarkToYellow600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade600;
      }
      return _child;
  }
	T get onDarkFromYellow700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade700;
      }
      return _child;
  }
	T get onDarkToYellow700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade700;
      }
      return _child;
  }
	T get onDarkFromYellow800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade800;
      }
      return _child;
  }
	T get onDarkToYellow800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade800;
      }
      return _child;
  }
	T get onDarkFromYellow900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.yellow.shade900;
      }
      return _child;
  }
	T get onDarkToYellow900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.yellow.shade900;
      }
      return _child;
  }
	T get fromLime {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime;
      return _child;
  }
	T get toLime {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime;
      return _child;
  }
	T get fromLime50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade50;
      return _child;
  }
	T get toLime50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade50;
      return _child;
  }
	T get fromLime100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade100;
      return _child;
  }
	T get toLime100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade100;
      return _child;
  }
	T get fromLime200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade200;
      return _child;
  }
	T get toLime200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade200;
      return _child;
  }
	T get fromLime300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade300;
      return _child;
  }
	T get toLime300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade300;
      return _child;
  }
	T get fromLime400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade400;
      return _child;
  }
	T get toLime400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade400;
      return _child;
  }
	T get fromLime500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade500;
      return _child;
  }
	T get toLime500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade500;
      return _child;
  }
	T get fromLime600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade600;
      return _child;
  }
	T get toLime600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade600;
      return _child;
  }
	T get fromLime700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade700;
      return _child;
  }
	T get toLime700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade700;
      return _child;
  }
	T get fromLime800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade800;
      return _child;
  }
	T get toLime800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade800;
      return _child;
  }
	T get fromLime900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lime.shade900;
      return _child;
  }
	T get toLime900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lime.shade900;
      return _child;
  }
	T get onDarkFromLime {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime;
      }
      return _child;
  }
	T get onDarkToLime {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime;
      }
      return _child;
  }
	T get onDarkFromLime50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade50;
      }
      return _child;
  }
	T get onDarkToLime50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade50;
      }
      return _child;
  }
	T get onDarkFromLime100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade100;
      }
      return _child;
  }
	T get onDarkToLime100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade100;
      }
      return _child;
  }
	T get onDarkFromLime200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade200;
      }
      return _child;
  }
	T get onDarkToLime200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade200;
      }
      return _child;
  }
	T get onDarkFromLime300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade300;
      }
      return _child;
  }
	T get onDarkToLime300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade300;
      }
      return _child;
  }
	T get onDarkFromLime400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade400;
      }
      return _child;
  }
	T get onDarkToLime400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade400;
      }
      return _child;
  }
	T get onDarkFromLime500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade500;
      }
      return _child;
  }
	T get onDarkToLime500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade500;
      }
      return _child;
  }
	T get onDarkFromLime600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade600;
      }
      return _child;
  }
	T get onDarkToLime600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade600;
      }
      return _child;
  }
	T get onDarkFromLime700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade700;
      }
      return _child;
  }
	T get onDarkToLime700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade700;
      }
      return _child;
  }
	T get onDarkFromLime800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade800;
      }
      return _child;
  }
	T get onDarkToLime800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade800;
      }
      return _child;
  }
	T get onDarkFromLime900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lime.shade900;
      }
      return _child;
  }
	T get onDarkToLime900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lime.shade900;
      }
      return _child;
  }
	T get fromGreen {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green;
      return _child;
  }
	T get toGreen {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green;
      return _child;
  }
	T get fromGreen50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade50;
      return _child;
  }
	T get toGreen50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade50;
      return _child;
  }
	T get fromGreen100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade100;
      return _child;
  }
	T get toGreen100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade100;
      return _child;
  }
	T get fromGreen200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade200;
      return _child;
  }
	T get toGreen200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade200;
      return _child;
  }
	T get fromGreen300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade300;
      return _child;
  }
	T get toGreen300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade300;
      return _child;
  }
	T get fromGreen400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade400;
      return _child;
  }
	T get toGreen400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade400;
      return _child;
  }
	T get fromGreen500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade500;
      return _child;
  }
	T get toGreen500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade500;
      return _child;
  }
	T get fromGreen600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade600;
      return _child;
  }
	T get toGreen600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade600;
      return _child;
  }
	T get fromGreen700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade700;
      return _child;
  }
	T get toGreen700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade700;
      return _child;
  }
	T get fromGreen800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade800;
      return _child;
  }
	T get toGreen800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade800;
      return _child;
  }
	T get fromGreen900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.green.shade900;
      return _child;
  }
	T get toGreen900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.green.shade900;
      return _child;
  }
	T get onDarkFromGreen {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green;
      }
      return _child;
  }
	T get onDarkToGreen {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green;
      }
      return _child;
  }
	T get onDarkFromGreen50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade50;
      }
      return _child;
  }
	T get onDarkToGreen50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade50;
      }
      return _child;
  }
	T get onDarkFromGreen100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade100;
      }
      return _child;
  }
	T get onDarkToGreen100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade100;
      }
      return _child;
  }
	T get onDarkFromGreen200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade200;
      }
      return _child;
  }
	T get onDarkToGreen200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade200;
      }
      return _child;
  }
	T get onDarkFromGreen300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade300;
      }
      return _child;
  }
	T get onDarkToGreen300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade300;
      }
      return _child;
  }
	T get onDarkFromGreen400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade400;
      }
      return _child;
  }
	T get onDarkToGreen400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade400;
      }
      return _child;
  }
	T get onDarkFromGreen500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade500;
      }
      return _child;
  }
	T get onDarkToGreen500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade500;
      }
      return _child;
  }
	T get onDarkFromGreen600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade600;
      }
      return _child;
  }
	T get onDarkToGreen600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade600;
      }
      return _child;
  }
	T get onDarkFromGreen700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade700;
      }
      return _child;
  }
	T get onDarkToGreen700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade700;
      }
      return _child;
  }
	T get onDarkFromGreen800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade800;
      }
      return _child;
  }
	T get onDarkToGreen800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade800;
      }
      return _child;
  }
	T get onDarkFromGreen900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.green.shade900;
      }
      return _child;
  }
	T get onDarkToGreen900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.green.shade900;
      }
      return _child;
  }
	T get fromEmerald {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald;
      return _child;
  }
	T get toEmerald {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald;
      return _child;
  }
	T get fromEmerald50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade50;
      return _child;
  }
	T get toEmerald50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade50;
      return _child;
  }
	T get fromEmerald100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade100;
      return _child;
  }
	T get toEmerald100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade100;
      return _child;
  }
	T get fromEmerald200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade200;
      return _child;
  }
	T get toEmerald200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade200;
      return _child;
  }
	T get fromEmerald300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade300;
      return _child;
  }
	T get toEmerald300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade300;
      return _child;
  }
	T get fromEmerald400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade400;
      return _child;
  }
	T get toEmerald400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade400;
      return _child;
  }
	T get fromEmerald500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade500;
      return _child;
  }
	T get toEmerald500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade500;
      return _child;
  }
	T get fromEmerald600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade600;
      return _child;
  }
	T get toEmerald600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade600;
      return _child;
  }
	T get fromEmerald700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade700;
      return _child;
  }
	T get toEmerald700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade700;
      return _child;
  }
	T get fromEmerald800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade800;
      return _child;
  }
	T get toEmerald800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade800;
      return _child;
  }
	T get fromEmerald900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.emerald.shade900;
      return _child;
  }
	T get toEmerald900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.emerald.shade900;
      return _child;
  }
	T get onDarkFromEmerald {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald;
      }
      return _child;
  }
	T get onDarkToEmerald {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald;
      }
      return _child;
  }
	T get onDarkFromEmerald50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade50;
      }
      return _child;
  }
	T get onDarkToEmerald50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade50;
      }
      return _child;
  }
	T get onDarkFromEmerald100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade100;
      }
      return _child;
  }
	T get onDarkToEmerald100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade100;
      }
      return _child;
  }
	T get onDarkFromEmerald200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade200;
      }
      return _child;
  }
	T get onDarkToEmerald200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade200;
      }
      return _child;
  }
	T get onDarkFromEmerald300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade300;
      }
      return _child;
  }
	T get onDarkToEmerald300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade300;
      }
      return _child;
  }
	T get onDarkFromEmerald400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade400;
      }
      return _child;
  }
	T get onDarkToEmerald400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade400;
      }
      return _child;
  }
	T get onDarkFromEmerald500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade500;
      }
      return _child;
  }
	T get onDarkToEmerald500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade500;
      }
      return _child;
  }
	T get onDarkFromEmerald600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade600;
      }
      return _child;
  }
	T get onDarkToEmerald600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade600;
      }
      return _child;
  }
	T get onDarkFromEmerald700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade700;
      }
      return _child;
  }
	T get onDarkToEmerald700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade700;
      }
      return _child;
  }
	T get onDarkFromEmerald800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade800;
      }
      return _child;
  }
	T get onDarkToEmerald800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade800;
      }
      return _child;
  }
	T get onDarkFromEmerald900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.emerald.shade900;
      }
      return _child;
  }
	T get onDarkToEmerald900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.emerald.shade900;
      }
      return _child;
  }
	T get fromTeal {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal;
      return _child;
  }
	T get toTeal {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal;
      return _child;
  }
	T get fromTeal50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade50;
      return _child;
  }
	T get toTeal50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade50;
      return _child;
  }
	T get fromTeal100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade100;
      return _child;
  }
	T get toTeal100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade100;
      return _child;
  }
	T get fromTeal200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade200;
      return _child;
  }
	T get toTeal200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade200;
      return _child;
  }
	T get fromTeal300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade300;
      return _child;
  }
	T get toTeal300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade300;
      return _child;
  }
	T get fromTeal400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade400;
      return _child;
  }
	T get toTeal400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade400;
      return _child;
  }
	T get fromTeal500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade500;
      return _child;
  }
	T get toTeal500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade500;
      return _child;
  }
	T get fromTeal600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade600;
      return _child;
  }
	T get toTeal600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade600;
      return _child;
  }
	T get fromTeal700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade700;
      return _child;
  }
	T get toTeal700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade700;
      return _child;
  }
	T get fromTeal800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade800;
      return _child;
  }
	T get toTeal800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade800;
      return _child;
  }
	T get fromTeal900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.teal.shade900;
      return _child;
  }
	T get toTeal900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.teal.shade900;
      return _child;
  }
	T get onDarkFromTeal {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal;
      }
      return _child;
  }
	T get onDarkToTeal {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal;
      }
      return _child;
  }
	T get onDarkFromTeal50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade50;
      }
      return _child;
  }
	T get onDarkToTeal50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade50;
      }
      return _child;
  }
	T get onDarkFromTeal100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade100;
      }
      return _child;
  }
	T get onDarkToTeal100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade100;
      }
      return _child;
  }
	T get onDarkFromTeal200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade200;
      }
      return _child;
  }
	T get onDarkToTeal200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade200;
      }
      return _child;
  }
	T get onDarkFromTeal300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade300;
      }
      return _child;
  }
	T get onDarkToTeal300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade300;
      }
      return _child;
  }
	T get onDarkFromTeal400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade400;
      }
      return _child;
  }
	T get onDarkToTeal400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade400;
      }
      return _child;
  }
	T get onDarkFromTeal500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade500;
      }
      return _child;
  }
	T get onDarkToTeal500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade500;
      }
      return _child;
  }
	T get onDarkFromTeal600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade600;
      }
      return _child;
  }
	T get onDarkToTeal600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade600;
      }
      return _child;
  }
	T get onDarkFromTeal700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade700;
      }
      return _child;
  }
	T get onDarkToTeal700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade700;
      }
      return _child;
  }
	T get onDarkFromTeal800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade800;
      }
      return _child;
  }
	T get onDarkToTeal800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade800;
      }
      return _child;
  }
	T get onDarkFromTeal900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.teal.shade900;
      }
      return _child;
  }
	T get onDarkToTeal900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.teal.shade900;
      }
      return _child;
  }
	T get fromCyan {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan;
      return _child;
  }
	T get toCyan {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan;
      return _child;
  }
	T get fromCyan50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade50;
      return _child;
  }
	T get toCyan50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade50;
      return _child;
  }
	T get fromCyan100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade100;
      return _child;
  }
	T get toCyan100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade100;
      return _child;
  }
	T get fromCyan200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade200;
      return _child;
  }
	T get toCyan200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade200;
      return _child;
  }
	T get fromCyan300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade300;
      return _child;
  }
	T get toCyan300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade300;
      return _child;
  }
	T get fromCyan400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade400;
      return _child;
  }
	T get toCyan400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade400;
      return _child;
  }
	T get fromCyan500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade500;
      return _child;
  }
	T get toCyan500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade500;
      return _child;
  }
	T get fromCyan600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade600;
      return _child;
  }
	T get toCyan600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade600;
      return _child;
  }
	T get fromCyan700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade700;
      return _child;
  }
	T get toCyan700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade700;
      return _child;
  }
	T get fromCyan800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade800;
      return _child;
  }
	T get toCyan800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade800;
      return _child;
  }
	T get fromCyan900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.cyan.shade900;
      return _child;
  }
	T get toCyan900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.cyan.shade900;
      return _child;
  }
	T get onDarkFromCyan {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan;
      }
      return _child;
  }
	T get onDarkToCyan {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan;
      }
      return _child;
  }
	T get onDarkFromCyan50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade50;
      }
      return _child;
  }
	T get onDarkToCyan50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade50;
      }
      return _child;
  }
	T get onDarkFromCyan100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade100;
      }
      return _child;
  }
	T get onDarkToCyan100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade100;
      }
      return _child;
  }
	T get onDarkFromCyan200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade200;
      }
      return _child;
  }
	T get onDarkToCyan200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade200;
      }
      return _child;
  }
	T get onDarkFromCyan300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade300;
      }
      return _child;
  }
	T get onDarkToCyan300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade300;
      }
      return _child;
  }
	T get onDarkFromCyan400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade400;
      }
      return _child;
  }
	T get onDarkToCyan400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade400;
      }
      return _child;
  }
	T get onDarkFromCyan500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade500;
      }
      return _child;
  }
	T get onDarkToCyan500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade500;
      }
      return _child;
  }
	T get onDarkFromCyan600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade600;
      }
      return _child;
  }
	T get onDarkToCyan600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade600;
      }
      return _child;
  }
	T get onDarkFromCyan700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade700;
      }
      return _child;
  }
	T get onDarkToCyan700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade700;
      }
      return _child;
  }
	T get onDarkFromCyan800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade800;
      }
      return _child;
  }
	T get onDarkToCyan800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade800;
      }
      return _child;
  }
	T get onDarkFromCyan900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.cyan.shade900;
      }
      return _child;
  }
	T get onDarkToCyan900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.cyan.shade900;
      }
      return _child;
  }
	T get fromLightBlue {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue;
      return _child;
  }
	T get toLightBlue {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue;
      return _child;
  }
	T get fromLightBlue50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade50;
      return _child;
  }
	T get toLightBlue50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade50;
      return _child;
  }
	T get fromLightBlue100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade100;
      return _child;
  }
	T get toLightBlue100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade100;
      return _child;
  }
	T get fromLightBlue200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade200;
      return _child;
  }
	T get toLightBlue200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade200;
      return _child;
  }
	T get fromLightBlue300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade300;
      return _child;
  }
	T get toLightBlue300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade300;
      return _child;
  }
	T get fromLightBlue400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade400;
      return _child;
  }
	T get toLightBlue400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade400;
      return _child;
  }
	T get fromLightBlue500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade500;
      return _child;
  }
	T get toLightBlue500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade500;
      return _child;
  }
	T get fromLightBlue600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade600;
      return _child;
  }
	T get toLightBlue600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade600;
      return _child;
  }
	T get fromLightBlue700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade700;
      return _child;
  }
	T get toLightBlue700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade700;
      return _child;
  }
	T get fromLightBlue800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade800;
      return _child;
  }
	T get toLightBlue800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade800;
      return _child;
  }
	T get fromLightBlue900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.lightBlue.shade900;
      return _child;
  }
	T get toLightBlue900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.lightBlue.shade900;
      return _child;
  }
	T get onDarkFromLightBlue {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue;
      }
      return _child;
  }
	T get onDarkToLightBlue {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue;
      }
      return _child;
  }
	T get onDarkFromLightBlue50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade50;
      }
      return _child;
  }
	T get onDarkToLightBlue50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade50;
      }
      return _child;
  }
	T get onDarkFromLightBlue100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade100;
      }
      return _child;
  }
	T get onDarkToLightBlue100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade100;
      }
      return _child;
  }
	T get onDarkFromLightBlue200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade200;
      }
      return _child;
  }
	T get onDarkToLightBlue200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade200;
      }
      return _child;
  }
	T get onDarkFromLightBlue300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade300;
      }
      return _child;
  }
	T get onDarkToLightBlue300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade300;
      }
      return _child;
  }
	T get onDarkFromLightBlue400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade400;
      }
      return _child;
  }
	T get onDarkToLightBlue400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade400;
      }
      return _child;
  }
	T get onDarkFromLightBlue500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade500;
      }
      return _child;
  }
	T get onDarkToLightBlue500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade500;
      }
      return _child;
  }
	T get onDarkFromLightBlue600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade600;
      }
      return _child;
  }
	T get onDarkToLightBlue600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade600;
      }
      return _child;
  }
	T get onDarkFromLightBlue700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade700;
      }
      return _child;
  }
	T get onDarkToLightBlue700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade700;
      }
      return _child;
  }
	T get onDarkFromLightBlue800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade800;
      }
      return _child;
  }
	T get onDarkToLightBlue800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade800;
      }
      return _child;
  }
	T get onDarkFromLightBlue900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.lightBlue.shade900;
      }
      return _child;
  }
	T get onDarkToLightBlue900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.lightBlue.shade900;
      }
      return _child;
  }
	T get fromBlue {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue;
      return _child;
  }
	T get toBlue {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue;
      return _child;
  }
	T get fromBlue50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade50;
      return _child;
  }
	T get toBlue50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade50;
      return _child;
  }
	T get fromBlue100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade100;
      return _child;
  }
	T get toBlue100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade100;
      return _child;
  }
	T get fromBlue200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade200;
      return _child;
  }
	T get toBlue200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade200;
      return _child;
  }
	T get fromBlue300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade300;
      return _child;
  }
	T get toBlue300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade300;
      return _child;
  }
	T get fromBlue400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade400;
      return _child;
  }
	T get toBlue400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade400;
      return _child;
  }
	T get fromBlue500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade500;
      return _child;
  }
	T get toBlue500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade500;
      return _child;
  }
	T get fromBlue600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade600;
      return _child;
  }
	T get toBlue600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade600;
      return _child;
  }
	T get fromBlue700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade700;
      return _child;
  }
	T get toBlue700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade700;
      return _child;
  }
	T get fromBlue800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade800;
      return _child;
  }
	T get toBlue800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade800;
      return _child;
  }
	T get fromBlue900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.blue.shade900;
      return _child;
  }
	T get toBlue900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.blue.shade900;
      return _child;
  }
	T get onDarkFromBlue {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue;
      }
      return _child;
  }
	T get onDarkToBlue {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue;
      }
      return _child;
  }
	T get onDarkFromBlue50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade50;
      }
      return _child;
  }
	T get onDarkToBlue50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade50;
      }
      return _child;
  }
	T get onDarkFromBlue100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade100;
      }
      return _child;
  }
	T get onDarkToBlue100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade100;
      }
      return _child;
  }
	T get onDarkFromBlue200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade200;
      }
      return _child;
  }
	T get onDarkToBlue200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade200;
      }
      return _child;
  }
	T get onDarkFromBlue300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade300;
      }
      return _child;
  }
	T get onDarkToBlue300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade300;
      }
      return _child;
  }
	T get onDarkFromBlue400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade400;
      }
      return _child;
  }
	T get onDarkToBlue400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade400;
      }
      return _child;
  }
	T get onDarkFromBlue500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade500;
      }
      return _child;
  }
	T get onDarkToBlue500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade500;
      }
      return _child;
  }
	T get onDarkFromBlue600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade600;
      }
      return _child;
  }
	T get onDarkToBlue600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade600;
      }
      return _child;
  }
	T get onDarkFromBlue700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade700;
      }
      return _child;
  }
	T get onDarkToBlue700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade700;
      }
      return _child;
  }
	T get onDarkFromBlue800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade800;
      }
      return _child;
  }
	T get onDarkToBlue800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade800;
      }
      return _child;
  }
	T get onDarkFromBlue900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.blue.shade900;
      }
      return _child;
  }
	T get onDarkToBlue900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.blue.shade900;
      }
      return _child;
  }
	T get fromIndigo {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo;
      return _child;
  }
	T get toIndigo {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo;
      return _child;
  }
	T get fromIndigo50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade50;
      return _child;
  }
	T get toIndigo50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade50;
      return _child;
  }
	T get fromIndigo100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade100;
      return _child;
  }
	T get toIndigo100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade100;
      return _child;
  }
	T get fromIndigo200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade200;
      return _child;
  }
	T get toIndigo200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade200;
      return _child;
  }
	T get fromIndigo300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade300;
      return _child;
  }
	T get toIndigo300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade300;
      return _child;
  }
	T get fromIndigo400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade400;
      return _child;
  }
	T get toIndigo400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade400;
      return _child;
  }
	T get fromIndigo500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade500;
      return _child;
  }
	T get toIndigo500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade500;
      return _child;
  }
	T get fromIndigo600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade600;
      return _child;
  }
	T get toIndigo600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade600;
      return _child;
  }
	T get fromIndigo700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade700;
      return _child;
  }
	T get toIndigo700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade700;
      return _child;
  }
	T get fromIndigo800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade800;
      return _child;
  }
	T get toIndigo800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade800;
      return _child;
  }
	T get fromIndigo900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.indigo.shade900;
      return _child;
  }
	T get toIndigo900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.indigo.shade900;
      return _child;
  }
	T get onDarkFromIndigo {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo;
      }
      return _child;
  }
	T get onDarkToIndigo {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo;
      }
      return _child;
  }
	T get onDarkFromIndigo50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade50;
      }
      return _child;
  }
	T get onDarkToIndigo50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade50;
      }
      return _child;
  }
	T get onDarkFromIndigo100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade100;
      }
      return _child;
  }
	T get onDarkToIndigo100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade100;
      }
      return _child;
  }
	T get onDarkFromIndigo200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade200;
      }
      return _child;
  }
	T get onDarkToIndigo200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade200;
      }
      return _child;
  }
	T get onDarkFromIndigo300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade300;
      }
      return _child;
  }
	T get onDarkToIndigo300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade300;
      }
      return _child;
  }
	T get onDarkFromIndigo400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade400;
      }
      return _child;
  }
	T get onDarkToIndigo400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade400;
      }
      return _child;
  }
	T get onDarkFromIndigo500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade500;
      }
      return _child;
  }
	T get onDarkToIndigo500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade500;
      }
      return _child;
  }
	T get onDarkFromIndigo600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade600;
      }
      return _child;
  }
	T get onDarkToIndigo600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade600;
      }
      return _child;
  }
	T get onDarkFromIndigo700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade700;
      }
      return _child;
  }
	T get onDarkToIndigo700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade700;
      }
      return _child;
  }
	T get onDarkFromIndigo800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade800;
      }
      return _child;
  }
	T get onDarkToIndigo800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade800;
      }
      return _child;
  }
	T get onDarkFromIndigo900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.indigo.shade900;
      }
      return _child;
  }
	T get onDarkToIndigo900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.indigo.shade900;
      }
      return _child;
  }
	T get fromViolet {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet;
      return _child;
  }
	T get toViolet {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet;
      return _child;
  }
	T get fromViolet50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade50;
      return _child;
  }
	T get toViolet50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade50;
      return _child;
  }
	T get fromViolet100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade100;
      return _child;
  }
	T get toViolet100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade100;
      return _child;
  }
	T get fromViolet200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade200;
      return _child;
  }
	T get toViolet200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade200;
      return _child;
  }
	T get fromViolet300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade300;
      return _child;
  }
	T get toViolet300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade300;
      return _child;
  }
	T get fromViolet400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade400;
      return _child;
  }
	T get toViolet400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade400;
      return _child;
  }
	T get fromViolet500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade500;
      return _child;
  }
	T get toViolet500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade500;
      return _child;
  }
	T get fromViolet600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade600;
      return _child;
  }
	T get toViolet600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade600;
      return _child;
  }
	T get fromViolet700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade700;
      return _child;
  }
	T get toViolet700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade700;
      return _child;
  }
	T get fromViolet800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade800;
      return _child;
  }
	T get toViolet800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade800;
      return _child;
  }
	T get fromViolet900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.violet.shade900;
      return _child;
  }
	T get toViolet900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.violet.shade900;
      return _child;
  }
	T get onDarkFromViolet {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet;
      }
      return _child;
  }
	T get onDarkToViolet {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet;
      }
      return _child;
  }
	T get onDarkFromViolet50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade50;
      }
      return _child;
  }
	T get onDarkToViolet50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade50;
      }
      return _child;
  }
	T get onDarkFromViolet100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade100;
      }
      return _child;
  }
	T get onDarkToViolet100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade100;
      }
      return _child;
  }
	T get onDarkFromViolet200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade200;
      }
      return _child;
  }
	T get onDarkToViolet200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade200;
      }
      return _child;
  }
	T get onDarkFromViolet300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade300;
      }
      return _child;
  }
	T get onDarkToViolet300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade300;
      }
      return _child;
  }
	T get onDarkFromViolet400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade400;
      }
      return _child;
  }
	T get onDarkToViolet400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade400;
      }
      return _child;
  }
	T get onDarkFromViolet500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade500;
      }
      return _child;
  }
	T get onDarkToViolet500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade500;
      }
      return _child;
  }
	T get onDarkFromViolet600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade600;
      }
      return _child;
  }
	T get onDarkToViolet600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade600;
      }
      return _child;
  }
	T get onDarkFromViolet700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade700;
      }
      return _child;
  }
	T get onDarkToViolet700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade700;
      }
      return _child;
  }
	T get onDarkFromViolet800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade800;
      }
      return _child;
  }
	T get onDarkToViolet800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade800;
      }
      return _child;
  }
	T get onDarkFromViolet900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.violet.shade900;
      }
      return _child;
  }
	T get onDarkToViolet900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.violet.shade900;
      }
      return _child;
  }
	T get fromPurple {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple;
      return _child;
  }
	T get toPurple {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple;
      return _child;
  }
	T get fromPurple50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade50;
      return _child;
  }
	T get toPurple50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade50;
      return _child;
  }
	T get fromPurple100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade100;
      return _child;
  }
	T get toPurple100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade100;
      return _child;
  }
	T get fromPurple200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade200;
      return _child;
  }
	T get toPurple200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade200;
      return _child;
  }
	T get fromPurple300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade300;
      return _child;
  }
	T get toPurple300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade300;
      return _child;
  }
	T get fromPurple400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade400;
      return _child;
  }
	T get toPurple400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade400;
      return _child;
  }
	T get fromPurple500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade500;
      return _child;
  }
	T get toPurple500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade500;
      return _child;
  }
	T get fromPurple600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade600;
      return _child;
  }
	T get toPurple600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade600;
      return _child;
  }
	T get fromPurple700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade700;
      return _child;
  }
	T get toPurple700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade700;
      return _child;
  }
	T get fromPurple800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade800;
      return _child;
  }
	T get toPurple800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade800;
      return _child;
  }
	T get fromPurple900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.purple.shade900;
      return _child;
  }
	T get toPurple900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.purple.shade900;
      return _child;
  }
	T get onDarkFromPurple {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple;
      }
      return _child;
  }
	T get onDarkToPurple {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple;
      }
      return _child;
  }
	T get onDarkFromPurple50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade50;
      }
      return _child;
  }
	T get onDarkToPurple50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade50;
      }
      return _child;
  }
	T get onDarkFromPurple100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade100;
      }
      return _child;
  }
	T get onDarkToPurple100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade100;
      }
      return _child;
  }
	T get onDarkFromPurple200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade200;
      }
      return _child;
  }
	T get onDarkToPurple200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade200;
      }
      return _child;
  }
	T get onDarkFromPurple300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade300;
      }
      return _child;
  }
	T get onDarkToPurple300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade300;
      }
      return _child;
  }
	T get onDarkFromPurple400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade400;
      }
      return _child;
  }
	T get onDarkToPurple400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade400;
      }
      return _child;
  }
	T get onDarkFromPurple500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade500;
      }
      return _child;
  }
	T get onDarkToPurple500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade500;
      }
      return _child;
  }
	T get onDarkFromPurple600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade600;
      }
      return _child;
  }
	T get onDarkToPurple600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade600;
      }
      return _child;
  }
	T get onDarkFromPurple700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade700;
      }
      return _child;
  }
	T get onDarkToPurple700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade700;
      }
      return _child;
  }
	T get onDarkFromPurple800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade800;
      }
      return _child;
  }
	T get onDarkToPurple800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade800;
      }
      return _child;
  }
	T get onDarkFromPurple900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.purple.shade900;
      }
      return _child;
  }
	T get onDarkToPurple900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.purple.shade900;
      }
      return _child;
  }
	T get fromFuchsia {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia;
      return _child;
  }
	T get toFuchsia {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia;
      return _child;
  }
	T get fromFuchsia50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade50;
      return _child;
  }
	T get toFuchsia50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade50;
      return _child;
  }
	T get fromFuchsia100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade100;
      return _child;
  }
	T get toFuchsia100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade100;
      return _child;
  }
	T get fromFuchsia200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade200;
      return _child;
  }
	T get toFuchsia200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade200;
      return _child;
  }
	T get fromFuchsia300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade300;
      return _child;
  }
	T get toFuchsia300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade300;
      return _child;
  }
	T get fromFuchsia400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade400;
      return _child;
  }
	T get toFuchsia400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade400;
      return _child;
  }
	T get fromFuchsia500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade500;
      return _child;
  }
	T get toFuchsia500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade500;
      return _child;
  }
	T get fromFuchsia600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade600;
      return _child;
  }
	T get toFuchsia600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade600;
      return _child;
  }
	T get fromFuchsia700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade700;
      return _child;
  }
	T get toFuchsia700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade700;
      return _child;
  }
	T get fromFuchsia800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade800;
      return _child;
  }
	T get toFuchsia800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade800;
      return _child;
  }
	T get fromFuchsia900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.fuchsia.shade900;
      return _child;
  }
	T get toFuchsia900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.fuchsia.shade900;
      return _child;
  }
	T get onDarkFromFuchsia {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia;
      }
      return _child;
  }
	T get onDarkToFuchsia {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia;
      }
      return _child;
  }
	T get onDarkFromFuchsia50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade50;
      }
      return _child;
  }
	T get onDarkToFuchsia50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade50;
      }
      return _child;
  }
	T get onDarkFromFuchsia100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade100;
      }
      return _child;
  }
	T get onDarkToFuchsia100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade100;
      }
      return _child;
  }
	T get onDarkFromFuchsia200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade200;
      }
      return _child;
  }
	T get onDarkToFuchsia200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade200;
      }
      return _child;
  }
	T get onDarkFromFuchsia300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade300;
      }
      return _child;
  }
	T get onDarkToFuchsia300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade300;
      }
      return _child;
  }
	T get onDarkFromFuchsia400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade400;
      }
      return _child;
  }
	T get onDarkToFuchsia400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade400;
      }
      return _child;
  }
	T get onDarkFromFuchsia500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade500;
      }
      return _child;
  }
	T get onDarkToFuchsia500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade500;
      }
      return _child;
  }
	T get onDarkFromFuchsia600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade600;
      }
      return _child;
  }
	T get onDarkToFuchsia600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade600;
      }
      return _child;
  }
	T get onDarkFromFuchsia700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade700;
      }
      return _child;
  }
	T get onDarkToFuchsia700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade700;
      }
      return _child;
  }
	T get onDarkFromFuchsia800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade800;
      }
      return _child;
  }
	T get onDarkToFuchsia800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade800;
      }
      return _child;
  }
	T get onDarkFromFuchsia900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.fuchsia.shade900;
      }
      return _child;
  }
	T get onDarkToFuchsia900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.fuchsia.shade900;
      }
      return _child;
  }
	T get fromPink {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink;
      return _child;
  }
	T get toPink {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink;
      return _child;
  }
	T get fromPink50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade50;
      return _child;
  }
	T get toPink50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade50;
      return _child;
  }
	T get fromPink100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade100;
      return _child;
  }
	T get toPink100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade100;
      return _child;
  }
	T get fromPink200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade200;
      return _child;
  }
	T get toPink200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade200;
      return _child;
  }
	T get fromPink300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade300;
      return _child;
  }
	T get toPink300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade300;
      return _child;
  }
	T get fromPink400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade400;
      return _child;
  }
	T get toPink400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade400;
      return _child;
  }
	T get fromPink500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade500;
      return _child;
  }
	T get toPink500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade500;
      return _child;
  }
	T get fromPink600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade600;
      return _child;
  }
	T get toPink600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade600;
      return _child;
  }
	T get fromPink700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade700;
      return _child;
  }
	T get toPink700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade700;
      return _child;
  }
	T get fromPink800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade800;
      return _child;
  }
	T get toPink800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade800;
      return _child;
  }
	T get fromPink900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.pink.shade900;
      return _child;
  }
	T get toPink900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.pink.shade900;
      return _child;
  }
	T get onDarkFromPink {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink;
      }
      return _child;
  }
	T get onDarkToPink {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink;
      }
      return _child;
  }
	T get onDarkFromPink50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade50;
      }
      return _child;
  }
	T get onDarkToPink50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade50;
      }
      return _child;
  }
	T get onDarkFromPink100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade100;
      }
      return _child;
  }
	T get onDarkToPink100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade100;
      }
      return _child;
  }
	T get onDarkFromPink200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade200;
      }
      return _child;
  }
	T get onDarkToPink200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade200;
      }
      return _child;
  }
	T get onDarkFromPink300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade300;
      }
      return _child;
  }
	T get onDarkToPink300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade300;
      }
      return _child;
  }
	T get onDarkFromPink400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade400;
      }
      return _child;
  }
	T get onDarkToPink400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade400;
      }
      return _child;
  }
	T get onDarkFromPink500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade500;
      }
      return _child;
  }
	T get onDarkToPink500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade500;
      }
      return _child;
  }
	T get onDarkFromPink600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade600;
      }
      return _child;
  }
	T get onDarkToPink600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade600;
      }
      return _child;
  }
	T get onDarkFromPink700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade700;
      }
      return _child;
  }
	T get onDarkToPink700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade700;
      }
      return _child;
  }
	T get onDarkFromPink800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade800;
      }
      return _child;
  }
	T get onDarkToPink800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade800;
      }
      return _child;
  }
	T get onDarkFromPink900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.pink.shade900;
      }
      return _child;
  }
	T get onDarkToPink900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.pink.shade900;
      }
      return _child;
  }
	T get fromRose {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose;
      return _child;
  }
	T get toRose {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose;
      return _child;
  }
	T get fromRose50 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade50;
      return _child;
  }
	T get toRose50 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade50;
      return _child;
  }
	T get fromRose100 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade100;
      return _child;
  }
	T get toRose100 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade100;
      return _child;
  }
	T get fromRose200 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade200;
      return _child;
  }
	T get toRose200 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade200;
      return _child;
  }
	T get fromRose300 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade300;
      return _child;
  }
	T get toRose300 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade300;
      return _child;
  }
	T get fromRose400 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade400;
      return _child;
  }
	T get toRose400 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade400;
      return _child;
  }
	T get fromRose500 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade500;
      return _child;
  }
	T get toRose500 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade500;
      return _child;
  }
	T get fromRose600 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade600;
      return _child;
  }
	T get toRose600 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade600;
      return _child;
  }
	T get fromRose700 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade700;
      return _child;
  }
	T get toRose700 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade700;
      return _child;
  }
	T get fromRose800 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade800;
      return _child;
  }
	T get toRose800 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade800;
      return _child;
  }
	T get fromRose900 {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.rose.shade900;
      return _child;
  }
	T get toRose900 {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.rose.shade900;
      return _child;
  }
	T get onDarkFromRose {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose;
      }
      return _child;
  }
	T get onDarkToRose {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose;
      }
      return _child;
  }
	T get onDarkFromRose50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade50;
      }
      return _child;
  }
	T get onDarkToRose50 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade50;
      }
      return _child;
  }
	T get onDarkFromRose100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade100;
      }
      return _child;
  }
	T get onDarkToRose100 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade100;
      }
      return _child;
  }
	T get onDarkFromRose200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade200;
      }
      return _child;
  }
	T get onDarkToRose200 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade200;
      }
      return _child;
  }
	T get onDarkFromRose300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade300;
      }
      return _child;
  }
	T get onDarkToRose300 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade300;
      }
      return _child;
  }
	T get onDarkFromRose400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade400;
      }
      return _child;
  }
	T get onDarkToRose400 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade400;
      }
      return _child;
  }
	T get onDarkFromRose500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade500;
      }
      return _child;
  }
	T get onDarkToRose500 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade500;
      }
      return _child;
  }
	T get onDarkFromRose600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade600;
      }
      return _child;
  }
	T get onDarkToRose600 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade600;
      }
      return _child;
  }
	T get onDarkFromRose700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade700;
      }
      return _child;
  }
	T get onDarkToRose700 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade700;
      }
      return _child;
  }
	T get onDarkFromRose800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade800;
      }
      return _child;
  }
	T get onDarkToRose800 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade800;
      }
      return _child;
  }
	T get onDarkFromRose900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.rose.shade900;
      }
      return _child;
  }
	T get onDarkToRose900 {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.rose.shade900;
      }
      return _child;
  }
	T get fromPrimary {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.primary;
      return _child;
  }
	T get toPrimary {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.primary;
      return _child;
  }
	T get onDarkFromPrimary {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.primary;
      }
      return _child;
  }
	T get onDarkToPrimary {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.primary;
      }
      return _child;
  }
	
}

