import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwGradientMixin<T> {
  late T _child;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  bool _needsDarkVariant = false;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
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
  
  // Gradient Colors
  /// Flutter Theme Colors
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

  T fromPrimaryColorDark(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.primaryColorDark(context);
    return _child;
  }

  T onDarkFromPrimaryColorDark(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.primaryColorDark(context);
    }
    return _child;
  }

  T toPrimaryColorDark(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.primaryColorDark(context);
    return _child;
  }

  T onDarkToPrimaryColorDark(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.primaryColorDark(context);
    }
    return _child;
  }

  T fromSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.secondary(context);
    return _child;
  }

  T onDarkFromSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.secondary(context);
    }
    return _child;
  }

  T toSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.secondary(context);
    return _child;
  }

  T onDarkToSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.secondary(context);
    }
    return _child;
  }

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

  T get fromBlack {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.black;
      return _child;
  }
	T get toBlack {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.black;
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
	T get fromTransparent {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.transparent;
      return _child;
  }
	T get toTransparent {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.transparent;
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
	T get fromPrimary {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.primary;
      return _child;
  }
	T get toPrimary {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.primary;
      return _child;
  }
	
}

