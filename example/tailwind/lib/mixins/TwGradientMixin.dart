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
  Brightness _brightness =
      Theme.of(TwService.appKey.currentContext!).brightness;

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
    if (!_needsDarkVariant)
      gradientColors[0] = TwColors.primaryLightColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[1] = TwColors.primaryLightColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[0] = TwColors.primaryDarkColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[1] = TwColors.primaryDarkColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[0] = TwColors.secondaryColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[1] = TwColors.secondaryColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[0] = TwColors.backgroundColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[1] = TwColors.backgroundColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[0] = TwColors.scaffoldBackgroundColor(context);
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
    if (!_needsDarkVariant)
      gradientColors[1] = TwColors.scaffoldBackgroundColor(context);
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

  T get fromSlate {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate;
    return _child;
  }

  T get toSlate {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate;
    return _child;
  }

  T get fromSlate50 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade50;
    return _child;
  }

  T get toSlate50 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade50;
    return _child;
  }

  T get fromSlate100 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade100;
    return _child;
  }

  T get toSlate100 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade100;
    return _child;
  }

  T get fromSlate200 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade200;
    return _child;
  }

  T get toSlate200 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade200;
    return _child;
  }

  T get fromSlate300 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade300;
    return _child;
  }

  T get toSlate300 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade300;
    return _child;
  }

  T get fromSlate400 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade400;
    return _child;
  }

  T get toSlate400 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade400;
    return _child;
  }

  T get fromSlate500 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade500;
    return _child;
  }

  T get toSlate500 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade500;
    return _child;
  }

  T get fromSlate600 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade600;
    return _child;
  }

  T get toSlate600 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade600;
    return _child;
  }

  T get fromSlate700 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade700;
    return _child;
  }

  T get toSlate700 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade700;
    return _child;
  }

  T get fromSlate800 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade800;
    return _child;
  }

  T get toSlate800 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade800;
    return _child;
  }

  T get fromSlate900 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.slate.shade900;
    return _child;
  }

  T get toSlate900 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.slate.shade900;
    return _child;
  }

  T get onDarkFromSlate {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate;
    }
    return _child;
  }

  T get onDarkToSlate {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate;
    }
    return _child;
  }

  T get onDarkFromSlate50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade50;
    }
    return _child;
  }

  T get onDarkToSlate50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade50;
    }
    return _child;
  }

  T get onDarkFromSlate100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade100;
    }
    return _child;
  }

  T get onDarkToSlate100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade100;
    }
    return _child;
  }

  T get onDarkFromSlate200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade200;
    }
    return _child;
  }

  T get onDarkToSlate200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade200;
    }
    return _child;
  }

  T get onDarkFromSlate300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade300;
    }
    return _child;
  }

  T get onDarkToSlate300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade300;
    }
    return _child;
  }

  T get onDarkFromSlate400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade400;
    }
    return _child;
  }

  T get onDarkToSlate400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade400;
    }
    return _child;
  }

  T get onDarkFromSlate500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade500;
    }
    return _child;
  }

  T get onDarkToSlate500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade500;
    }
    return _child;
  }

  T get onDarkFromSlate600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade600;
    }
    return _child;
  }

  T get onDarkToSlate600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade600;
    }
    return _child;
  }

  T get onDarkFromSlate700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade700;
    }
    return _child;
  }

  T get onDarkToSlate700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade700;
    }
    return _child;
  }

  T get onDarkFromSlate800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade800;
    }
    return _child;
  }

  T get onDarkToSlate800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade800;
    }
    return _child;
  }

  T get onDarkFromSlate900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.slate.shade900;
    }
    return _child;
  }

  T get onDarkToSlate900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.slate.shade900;
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

  T get fromZinc {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc;
    return _child;
  }

  T get toZinc {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc;
    return _child;
  }

  T get fromZinc50 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade50;
    return _child;
  }

  T get toZinc50 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade50;
    return _child;
  }

  T get fromZinc100 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade100;
    return _child;
  }

  T get toZinc100 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade100;
    return _child;
  }

  T get fromZinc200 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade200;
    return _child;
  }

  T get toZinc200 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade200;
    return _child;
  }

  T get fromZinc300 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade300;
    return _child;
  }

  T get toZinc300 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade300;
    return _child;
  }

  T get fromZinc400 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade400;
    return _child;
  }

  T get toZinc400 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade400;
    return _child;
  }

  T get fromZinc500 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade500;
    return _child;
  }

  T get toZinc500 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade500;
    return _child;
  }

  T get fromZinc600 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade600;
    return _child;
  }

  T get toZinc600 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade600;
    return _child;
  }

  T get fromZinc700 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade700;
    return _child;
  }

  T get toZinc700 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade700;
    return _child;
  }

  T get fromZinc800 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade800;
    return _child;
  }

  T get toZinc800 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade800;
    return _child;
  }

  T get fromZinc900 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.zinc.shade900;
    return _child;
  }

  T get toZinc900 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.zinc.shade900;
    return _child;
  }

  T get onDarkFromZinc {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc;
    }
    return _child;
  }

  T get onDarkToZinc {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc;
    }
    return _child;
  }

  T get onDarkFromZinc50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade50;
    }
    return _child;
  }

  T get onDarkToZinc50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade50;
    }
    return _child;
  }

  T get onDarkFromZinc100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade100;
    }
    return _child;
  }

  T get onDarkToZinc100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade100;
    }
    return _child;
  }

  T get onDarkFromZinc200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade200;
    }
    return _child;
  }

  T get onDarkToZinc200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade200;
    }
    return _child;
  }

  T get onDarkFromZinc300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade300;
    }
    return _child;
  }

  T get onDarkToZinc300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade300;
    }
    return _child;
  }

  T get onDarkFromZinc400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade400;
    }
    return _child;
  }

  T get onDarkToZinc400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade400;
    }
    return _child;
  }

  T get onDarkFromZinc500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade500;
    }
    return _child;
  }

  T get onDarkToZinc500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade500;
    }
    return _child;
  }

  T get onDarkFromZinc600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade600;
    }
    return _child;
  }

  T get onDarkToZinc600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade600;
    }
    return _child;
  }

  T get onDarkFromZinc700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade700;
    }
    return _child;
  }

  T get onDarkToZinc700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade700;
    }
    return _child;
  }

  T get onDarkFromZinc800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade800;
    }
    return _child;
  }

  T get onDarkToZinc800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade800;
    }
    return _child;
  }

  T get onDarkFromZinc900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.zinc.shade900;
    }
    return _child;
  }

  T get onDarkToZinc900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.zinc.shade900;
    }
    return _child;
  }

  T get fromNeutral {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral;
    return _child;
  }

  T get toNeutral {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral;
    return _child;
  }

  T get fromNeutral50 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade50;
    return _child;
  }

  T get toNeutral50 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade50;
    return _child;
  }

  T get fromNeutral100 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade100;
    return _child;
  }

  T get toNeutral100 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade100;
    return _child;
  }

  T get fromNeutral200 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade200;
    return _child;
  }

  T get toNeutral200 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade200;
    return _child;
  }

  T get fromNeutral300 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade300;
    return _child;
  }

  T get toNeutral300 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade300;
    return _child;
  }

  T get fromNeutral400 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade400;
    return _child;
  }

  T get toNeutral400 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade400;
    return _child;
  }

  T get fromNeutral500 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade500;
    return _child;
  }

  T get toNeutral500 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade500;
    return _child;
  }

  T get fromNeutral600 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade600;
    return _child;
  }

  T get toNeutral600 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade600;
    return _child;
  }

  T get fromNeutral700 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade700;
    return _child;
  }

  T get toNeutral700 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade700;
    return _child;
  }

  T get fromNeutral800 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade800;
    return _child;
  }

  T get toNeutral800 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade800;
    return _child;
  }

  T get fromNeutral900 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.neutral.shade900;
    return _child;
  }

  T get toNeutral900 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.neutral.shade900;
    return _child;
  }

  T get onDarkFromNeutral {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral;
    }
    return _child;
  }

  T get onDarkToNeutral {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral;
    }
    return _child;
  }

  T get onDarkFromNeutral50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade50;
    }
    return _child;
  }

  T get onDarkToNeutral50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade50;
    }
    return _child;
  }

  T get onDarkFromNeutral100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade100;
    }
    return _child;
  }

  T get onDarkToNeutral100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade100;
    }
    return _child;
  }

  T get onDarkFromNeutral200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade200;
    }
    return _child;
  }

  T get onDarkToNeutral200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade200;
    }
    return _child;
  }

  T get onDarkFromNeutral300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade300;
    }
    return _child;
  }

  T get onDarkToNeutral300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade300;
    }
    return _child;
  }

  T get onDarkFromNeutral400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade400;
    }
    return _child;
  }

  T get onDarkToNeutral400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade400;
    }
    return _child;
  }

  T get onDarkFromNeutral500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade500;
    }
    return _child;
  }

  T get onDarkToNeutral500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade500;
    }
    return _child;
  }

  T get onDarkFromNeutral600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade600;
    }
    return _child;
  }

  T get onDarkToNeutral600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade600;
    }
    return _child;
  }

  T get onDarkFromNeutral700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade700;
    }
    return _child;
  }

  T get onDarkToNeutral700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade700;
    }
    return _child;
  }

  T get onDarkFromNeutral800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade800;
    }
    return _child;
  }

  T get onDarkToNeutral800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade800;
    }
    return _child;
  }

  T get onDarkFromNeutral900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.neutral.shade900;
    }
    return _child;
  }

  T get onDarkToNeutral900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.neutral.shade900;
    }
    return _child;
  }

  T get fromStone {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone;
    return _child;
  }

  T get toStone {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone;
    return _child;
  }

  T get fromStone50 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade50;
    return _child;
  }

  T get toStone50 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade50;
    return _child;
  }

  T get fromStone100 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade100;
    return _child;
  }

  T get toStone100 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade100;
    return _child;
  }

  T get fromStone200 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade200;
    return _child;
  }

  T get toStone200 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade200;
    return _child;
  }

  T get fromStone300 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade300;
    return _child;
  }

  T get toStone300 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade300;
    return _child;
  }

  T get fromStone400 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade400;
    return _child;
  }

  T get toStone400 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade400;
    return _child;
  }

  T get fromStone500 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade500;
    return _child;
  }

  T get toStone500 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade500;
    return _child;
  }

  T get fromStone600 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade600;
    return _child;
  }

  T get toStone600 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade600;
    return _child;
  }

  T get fromStone700 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade700;
    return _child;
  }

  T get toStone700 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade700;
    return _child;
  }

  T get fromStone800 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade800;
    return _child;
  }

  T get toStone800 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade800;
    return _child;
  }

  T get fromStone900 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.stone.shade900;
    return _child;
  }

  T get toStone900 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.stone.shade900;
    return _child;
  }

  T get onDarkFromStone {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone;
    }
    return _child;
  }

  T get onDarkToStone {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone;
    }
    return _child;
  }

  T get onDarkFromStone50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade50;
    }
    return _child;
  }

  T get onDarkToStone50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade50;
    }
    return _child;
  }

  T get onDarkFromStone100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade100;
    }
    return _child;
  }

  T get onDarkToStone100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade100;
    }
    return _child;
  }

  T get onDarkFromStone200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade200;
    }
    return _child;
  }

  T get onDarkToStone200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade200;
    }
    return _child;
  }

  T get onDarkFromStone300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade300;
    }
    return _child;
  }

  T get onDarkToStone300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade300;
    }
    return _child;
  }

  T get onDarkFromStone400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade400;
    }
    return _child;
  }

  T get onDarkToStone400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade400;
    }
    return _child;
  }

  T get onDarkFromStone500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade500;
    }
    return _child;
  }

  T get onDarkToStone500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade500;
    }
    return _child;
  }

  T get onDarkFromStone600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade600;
    }
    return _child;
  }

  T get onDarkToStone600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade600;
    }
    return _child;
  }

  T get onDarkFromStone700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade700;
    }
    return _child;
  }

  T get onDarkToStone700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade700;
    }
    return _child;
  }

  T get onDarkFromStone800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade800;
    }
    return _child;
  }

  T get onDarkToStone800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade800;
    }
    return _child;
  }

  T get onDarkFromStone900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.stone.shade900;
    }
    return _child;
  }

  T get onDarkToStone900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.stone.shade900;
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

  T get fromSky {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky;
    return _child;
  }

  T get toSky {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky;
    return _child;
  }

  T get fromSky50 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade50;
    return _child;
  }

  T get toSky50 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade50;
    return _child;
  }

  T get fromSky100 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade100;
    return _child;
  }

  T get toSky100 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade100;
    return _child;
  }

  T get fromSky200 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade200;
    return _child;
  }

  T get toSky200 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade200;
    return _child;
  }

  T get fromSky300 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade300;
    return _child;
  }

  T get toSky300 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade300;
    return _child;
  }

  T get fromSky400 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade400;
    return _child;
  }

  T get toSky400 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade400;
    return _child;
  }

  T get fromSky500 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade500;
    return _child;
  }

  T get toSky500 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade500;
    return _child;
  }

  T get fromSky600 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade600;
    return _child;
  }

  T get toSky600 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade600;
    return _child;
  }

  T get fromSky700 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade700;
    return _child;
  }

  T get toSky700 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade700;
    return _child;
  }

  T get fromSky800 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade800;
    return _child;
  }

  T get toSky800 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade800;
    return _child;
  }

  T get fromSky900 {
    if (!_needsDarkVariant) gradientColors[0] = TwColors.sky.shade900;
    return _child;
  }

  T get toSky900 {
    if (!_needsDarkVariant) gradientColors[1] = TwColors.sky.shade900;
    return _child;
  }

  T get onDarkFromSky {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky;
    }
    return _child;
  }

  T get onDarkToSky {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky;
    }
    return _child;
  }

  T get onDarkFromSky50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade50;
    }
    return _child;
  }

  T get onDarkToSky50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade50;
    }
    return _child;
  }

  T get onDarkFromSky100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade100;
    }
    return _child;
  }

  T get onDarkToSky100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade100;
    }
    return _child;
  }

  T get onDarkFromSky200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade200;
    }
    return _child;
  }

  T get onDarkToSky200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade200;
    }
    return _child;
  }

  T get onDarkFromSky300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade300;
    }
    return _child;
  }

  T get onDarkToSky300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade300;
    }
    return _child;
  }

  T get onDarkFromSky400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade400;
    }
    return _child;
  }

  T get onDarkToSky400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade400;
    }
    return _child;
  }

  T get onDarkFromSky500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade500;
    }
    return _child;
  }

  T get onDarkToSky500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade500;
    }
    return _child;
  }

  T get onDarkFromSky600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade600;
    }
    return _child;
  }

  T get onDarkToSky600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade600;
    }
    return _child;
  }

  T get onDarkFromSky700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade700;
    }
    return _child;
  }

  T get onDarkToSky700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade700;
    }
    return _child;
  }

  T get onDarkFromSky800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade800;
    }
    return _child;
  }

  T get onDarkToSky800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade800;
    }
    return _child;
  }

  T get onDarkFromSky900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = TwColors.sky.shade900;
    }
    return _child;
  }

  T get onDarkToSky900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = TwColors.sky.shade900;
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
