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
  Brightness _brightness =
      Theme.of(TwService.appKey.currentContext!).brightness;

  @protected
  bool _hasBorder = false;
  Color? twBorderColor = Colors.grey[500];
  BorderStyle? twBorderStyle = BorderStyle.solid;
  double twBorderWidth = 1;

  @protected
  void setChildForBorder(T child) {
    _child = child;
  }

  @Deprecated(
      'This extension is deprecated now and will no longer be available in future please consider using [hasBorder] instead')
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

  T get borderBase {
    twBorderWidth = TwSizes.spacer;
    return _child;
  }

  T get border0 {
    twBorderWidth = TwSizes.spacer0;
    return _child;
  }

  T get border1 {
    twBorderWidth = TwSizes.spacer1;
    return _child;
  }

  T get border2 {
    twBorderWidth = TwSizes.spacer2;
    return _child;
  }

  T get border3 {
    twBorderWidth = TwSizes.spacer3;
    return _child;
  }

  T get border4 {
    twBorderWidth = TwSizes.spacer4;
    return _child;
  }

  T get border5 {
    twBorderWidth = TwSizes.spacer5;
    return _child;
  }

  T get border6 {
    twBorderWidth = TwSizes.spacer6;
    return _child;
  }

  T get border7 {
    twBorderWidth = TwSizes.spacer7;
    return _child;
  }

  T get border8 {
    twBorderWidth = TwSizes.spacer8;
    return _child;
  }

  T get border9 {
    twBorderWidth = TwSizes.spacer9;
    return _child;
  }

  T get border10 {
    twBorderWidth = TwSizes.spacer10;
    return _child;
  }

  T get border11 {
    twBorderWidth = TwSizes.spacer11;
    return _child;
  }

  T get border12 {
    twBorderWidth = TwSizes.spacer12;
    return _child;
  }

  T get border14 {
    twBorderWidth = TwSizes.spacer14;
    return _child;
  }

  T get border16 {
    twBorderWidth = TwSizes.spacer16;
    return _child;
  }

  T get border20 {
    twBorderWidth = TwSizes.spacer20;
    return _child;
  }

  T get border24 {
    twBorderWidth = TwSizes.spacer24;
    return _child;
  }

  T get border28 {
    twBorderWidth = TwSizes.spacer28;
    return _child;
  }

  T get border32 {
    twBorderWidth = TwSizes.spacer32;
    return _child;
  }

  T get border36 {
    twBorderWidth = TwSizes.spacer36;
    return _child;
  }

  T get border40 {
    twBorderWidth = TwSizes.spacer40;
    return _child;
  }

  T get border44 {
    twBorderWidth = TwSizes.spacer44;
    return _child;
  }

  T get border48 {
    twBorderWidth = TwSizes.spacer48;
    return _child;
  }

  T get border52 {
    twBorderWidth = TwSizes.spacer52;
    return _child;
  }

  T get border56 {
    twBorderWidth = TwSizes.spacer56;
    return _child;
  }

  T get border60 {
    twBorderWidth = TwSizes.spacer60;
    return _child;
  }

  T get border64 {
    twBorderWidth = TwSizes.spacer64;
    return _child;
  }

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
    if (!_needsDarkVariant)
      twBorderColor = TwColors.scaffoldBackgroundColor(context);
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

  T get borderBlack {
    if (!_needsDarkVariant) twBorderColor = TwColors.black;
    return _child;
  }

  T get onDarkBorderBlack {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.black;
    }
    return _child;
  }

  T get borderWhite {
    if (!_needsDarkVariant) twBorderColor = TwColors.white;
    return _child;
  }

  T get onDarkBorderWhite {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.white;
    }
    return _child;
  }

  T get borderTransparent {
    if (!_needsDarkVariant) twBorderColor = TwColors.transparent;
    return _child;
  }

  T get onDarkBorderTransparent {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.transparent;
    }
    return _child;
  }

  T get borderSlate {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate;
    return _child;
  }

  T get borderSlate50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade50;
    return _child;
  }

  T get borderSlate100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade100;
    return _child;
  }

  T get borderSlate200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade200;
    return _child;
  }

  T get borderSlate300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade300;
    return _child;
  }

  T get borderSlate400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade400;
    return _child;
  }

  T get borderSlate500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade500;
    return _child;
  }

  T get borderSlate600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade600;
    return _child;
  }

  T get borderSlate700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade700;
    return _child;
  }

  T get borderSlate800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade800;
    return _child;
  }

  T get borderSlate900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.slate.shade900;
    return _child;
  }

  T get onDarkBorderSlate {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate;
    }
    return _child;
  }

  T get onDarkBorderSlate50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade50;
    }
    return _child;
  }

  T get onDarkBorderSlate100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade100;
    }
    return _child;
  }

  T get onDarkBorderSlate200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade200;
    }
    return _child;
  }

  T get onDarkBorderSlate300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade300;
    }
    return _child;
  }

  T get onDarkBorderSlate400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade400;
    }
    return _child;
  }

  T get onDarkBorderSlate500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade500;
    }
    return _child;
  }

  T get onDarkBorderSlate600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade600;
    }
    return _child;
  }

  T get onDarkBorderSlate700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade700;
    }
    return _child;
  }

  T get onDarkBorderSlate800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade800;
    }
    return _child;
  }

  T get onDarkBorderSlate900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.slate.shade900;
    }
    return _child;
  }

  T get borderGray {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray;
    return _child;
  }

  T get borderGray50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade50;
    return _child;
  }

  T get borderGray100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade100;
    return _child;
  }

  T get borderGray200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade200;
    return _child;
  }

  T get borderGray300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade300;
    return _child;
  }

  T get borderGray400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade400;
    return _child;
  }

  T get borderGray500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade500;
    return _child;
  }

  T get borderGray600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade600;
    return _child;
  }

  T get borderGray700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade700;
    return _child;
  }

  T get borderGray800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade800;
    return _child;
  }

  T get borderGray900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.gray.shade900;
    return _child;
  }

  T get onDarkBorderGray {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray;
    }
    return _child;
  }

  T get onDarkBorderGray50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade50;
    }
    return _child;
  }

  T get onDarkBorderGray100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade100;
    }
    return _child;
  }

  T get onDarkBorderGray200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade200;
    }
    return _child;
  }

  T get onDarkBorderGray300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade300;
    }
    return _child;
  }

  T get onDarkBorderGray400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade400;
    }
    return _child;
  }

  T get onDarkBorderGray500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade500;
    }
    return _child;
  }

  T get onDarkBorderGray600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade600;
    }
    return _child;
  }

  T get onDarkBorderGray700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade700;
    }
    return _child;
  }

  T get onDarkBorderGray800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade800;
    }
    return _child;
  }

  T get onDarkBorderGray900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.gray.shade900;
    }
    return _child;
  }

  T get borderZinc {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc;
    return _child;
  }

  T get borderZinc50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade50;
    return _child;
  }

  T get borderZinc100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade100;
    return _child;
  }

  T get borderZinc200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade200;
    return _child;
  }

  T get borderZinc300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade300;
    return _child;
  }

  T get borderZinc400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade400;
    return _child;
  }

  T get borderZinc500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade500;
    return _child;
  }

  T get borderZinc600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade600;
    return _child;
  }

  T get borderZinc700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade700;
    return _child;
  }

  T get borderZinc800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade800;
    return _child;
  }

  T get borderZinc900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.zinc.shade900;
    return _child;
  }

  T get onDarkBorderZinc {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc;
    }
    return _child;
  }

  T get onDarkBorderZinc50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade50;
    }
    return _child;
  }

  T get onDarkBorderZinc100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade100;
    }
    return _child;
  }

  T get onDarkBorderZinc200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade200;
    }
    return _child;
  }

  T get onDarkBorderZinc300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade300;
    }
    return _child;
  }

  T get onDarkBorderZinc400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade400;
    }
    return _child;
  }

  T get onDarkBorderZinc500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade500;
    }
    return _child;
  }

  T get onDarkBorderZinc600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade600;
    }
    return _child;
  }

  T get onDarkBorderZinc700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade700;
    }
    return _child;
  }

  T get onDarkBorderZinc800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade800;
    }
    return _child;
  }

  T get onDarkBorderZinc900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.zinc.shade900;
    }
    return _child;
  }

  T get borderNeutral {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral;
    return _child;
  }

  T get borderNeutral50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade50;
    return _child;
  }

  T get borderNeutral100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade100;
    return _child;
  }

  T get borderNeutral200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade200;
    return _child;
  }

  T get borderNeutral300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade300;
    return _child;
  }

  T get borderNeutral400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade400;
    return _child;
  }

  T get borderNeutral500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade500;
    return _child;
  }

  T get borderNeutral600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade600;
    return _child;
  }

  T get borderNeutral700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade700;
    return _child;
  }

  T get borderNeutral800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade800;
    return _child;
  }

  T get borderNeutral900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.neutral.shade900;
    return _child;
  }

  T get onDarkBorderNeutral {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral;
    }
    return _child;
  }

  T get onDarkBorderNeutral50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade50;
    }
    return _child;
  }

  T get onDarkBorderNeutral100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade100;
    }
    return _child;
  }

  T get onDarkBorderNeutral200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade200;
    }
    return _child;
  }

  T get onDarkBorderNeutral300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade300;
    }
    return _child;
  }

  T get onDarkBorderNeutral400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade400;
    }
    return _child;
  }

  T get onDarkBorderNeutral500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade500;
    }
    return _child;
  }

  T get onDarkBorderNeutral600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade600;
    }
    return _child;
  }

  T get onDarkBorderNeutral700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade700;
    }
    return _child;
  }

  T get onDarkBorderNeutral800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade800;
    }
    return _child;
  }

  T get onDarkBorderNeutral900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.neutral.shade900;
    }
    return _child;
  }

  T get borderStone {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone;
    return _child;
  }

  T get borderStone50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade50;
    return _child;
  }

  T get borderStone100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade100;
    return _child;
  }

  T get borderStone200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade200;
    return _child;
  }

  T get borderStone300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade300;
    return _child;
  }

  T get borderStone400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade400;
    return _child;
  }

  T get borderStone500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade500;
    return _child;
  }

  T get borderStone600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade600;
    return _child;
  }

  T get borderStone700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade700;
    return _child;
  }

  T get borderStone800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade800;
    return _child;
  }

  T get borderStone900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.stone.shade900;
    return _child;
  }

  T get onDarkBorderStone {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone;
    }
    return _child;
  }

  T get onDarkBorderStone50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade50;
    }
    return _child;
  }

  T get onDarkBorderStone100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade100;
    }
    return _child;
  }

  T get onDarkBorderStone200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade200;
    }
    return _child;
  }

  T get onDarkBorderStone300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade300;
    }
    return _child;
  }

  T get onDarkBorderStone400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade400;
    }
    return _child;
  }

  T get onDarkBorderStone500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade500;
    }
    return _child;
  }

  T get onDarkBorderStone600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade600;
    }
    return _child;
  }

  T get onDarkBorderStone700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade700;
    }
    return _child;
  }

  T get onDarkBorderStone800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade800;
    }
    return _child;
  }

  T get onDarkBorderStone900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.stone.shade900;
    }
    return _child;
  }

  T get borderRed {
    if (!_needsDarkVariant) twBorderColor = TwColors.red;
    return _child;
  }

  T get borderRed50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade50;
    return _child;
  }

  T get borderRed100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade100;
    return _child;
  }

  T get borderRed200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade200;
    return _child;
  }

  T get borderRed300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade300;
    return _child;
  }

  T get borderRed400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade400;
    return _child;
  }

  T get borderRed500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade500;
    return _child;
  }

  T get borderRed600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade600;
    return _child;
  }

  T get borderRed700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade700;
    return _child;
  }

  T get borderRed800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade800;
    return _child;
  }

  T get borderRed900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.red.shade900;
    return _child;
  }

  T get onDarkBorderRed {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red;
    }
    return _child;
  }

  T get onDarkBorderRed50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade50;
    }
    return _child;
  }

  T get onDarkBorderRed100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade100;
    }
    return _child;
  }

  T get onDarkBorderRed200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade200;
    }
    return _child;
  }

  T get onDarkBorderRed300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade300;
    }
    return _child;
  }

  T get onDarkBorderRed400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade400;
    }
    return _child;
  }

  T get onDarkBorderRed500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade500;
    }
    return _child;
  }

  T get onDarkBorderRed600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade600;
    }
    return _child;
  }

  T get onDarkBorderRed700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade700;
    }
    return _child;
  }

  T get onDarkBorderRed800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade800;
    }
    return _child;
  }

  T get onDarkBorderRed900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.red.shade900;
    }
    return _child;
  }

  T get borderOrange {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange;
    return _child;
  }

  T get borderOrange50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade50;
    return _child;
  }

  T get borderOrange100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade100;
    return _child;
  }

  T get borderOrange200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade200;
    return _child;
  }

  T get borderOrange300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade300;
    return _child;
  }

  T get borderOrange400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade400;
    return _child;
  }

  T get borderOrange500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade500;
    return _child;
  }

  T get borderOrange600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade600;
    return _child;
  }

  T get borderOrange700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade700;
    return _child;
  }

  T get borderOrange800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade800;
    return _child;
  }

  T get borderOrange900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.orange.shade900;
    return _child;
  }

  T get onDarkBorderOrange {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange;
    }
    return _child;
  }

  T get onDarkBorderOrange50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade50;
    }
    return _child;
  }

  T get onDarkBorderOrange100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade100;
    }
    return _child;
  }

  T get onDarkBorderOrange200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade200;
    }
    return _child;
  }

  T get onDarkBorderOrange300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade300;
    }
    return _child;
  }

  T get onDarkBorderOrange400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade400;
    }
    return _child;
  }

  T get onDarkBorderOrange500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade500;
    }
    return _child;
  }

  T get onDarkBorderOrange600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade600;
    }
    return _child;
  }

  T get onDarkBorderOrange700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade700;
    }
    return _child;
  }

  T get onDarkBorderOrange800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade800;
    }
    return _child;
  }

  T get onDarkBorderOrange900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.orange.shade900;
    }
    return _child;
  }

  T get borderAmber {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber;
    return _child;
  }

  T get borderAmber50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade50;
    return _child;
  }

  T get borderAmber100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade100;
    return _child;
  }

  T get borderAmber200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade200;
    return _child;
  }

  T get borderAmber300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade300;
    return _child;
  }

  T get borderAmber400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade400;
    return _child;
  }

  T get borderAmber500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade500;
    return _child;
  }

  T get borderAmber600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade600;
    return _child;
  }

  T get borderAmber700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade700;
    return _child;
  }

  T get borderAmber800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade800;
    return _child;
  }

  T get borderAmber900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.amber.shade900;
    return _child;
  }

  T get onDarkBorderAmber {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber;
    }
    return _child;
  }

  T get onDarkBorderAmber50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade50;
    }
    return _child;
  }

  T get onDarkBorderAmber100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade100;
    }
    return _child;
  }

  T get onDarkBorderAmber200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade200;
    }
    return _child;
  }

  T get onDarkBorderAmber300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade300;
    }
    return _child;
  }

  T get onDarkBorderAmber400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade400;
    }
    return _child;
  }

  T get onDarkBorderAmber500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade500;
    }
    return _child;
  }

  T get onDarkBorderAmber600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade600;
    }
    return _child;
  }

  T get onDarkBorderAmber700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade700;
    }
    return _child;
  }

  T get onDarkBorderAmber800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade800;
    }
    return _child;
  }

  T get onDarkBorderAmber900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.amber.shade900;
    }
    return _child;
  }

  T get borderYellow {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow;
    return _child;
  }

  T get borderYellow50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade50;
    return _child;
  }

  T get borderYellow100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade100;
    return _child;
  }

  T get borderYellow200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade200;
    return _child;
  }

  T get borderYellow300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade300;
    return _child;
  }

  T get borderYellow400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade400;
    return _child;
  }

  T get borderYellow500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade500;
    return _child;
  }

  T get borderYellow600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade600;
    return _child;
  }

  T get borderYellow700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade700;
    return _child;
  }

  T get borderYellow800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade800;
    return _child;
  }

  T get borderYellow900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.yellow.shade900;
    return _child;
  }

  T get onDarkBorderYellow {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow;
    }
    return _child;
  }

  T get onDarkBorderYellow50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade50;
    }
    return _child;
  }

  T get onDarkBorderYellow100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade100;
    }
    return _child;
  }

  T get onDarkBorderYellow200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade200;
    }
    return _child;
  }

  T get onDarkBorderYellow300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade300;
    }
    return _child;
  }

  T get onDarkBorderYellow400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade400;
    }
    return _child;
  }

  T get onDarkBorderYellow500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade500;
    }
    return _child;
  }

  T get onDarkBorderYellow600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade600;
    }
    return _child;
  }

  T get onDarkBorderYellow700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade700;
    }
    return _child;
  }

  T get onDarkBorderYellow800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade800;
    }
    return _child;
  }

  T get onDarkBorderYellow900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.yellow.shade900;
    }
    return _child;
  }

  T get borderLime {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime;
    return _child;
  }

  T get borderLime50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade50;
    return _child;
  }

  T get borderLime100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade100;
    return _child;
  }

  T get borderLime200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade200;
    return _child;
  }

  T get borderLime300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade300;
    return _child;
  }

  T get borderLime400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade400;
    return _child;
  }

  T get borderLime500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade500;
    return _child;
  }

  T get borderLime600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade600;
    return _child;
  }

  T get borderLime700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade700;
    return _child;
  }

  T get borderLime800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade800;
    return _child;
  }

  T get borderLime900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.lime.shade900;
    return _child;
  }

  T get onDarkBorderLime {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime;
    }
    return _child;
  }

  T get onDarkBorderLime50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade50;
    }
    return _child;
  }

  T get onDarkBorderLime100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade100;
    }
    return _child;
  }

  T get onDarkBorderLime200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade200;
    }
    return _child;
  }

  T get onDarkBorderLime300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade300;
    }
    return _child;
  }

  T get onDarkBorderLime400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade400;
    }
    return _child;
  }

  T get onDarkBorderLime500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade500;
    }
    return _child;
  }

  T get onDarkBorderLime600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade600;
    }
    return _child;
  }

  T get onDarkBorderLime700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade700;
    }
    return _child;
  }

  T get onDarkBorderLime800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade800;
    }
    return _child;
  }

  T get onDarkBorderLime900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.lime.shade900;
    }
    return _child;
  }

  T get borderGreen {
    if (!_needsDarkVariant) twBorderColor = TwColors.green;
    return _child;
  }

  T get borderGreen50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade50;
    return _child;
  }

  T get borderGreen100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade100;
    return _child;
  }

  T get borderGreen200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade200;
    return _child;
  }

  T get borderGreen300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade300;
    return _child;
  }

  T get borderGreen400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade400;
    return _child;
  }

  T get borderGreen500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade500;
    return _child;
  }

  T get borderGreen600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade600;
    return _child;
  }

  T get borderGreen700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade700;
    return _child;
  }

  T get borderGreen800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade800;
    return _child;
  }

  T get borderGreen900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.green.shade900;
    return _child;
  }

  T get onDarkBorderGreen {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green;
    }
    return _child;
  }

  T get onDarkBorderGreen50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade50;
    }
    return _child;
  }

  T get onDarkBorderGreen100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade100;
    }
    return _child;
  }

  T get onDarkBorderGreen200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade200;
    }
    return _child;
  }

  T get onDarkBorderGreen300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade300;
    }
    return _child;
  }

  T get onDarkBorderGreen400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade400;
    }
    return _child;
  }

  T get onDarkBorderGreen500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade500;
    }
    return _child;
  }

  T get onDarkBorderGreen600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade600;
    }
    return _child;
  }

  T get onDarkBorderGreen700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade700;
    }
    return _child;
  }

  T get onDarkBorderGreen800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade800;
    }
    return _child;
  }

  T get onDarkBorderGreen900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.green.shade900;
    }
    return _child;
  }

  T get borderEmerald {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald;
    return _child;
  }

  T get borderEmerald50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade50;
    return _child;
  }

  T get borderEmerald100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade100;
    return _child;
  }

  T get borderEmerald200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade200;
    return _child;
  }

  T get borderEmerald300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade300;
    return _child;
  }

  T get borderEmerald400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade400;
    return _child;
  }

  T get borderEmerald500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade500;
    return _child;
  }

  T get borderEmerald600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade600;
    return _child;
  }

  T get borderEmerald700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade700;
    return _child;
  }

  T get borderEmerald800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade800;
    return _child;
  }

  T get borderEmerald900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.emerald.shade900;
    return _child;
  }

  T get onDarkBorderEmerald {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald;
    }
    return _child;
  }

  T get onDarkBorderEmerald50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade50;
    }
    return _child;
  }

  T get onDarkBorderEmerald100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade100;
    }
    return _child;
  }

  T get onDarkBorderEmerald200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade200;
    }
    return _child;
  }

  T get onDarkBorderEmerald300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade300;
    }
    return _child;
  }

  T get onDarkBorderEmerald400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade400;
    }
    return _child;
  }

  T get onDarkBorderEmerald500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade500;
    }
    return _child;
  }

  T get onDarkBorderEmerald600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade600;
    }
    return _child;
  }

  T get onDarkBorderEmerald700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade700;
    }
    return _child;
  }

  T get onDarkBorderEmerald800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade800;
    }
    return _child;
  }

  T get onDarkBorderEmerald900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.emerald.shade900;
    }
    return _child;
  }

  T get borderTeal {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal;
    return _child;
  }

  T get borderTeal50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade50;
    return _child;
  }

  T get borderTeal100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade100;
    return _child;
  }

  T get borderTeal200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade200;
    return _child;
  }

  T get borderTeal300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade300;
    return _child;
  }

  T get borderTeal400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade400;
    return _child;
  }

  T get borderTeal500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade500;
    return _child;
  }

  T get borderTeal600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade600;
    return _child;
  }

  T get borderTeal700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade700;
    return _child;
  }

  T get borderTeal800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade800;
    return _child;
  }

  T get borderTeal900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.teal.shade900;
    return _child;
  }

  T get onDarkBorderTeal {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal;
    }
    return _child;
  }

  T get onDarkBorderTeal50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade50;
    }
    return _child;
  }

  T get onDarkBorderTeal100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade100;
    }
    return _child;
  }

  T get onDarkBorderTeal200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade200;
    }
    return _child;
  }

  T get onDarkBorderTeal300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade300;
    }
    return _child;
  }

  T get onDarkBorderTeal400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade400;
    }
    return _child;
  }

  T get onDarkBorderTeal500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade500;
    }
    return _child;
  }

  T get onDarkBorderTeal600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade600;
    }
    return _child;
  }

  T get onDarkBorderTeal700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade700;
    }
    return _child;
  }

  T get onDarkBorderTeal800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade800;
    }
    return _child;
  }

  T get onDarkBorderTeal900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.teal.shade900;
    }
    return _child;
  }

  T get borderCyan {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan;
    return _child;
  }

  T get borderCyan50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade50;
    return _child;
  }

  T get borderCyan100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade100;
    return _child;
  }

  T get borderCyan200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade200;
    return _child;
  }

  T get borderCyan300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade300;
    return _child;
  }

  T get borderCyan400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade400;
    return _child;
  }

  T get borderCyan500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade500;
    return _child;
  }

  T get borderCyan600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade600;
    return _child;
  }

  T get borderCyan700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade700;
    return _child;
  }

  T get borderCyan800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade800;
    return _child;
  }

  T get borderCyan900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.cyan.shade900;
    return _child;
  }

  T get onDarkBorderCyan {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan;
    }
    return _child;
  }

  T get onDarkBorderCyan50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade50;
    }
    return _child;
  }

  T get onDarkBorderCyan100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade100;
    }
    return _child;
  }

  T get onDarkBorderCyan200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade200;
    }
    return _child;
  }

  T get onDarkBorderCyan300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade300;
    }
    return _child;
  }

  T get onDarkBorderCyan400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade400;
    }
    return _child;
  }

  T get onDarkBorderCyan500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade500;
    }
    return _child;
  }

  T get onDarkBorderCyan600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade600;
    }
    return _child;
  }

  T get onDarkBorderCyan700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade700;
    }
    return _child;
  }

  T get onDarkBorderCyan800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade800;
    }
    return _child;
  }

  T get onDarkBorderCyan900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.cyan.shade900;
    }
    return _child;
  }

  T get borderSky {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky;
    return _child;
  }

  T get borderSky50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade50;
    return _child;
  }

  T get borderSky100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade100;
    return _child;
  }

  T get borderSky200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade200;
    return _child;
  }

  T get borderSky300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade300;
    return _child;
  }

  T get borderSky400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade400;
    return _child;
  }

  T get borderSky500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade500;
    return _child;
  }

  T get borderSky600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade600;
    return _child;
  }

  T get borderSky700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade700;
    return _child;
  }

  T get borderSky800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade800;
    return _child;
  }

  T get borderSky900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.sky.shade900;
    return _child;
  }

  T get onDarkBorderSky {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky;
    }
    return _child;
  }

  T get onDarkBorderSky50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade50;
    }
    return _child;
  }

  T get onDarkBorderSky100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade100;
    }
    return _child;
  }

  T get onDarkBorderSky200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade200;
    }
    return _child;
  }

  T get onDarkBorderSky300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade300;
    }
    return _child;
  }

  T get onDarkBorderSky400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade400;
    }
    return _child;
  }

  T get onDarkBorderSky500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade500;
    }
    return _child;
  }

  T get onDarkBorderSky600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade600;
    }
    return _child;
  }

  T get onDarkBorderSky700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade700;
    }
    return _child;
  }

  T get onDarkBorderSky800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade800;
    }
    return _child;
  }

  T get onDarkBorderSky900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.sky.shade900;
    }
    return _child;
  }

  T get borderBlue {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue;
    return _child;
  }

  T get borderBlue50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade50;
    return _child;
  }

  T get borderBlue100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade100;
    return _child;
  }

  T get borderBlue200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade200;
    return _child;
  }

  T get borderBlue300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade300;
    return _child;
  }

  T get borderBlue400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade400;
    return _child;
  }

  T get borderBlue500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade500;
    return _child;
  }

  T get borderBlue600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade600;
    return _child;
  }

  T get borderBlue700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade700;
    return _child;
  }

  T get borderBlue800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade800;
    return _child;
  }

  T get borderBlue900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.blue.shade900;
    return _child;
  }

  T get onDarkBorderBlue {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue;
    }
    return _child;
  }

  T get onDarkBorderBlue50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade50;
    }
    return _child;
  }

  T get onDarkBorderBlue100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade100;
    }
    return _child;
  }

  T get onDarkBorderBlue200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade200;
    }
    return _child;
  }

  T get onDarkBorderBlue300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade300;
    }
    return _child;
  }

  T get onDarkBorderBlue400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade400;
    }
    return _child;
  }

  T get onDarkBorderBlue500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade500;
    }
    return _child;
  }

  T get onDarkBorderBlue600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade600;
    }
    return _child;
  }

  T get onDarkBorderBlue700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade700;
    }
    return _child;
  }

  T get onDarkBorderBlue800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade800;
    }
    return _child;
  }

  T get onDarkBorderBlue900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.blue.shade900;
    }
    return _child;
  }

  T get borderIndigo {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo;
    return _child;
  }

  T get borderIndigo50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade50;
    return _child;
  }

  T get borderIndigo100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade100;
    return _child;
  }

  T get borderIndigo200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade200;
    return _child;
  }

  T get borderIndigo300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade300;
    return _child;
  }

  T get borderIndigo400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade400;
    return _child;
  }

  T get borderIndigo500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade500;
    return _child;
  }

  T get borderIndigo600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade600;
    return _child;
  }

  T get borderIndigo700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade700;
    return _child;
  }

  T get borderIndigo800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade800;
    return _child;
  }

  T get borderIndigo900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.indigo.shade900;
    return _child;
  }

  T get onDarkBorderIndigo {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo;
    }
    return _child;
  }

  T get onDarkBorderIndigo50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade50;
    }
    return _child;
  }

  T get onDarkBorderIndigo100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade100;
    }
    return _child;
  }

  T get onDarkBorderIndigo200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade200;
    }
    return _child;
  }

  T get onDarkBorderIndigo300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade300;
    }
    return _child;
  }

  T get onDarkBorderIndigo400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade400;
    }
    return _child;
  }

  T get onDarkBorderIndigo500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade500;
    }
    return _child;
  }

  T get onDarkBorderIndigo600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade600;
    }
    return _child;
  }

  T get onDarkBorderIndigo700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade700;
    }
    return _child;
  }

  T get onDarkBorderIndigo800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade800;
    }
    return _child;
  }

  T get onDarkBorderIndigo900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.indigo.shade900;
    }
    return _child;
  }

  T get borderViolet {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet;
    return _child;
  }

  T get borderViolet50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade50;
    return _child;
  }

  T get borderViolet100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade100;
    return _child;
  }

  T get borderViolet200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade200;
    return _child;
  }

  T get borderViolet300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade300;
    return _child;
  }

  T get borderViolet400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade400;
    return _child;
  }

  T get borderViolet500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade500;
    return _child;
  }

  T get borderViolet600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade600;
    return _child;
  }

  T get borderViolet700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade700;
    return _child;
  }

  T get borderViolet800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade800;
    return _child;
  }

  T get borderViolet900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.violet.shade900;
    return _child;
  }

  T get onDarkBorderViolet {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet;
    }
    return _child;
  }

  T get onDarkBorderViolet50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade50;
    }
    return _child;
  }

  T get onDarkBorderViolet100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade100;
    }
    return _child;
  }

  T get onDarkBorderViolet200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade200;
    }
    return _child;
  }

  T get onDarkBorderViolet300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade300;
    }
    return _child;
  }

  T get onDarkBorderViolet400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade400;
    }
    return _child;
  }

  T get onDarkBorderViolet500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade500;
    }
    return _child;
  }

  T get onDarkBorderViolet600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade600;
    }
    return _child;
  }

  T get onDarkBorderViolet700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade700;
    }
    return _child;
  }

  T get onDarkBorderViolet800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade800;
    }
    return _child;
  }

  T get onDarkBorderViolet900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.violet.shade900;
    }
    return _child;
  }

  T get borderPurple {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple;
    return _child;
  }

  T get borderPurple50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade50;
    return _child;
  }

  T get borderPurple100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade100;
    return _child;
  }

  T get borderPurple200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade200;
    return _child;
  }

  T get borderPurple300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade300;
    return _child;
  }

  T get borderPurple400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade400;
    return _child;
  }

  T get borderPurple500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade500;
    return _child;
  }

  T get borderPurple600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade600;
    return _child;
  }

  T get borderPurple700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade700;
    return _child;
  }

  T get borderPurple800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade800;
    return _child;
  }

  T get borderPurple900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.purple.shade900;
    return _child;
  }

  T get onDarkBorderPurple {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple;
    }
    return _child;
  }

  T get onDarkBorderPurple50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade50;
    }
    return _child;
  }

  T get onDarkBorderPurple100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade100;
    }
    return _child;
  }

  T get onDarkBorderPurple200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade200;
    }
    return _child;
  }

  T get onDarkBorderPurple300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade300;
    }
    return _child;
  }

  T get onDarkBorderPurple400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade400;
    }
    return _child;
  }

  T get onDarkBorderPurple500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade500;
    }
    return _child;
  }

  T get onDarkBorderPurple600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade600;
    }
    return _child;
  }

  T get onDarkBorderPurple700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade700;
    }
    return _child;
  }

  T get onDarkBorderPurple800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade800;
    }
    return _child;
  }

  T get onDarkBorderPurple900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.purple.shade900;
    }
    return _child;
  }

  T get borderFuchsia {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia;
    return _child;
  }

  T get borderFuchsia50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade50;
    return _child;
  }

  T get borderFuchsia100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade100;
    return _child;
  }

  T get borderFuchsia200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade200;
    return _child;
  }

  T get borderFuchsia300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade300;
    return _child;
  }

  T get borderFuchsia400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade400;
    return _child;
  }

  T get borderFuchsia500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade500;
    return _child;
  }

  T get borderFuchsia600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade600;
    return _child;
  }

  T get borderFuchsia700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade700;
    return _child;
  }

  T get borderFuchsia800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade800;
    return _child;
  }

  T get borderFuchsia900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade900;
    return _child;
  }

  T get onDarkBorderFuchsia {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia;
    }
    return _child;
  }

  T get onDarkBorderFuchsia50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade50;
    }
    return _child;
  }

  T get onDarkBorderFuchsia100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade100;
    }
    return _child;
  }

  T get onDarkBorderFuchsia200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade200;
    }
    return _child;
  }

  T get onDarkBorderFuchsia300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade300;
    }
    return _child;
  }

  T get onDarkBorderFuchsia400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade400;
    }
    return _child;
  }

  T get onDarkBorderFuchsia500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade500;
    }
    return _child;
  }

  T get onDarkBorderFuchsia600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade600;
    }
    return _child;
  }

  T get onDarkBorderFuchsia700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade700;
    }
    return _child;
  }

  T get onDarkBorderFuchsia800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade800;
    }
    return _child;
  }

  T get onDarkBorderFuchsia900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.fuchsia.shade900;
    }
    return _child;
  }

  T get borderPink {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink;
    return _child;
  }

  T get borderPink50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade50;
    return _child;
  }

  T get borderPink100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade100;
    return _child;
  }

  T get borderPink200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade200;
    return _child;
  }

  T get borderPink300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade300;
    return _child;
  }

  T get borderPink400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade400;
    return _child;
  }

  T get borderPink500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade500;
    return _child;
  }

  T get borderPink600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade600;
    return _child;
  }

  T get borderPink700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade700;
    return _child;
  }

  T get borderPink800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade800;
    return _child;
  }

  T get borderPink900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.pink.shade900;
    return _child;
  }

  T get onDarkBorderPink {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink;
    }
    return _child;
  }

  T get onDarkBorderPink50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade50;
    }
    return _child;
  }

  T get onDarkBorderPink100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade100;
    }
    return _child;
  }

  T get onDarkBorderPink200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade200;
    }
    return _child;
  }

  T get onDarkBorderPink300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade300;
    }
    return _child;
  }

  T get onDarkBorderPink400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade400;
    }
    return _child;
  }

  T get onDarkBorderPink500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade500;
    }
    return _child;
  }

  T get onDarkBorderPink600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade600;
    }
    return _child;
  }

  T get onDarkBorderPink700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade700;
    }
    return _child;
  }

  T get onDarkBorderPink800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade800;
    }
    return _child;
  }

  T get onDarkBorderPink900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.pink.shade900;
    }
    return _child;
  }

  T get borderRose {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose;
    return _child;
  }

  T get borderRose50 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade50;
    return _child;
  }

  T get borderRose100 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade100;
    return _child;
  }

  T get borderRose200 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade200;
    return _child;
  }

  T get borderRose300 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade300;
    return _child;
  }

  T get borderRose400 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade400;
    return _child;
  }

  T get borderRose500 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade500;
    return _child;
  }

  T get borderRose600 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade600;
    return _child;
  }

  T get borderRose700 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade700;
    return _child;
  }

  T get borderRose800 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade800;
    return _child;
  }

  T get borderRose900 {
    if (!_needsDarkVariant) twBorderColor = TwColors.rose.shade900;
    return _child;
  }

  T get onDarkBorderRose {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose;
    }
    return _child;
  }

  T get onDarkBorderRose50 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade50;
    }
    return _child;
  }

  T get onDarkBorderRose100 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade100;
    }
    return _child;
  }

  T get onDarkBorderRose200 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade200;
    }
    return _child;
  }

  T get onDarkBorderRose300 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade300;
    }
    return _child;
  }

  T get onDarkBorderRose400 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade400;
    }
    return _child;
  }

  T get onDarkBorderRose500 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade500;
    }
    return _child;
  }

  T get onDarkBorderRose600 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade600;
    }
    return _child;
  }

  T get onDarkBorderRose700 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade700;
    }
    return _child;
  }

  T get onDarkBorderRose800 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade800;
    }
    return _child;
  }

  T get onDarkBorderRose900 {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.rose.shade900;
    }
    return _child;
  }

  T get borderPrimary {
    if (!_needsDarkVariant) twBorderColor = TwColors.primary;
    return _child;
  }

  T get onDarkBorderPrimary {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      twBorderColor = TwColors.primary;
    }
    return _child;
  }
}
