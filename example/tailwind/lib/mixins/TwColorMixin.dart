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
 
  T get black {
      if(!_needsDarkVariant) twColor = TwColors.black;
      return _child;
  }
	T get onDarkBlack {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.black;
      }
      return _child;
  }
	T get white {
      if(!_needsDarkVariant) twColor = TwColors.white;
      return _child;
  }
	T get onDarkWhite {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.white;
      }
      return _child;
  }
	T get transparent {
      if(!_needsDarkVariant) twColor = TwColors.transparent;
      return _child;
  }
	T get onDarkTransparent {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.transparent;
      }
      return _child;
  }
	T get gray {
      if(!_needsDarkVariant) twColor = TwColors.gray;
      return _child;
  }
	T get gray50 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade50;
      return _child;
  }
	T get gray100 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade100;
      return _child;
  }
	T get gray200 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade200;
      return _child;
  }
	T get gray300 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade300;
      return _child;
  }
	T get gray400 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade400;
      return _child;
  }
	T get gray500 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade500;
      return _child;
  }
	T get gray600 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade600;
      return _child;
  }
	T get gray700 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade700;
      return _child;
  }
	T get gray800 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade800;
      return _child;
  }
	T get gray900 {
      if(!_needsDarkVariant) twColor = TwColors.gray.shade900;
      return _child;
  }
	T get onDarkGray {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.gray;
      }
      return _child;
  }
	T get onDarkGray50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade50;
      }
      return _child;
  }
	T get onDarkGray100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade100;
      }
      return _child;
  }
	T get onDarkGray200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade200;
      }
      return _child;
  }
	T get onDarkGray300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade300;
      }
      return _child;
  }
	T get onDarkGray400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade400;
      }
      return _child;
  }
	T get onDarkGray500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade500;
      }
      return _child;
  }
	T get onDarkGray600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade600;
      }
      return _child;
  }
	T get onDarkGray700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade700;
      }
      return _child;
  }
	T get onDarkGray800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade800;
      }
      return _child;
  }
	T get onDarkGray900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.gray.shade900;
      }
      return _child;
  }
	T get blueGray {
      if(!_needsDarkVariant) twColor = TwColors.blueGray;
      return _child;
  }
	T get blueGray50 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade50;
      return _child;
  }
	T get blueGray100 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade100;
      return _child;
  }
	T get blueGray200 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade200;
      return _child;
  }
	T get blueGray300 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade300;
      return _child;
  }
	T get blueGray400 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade400;
      return _child;
  }
	T get blueGray500 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade500;
      return _child;
  }
	T get blueGray600 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade600;
      return _child;
  }
	T get blueGray700 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade700;
      return _child;
  }
	T get blueGray800 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade800;
      return _child;
  }
	T get blueGray900 {
      if(!_needsDarkVariant) twColor = TwColors.blueGray.shade900;
      return _child;
  }
	T get onDarkBlueGray {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.blueGray;
      }
      return _child;
  }
	T get onDarkBlueGray50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade50;
      }
      return _child;
  }
	T get onDarkBlueGray100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade100;
      }
      return _child;
  }
	T get onDarkBlueGray200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade200;
      }
      return _child;
  }
	T get onDarkBlueGray300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade300;
      }
      return _child;
  }
	T get onDarkBlueGray400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade400;
      }
      return _child;
  }
	T get onDarkBlueGray500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade500;
      }
      return _child;
  }
	T get onDarkBlueGray600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade600;
      }
      return _child;
  }
	T get onDarkBlueGray700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade700;
      }
      return _child;
  }
	T get onDarkBlueGray800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade800;
      }
      return _child;
  }
	T get onDarkBlueGray900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blueGray.shade900;
      }
      return _child;
  }
	T get coolGray {
      if(!_needsDarkVariant) twColor = TwColors.coolGray;
      return _child;
  }
	T get coolGray50 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade50;
      return _child;
  }
	T get coolGray100 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade100;
      return _child;
  }
	T get coolGray200 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade200;
      return _child;
  }
	T get coolGray300 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade300;
      return _child;
  }
	T get coolGray400 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade400;
      return _child;
  }
	T get coolGray500 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade500;
      return _child;
  }
	T get coolGray600 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade600;
      return _child;
  }
	T get coolGray700 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade700;
      return _child;
  }
	T get coolGray800 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade800;
      return _child;
  }
	T get coolGray900 {
      if(!_needsDarkVariant) twColor = TwColors.coolGray.shade900;
      return _child;
  }
	T get onDarkCoolGray {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.coolGray;
      }
      return _child;
  }
	T get onDarkCoolGray50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade50;
      }
      return _child;
  }
	T get onDarkCoolGray100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade100;
      }
      return _child;
  }
	T get onDarkCoolGray200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade200;
      }
      return _child;
  }
	T get onDarkCoolGray300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade300;
      }
      return _child;
  }
	T get onDarkCoolGray400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade400;
      }
      return _child;
  }
	T get onDarkCoolGray500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade500;
      }
      return _child;
  }
	T get onDarkCoolGray600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade600;
      }
      return _child;
  }
	T get onDarkCoolGray700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade700;
      }
      return _child;
  }
	T get onDarkCoolGray800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade800;
      }
      return _child;
  }
	T get onDarkCoolGray900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.coolGray.shade900;
      }
      return _child;
  }
	T get trueGray {
      if(!_needsDarkVariant) twColor = TwColors.trueGray;
      return _child;
  }
	T get trueGray50 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade50;
      return _child;
  }
	T get trueGray100 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade100;
      return _child;
  }
	T get trueGray200 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade200;
      return _child;
  }
	T get trueGray300 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade300;
      return _child;
  }
	T get trueGray400 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade400;
      return _child;
  }
	T get trueGray500 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade500;
      return _child;
  }
	T get trueGray600 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade600;
      return _child;
  }
	T get trueGray700 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade700;
      return _child;
  }
	T get trueGray800 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade800;
      return _child;
  }
	T get trueGray900 {
      if(!_needsDarkVariant) twColor = TwColors.trueGray.shade900;
      return _child;
  }
	T get onDarkTrueGray {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.trueGray;
      }
      return _child;
  }
	T get onDarkTrueGray50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade50;
      }
      return _child;
  }
	T get onDarkTrueGray100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade100;
      }
      return _child;
  }
	T get onDarkTrueGray200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade200;
      }
      return _child;
  }
	T get onDarkTrueGray300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade300;
      }
      return _child;
  }
	T get onDarkTrueGray400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade400;
      }
      return _child;
  }
	T get onDarkTrueGray500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade500;
      }
      return _child;
  }
	T get onDarkTrueGray600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade600;
      }
      return _child;
  }
	T get onDarkTrueGray700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade700;
      }
      return _child;
  }
	T get onDarkTrueGray800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade800;
      }
      return _child;
  }
	T get onDarkTrueGray900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.trueGray.shade900;
      }
      return _child;
  }
	T get warmGray {
      if(!_needsDarkVariant) twColor = TwColors.warmGray;
      return _child;
  }
	T get warmGray50 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade50;
      return _child;
  }
	T get warmGray100 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade100;
      return _child;
  }
	T get warmGray200 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade200;
      return _child;
  }
	T get warmGray300 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade300;
      return _child;
  }
	T get warmGray400 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade400;
      return _child;
  }
	T get warmGray500 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade500;
      return _child;
  }
	T get warmGray600 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade600;
      return _child;
  }
	T get warmGray700 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade700;
      return _child;
  }
	T get warmGray800 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade800;
      return _child;
  }
	T get warmGray900 {
      if(!_needsDarkVariant) twColor = TwColors.warmGray.shade900;
      return _child;
  }
	T get onDarkWarmGray {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.warmGray;
      }
      return _child;
  }
	T get onDarkWarmGray50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade50;
      }
      return _child;
  }
	T get onDarkWarmGray100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade100;
      }
      return _child;
  }
	T get onDarkWarmGray200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade200;
      }
      return _child;
  }
	T get onDarkWarmGray300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade300;
      }
      return _child;
  }
	T get onDarkWarmGray400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade400;
      }
      return _child;
  }
	T get onDarkWarmGray500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade500;
      }
      return _child;
  }
	T get onDarkWarmGray600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade600;
      }
      return _child;
  }
	T get onDarkWarmGray700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade700;
      }
      return _child;
  }
	T get onDarkWarmGray800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade800;
      }
      return _child;
  }
	T get onDarkWarmGray900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.warmGray.shade900;
      }
      return _child;
  }
	T get red {
      if(!_needsDarkVariant) twColor = TwColors.red;
      return _child;
  }
	T get red50 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade50;
      return _child;
  }
	T get red100 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade100;
      return _child;
  }
	T get red200 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade200;
      return _child;
  }
	T get red300 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade300;
      return _child;
  }
	T get red400 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade400;
      return _child;
  }
	T get red500 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade500;
      return _child;
  }
	T get red600 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade600;
      return _child;
  }
	T get red700 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade700;
      return _child;
  }
	T get red800 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade800;
      return _child;
  }
	T get red900 {
      if(!_needsDarkVariant) twColor = TwColors.red.shade900;
      return _child;
  }
	T get onDarkRed {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.red;
      }
      return _child;
  }
	T get onDarkRed50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade50;
      }
      return _child;
  }
	T get onDarkRed100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade100;
      }
      return _child;
  }
	T get onDarkRed200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade200;
      }
      return _child;
  }
	T get onDarkRed300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade300;
      }
      return _child;
  }
	T get onDarkRed400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade400;
      }
      return _child;
  }
	T get onDarkRed500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade500;
      }
      return _child;
  }
	T get onDarkRed600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade600;
      }
      return _child;
  }
	T get onDarkRed700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade700;
      }
      return _child;
  }
	T get onDarkRed800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade800;
      }
      return _child;
  }
	T get onDarkRed900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.red.shade900;
      }
      return _child;
  }
	T get orange {
      if(!_needsDarkVariant) twColor = TwColors.orange;
      return _child;
  }
	T get orange50 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade50;
      return _child;
  }
	T get orange100 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade100;
      return _child;
  }
	T get orange200 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade200;
      return _child;
  }
	T get orange300 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade300;
      return _child;
  }
	T get orange400 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade400;
      return _child;
  }
	T get orange500 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade500;
      return _child;
  }
	T get orange600 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade600;
      return _child;
  }
	T get orange700 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade700;
      return _child;
  }
	T get orange800 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade800;
      return _child;
  }
	T get orange900 {
      if(!_needsDarkVariant) twColor = TwColors.orange.shade900;
      return _child;
  }
	T get onDarkOrange {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.orange;
      }
      return _child;
  }
	T get onDarkOrange50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade50;
      }
      return _child;
  }
	T get onDarkOrange100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade100;
      }
      return _child;
  }
	T get onDarkOrange200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade200;
      }
      return _child;
  }
	T get onDarkOrange300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade300;
      }
      return _child;
  }
	T get onDarkOrange400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade400;
      }
      return _child;
  }
	T get onDarkOrange500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade500;
      }
      return _child;
  }
	T get onDarkOrange600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade600;
      }
      return _child;
  }
	T get onDarkOrange700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade700;
      }
      return _child;
  }
	T get onDarkOrange800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade800;
      }
      return _child;
  }
	T get onDarkOrange900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.orange.shade900;
      }
      return _child;
  }
	T get amber {
      if(!_needsDarkVariant) twColor = TwColors.amber;
      return _child;
  }
	T get amber50 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade50;
      return _child;
  }
	T get amber100 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade100;
      return _child;
  }
	T get amber200 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade200;
      return _child;
  }
	T get amber300 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade300;
      return _child;
  }
	T get amber400 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade400;
      return _child;
  }
	T get amber500 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade500;
      return _child;
  }
	T get amber600 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade600;
      return _child;
  }
	T get amber700 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade700;
      return _child;
  }
	T get amber800 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade800;
      return _child;
  }
	T get amber900 {
      if(!_needsDarkVariant) twColor = TwColors.amber.shade900;
      return _child;
  }
	T get onDarkAmber {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.amber;
      }
      return _child;
  }
	T get onDarkAmber50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade50;
      }
      return _child;
  }
	T get onDarkAmber100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade100;
      }
      return _child;
  }
	T get onDarkAmber200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade200;
      }
      return _child;
  }
	T get onDarkAmber300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade300;
      }
      return _child;
  }
	T get onDarkAmber400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade400;
      }
      return _child;
  }
	T get onDarkAmber500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade500;
      }
      return _child;
  }
	T get onDarkAmber600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade600;
      }
      return _child;
  }
	T get onDarkAmber700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade700;
      }
      return _child;
  }
	T get onDarkAmber800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade800;
      }
      return _child;
  }
	T get onDarkAmber900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.amber.shade900;
      }
      return _child;
  }
	T get yellow {
      if(!_needsDarkVariant) twColor = TwColors.yellow;
      return _child;
  }
	T get yellow50 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade50;
      return _child;
  }
	T get yellow100 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade100;
      return _child;
  }
	T get yellow200 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade200;
      return _child;
  }
	T get yellow300 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade300;
      return _child;
  }
	T get yellow400 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade400;
      return _child;
  }
	T get yellow500 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade500;
      return _child;
  }
	T get yellow600 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade600;
      return _child;
  }
	T get yellow700 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade700;
      return _child;
  }
	T get yellow800 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade800;
      return _child;
  }
	T get yellow900 {
      if(!_needsDarkVariant) twColor = TwColors.yellow.shade900;
      return _child;
  }
	T get onDarkYellow {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.yellow;
      }
      return _child;
  }
	T get onDarkYellow50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade50;
      }
      return _child;
  }
	T get onDarkYellow100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade100;
      }
      return _child;
  }
	T get onDarkYellow200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade200;
      }
      return _child;
  }
	T get onDarkYellow300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade300;
      }
      return _child;
  }
	T get onDarkYellow400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade400;
      }
      return _child;
  }
	T get onDarkYellow500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade500;
      }
      return _child;
  }
	T get onDarkYellow600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade600;
      }
      return _child;
  }
	T get onDarkYellow700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade700;
      }
      return _child;
  }
	T get onDarkYellow800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade800;
      }
      return _child;
  }
	T get onDarkYellow900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.yellow.shade900;
      }
      return _child;
  }
	T get lime {
      if(!_needsDarkVariant) twColor = TwColors.lime;
      return _child;
  }
	T get lime50 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade50;
      return _child;
  }
	T get lime100 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade100;
      return _child;
  }
	T get lime200 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade200;
      return _child;
  }
	T get lime300 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade300;
      return _child;
  }
	T get lime400 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade400;
      return _child;
  }
	T get lime500 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade500;
      return _child;
  }
	T get lime600 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade600;
      return _child;
  }
	T get lime700 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade700;
      return _child;
  }
	T get lime800 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade800;
      return _child;
  }
	T get lime900 {
      if(!_needsDarkVariant) twColor = TwColors.lime.shade900;
      return _child;
  }
	T get onDarkLime {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.lime;
      }
      return _child;
  }
	T get onDarkLime50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade50;
      }
      return _child;
  }
	T get onDarkLime100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade100;
      }
      return _child;
  }
	T get onDarkLime200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade200;
      }
      return _child;
  }
	T get onDarkLime300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade300;
      }
      return _child;
  }
	T get onDarkLime400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade400;
      }
      return _child;
  }
	T get onDarkLime500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade500;
      }
      return _child;
  }
	T get onDarkLime600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade600;
      }
      return _child;
  }
	T get onDarkLime700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade700;
      }
      return _child;
  }
	T get onDarkLime800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade800;
      }
      return _child;
  }
	T get onDarkLime900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lime.shade900;
      }
      return _child;
  }
	T get green {
      if(!_needsDarkVariant) twColor = TwColors.green;
      return _child;
  }
	T get green50 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade50;
      return _child;
  }
	T get green100 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade100;
      return _child;
  }
	T get green200 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade200;
      return _child;
  }
	T get green300 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade300;
      return _child;
  }
	T get green400 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade400;
      return _child;
  }
	T get green500 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade500;
      return _child;
  }
	T get green600 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade600;
      return _child;
  }
	T get green700 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade700;
      return _child;
  }
	T get green800 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade800;
      return _child;
  }
	T get green900 {
      if(!_needsDarkVariant) twColor = TwColors.green.shade900;
      return _child;
  }
	T get onDarkGreen {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.green;
      }
      return _child;
  }
	T get onDarkGreen50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade50;
      }
      return _child;
  }
	T get onDarkGreen100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade100;
      }
      return _child;
  }
	T get onDarkGreen200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade200;
      }
      return _child;
  }
	T get onDarkGreen300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade300;
      }
      return _child;
  }
	T get onDarkGreen400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade400;
      }
      return _child;
  }
	T get onDarkGreen500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade500;
      }
      return _child;
  }
	T get onDarkGreen600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade600;
      }
      return _child;
  }
	T get onDarkGreen700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade700;
      }
      return _child;
  }
	T get onDarkGreen800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade800;
      }
      return _child;
  }
	T get onDarkGreen900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.green.shade900;
      }
      return _child;
  }
	T get emerald {
      if(!_needsDarkVariant) twColor = TwColors.emerald;
      return _child;
  }
	T get emerald50 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade50;
      return _child;
  }
	T get emerald100 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade100;
      return _child;
  }
	T get emerald200 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade200;
      return _child;
  }
	T get emerald300 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade300;
      return _child;
  }
	T get emerald400 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade400;
      return _child;
  }
	T get emerald500 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade500;
      return _child;
  }
	T get emerald600 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade600;
      return _child;
  }
	T get emerald700 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade700;
      return _child;
  }
	T get emerald800 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade800;
      return _child;
  }
	T get emerald900 {
      if(!_needsDarkVariant) twColor = TwColors.emerald.shade900;
      return _child;
  }
	T get onDarkEmerald {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.emerald;
      }
      return _child;
  }
	T get onDarkEmerald50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade50;
      }
      return _child;
  }
	T get onDarkEmerald100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade100;
      }
      return _child;
  }
	T get onDarkEmerald200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade200;
      }
      return _child;
  }
	T get onDarkEmerald300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade300;
      }
      return _child;
  }
	T get onDarkEmerald400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade400;
      }
      return _child;
  }
	T get onDarkEmerald500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade500;
      }
      return _child;
  }
	T get onDarkEmerald600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade600;
      }
      return _child;
  }
	T get onDarkEmerald700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade700;
      }
      return _child;
  }
	T get onDarkEmerald800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade800;
      }
      return _child;
  }
	T get onDarkEmerald900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.emerald.shade900;
      }
      return _child;
  }
	T get teal {
      if(!_needsDarkVariant) twColor = TwColors.teal;
      return _child;
  }
	T get teal50 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade50;
      return _child;
  }
	T get teal100 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade100;
      return _child;
  }
	T get teal200 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade200;
      return _child;
  }
	T get teal300 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade300;
      return _child;
  }
	T get teal400 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade400;
      return _child;
  }
	T get teal500 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade500;
      return _child;
  }
	T get teal600 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade600;
      return _child;
  }
	T get teal700 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade700;
      return _child;
  }
	T get teal800 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade800;
      return _child;
  }
	T get teal900 {
      if(!_needsDarkVariant) twColor = TwColors.teal.shade900;
      return _child;
  }
	T get onDarkTeal {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.teal;
      }
      return _child;
  }
	T get onDarkTeal50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade50;
      }
      return _child;
  }
	T get onDarkTeal100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade100;
      }
      return _child;
  }
	T get onDarkTeal200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade200;
      }
      return _child;
  }
	T get onDarkTeal300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade300;
      }
      return _child;
  }
	T get onDarkTeal400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade400;
      }
      return _child;
  }
	T get onDarkTeal500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade500;
      }
      return _child;
  }
	T get onDarkTeal600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade600;
      }
      return _child;
  }
	T get onDarkTeal700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade700;
      }
      return _child;
  }
	T get onDarkTeal800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade800;
      }
      return _child;
  }
	T get onDarkTeal900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.teal.shade900;
      }
      return _child;
  }
	T get cyan {
      if(!_needsDarkVariant) twColor = TwColors.cyan;
      return _child;
  }
	T get cyan50 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade50;
      return _child;
  }
	T get cyan100 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade100;
      return _child;
  }
	T get cyan200 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade200;
      return _child;
  }
	T get cyan300 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade300;
      return _child;
  }
	T get cyan400 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade400;
      return _child;
  }
	T get cyan500 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade500;
      return _child;
  }
	T get cyan600 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade600;
      return _child;
  }
	T get cyan700 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade700;
      return _child;
  }
	T get cyan800 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade800;
      return _child;
  }
	T get cyan900 {
      if(!_needsDarkVariant) twColor = TwColors.cyan.shade900;
      return _child;
  }
	T get onDarkCyan {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.cyan;
      }
      return _child;
  }
	T get onDarkCyan50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade50;
      }
      return _child;
  }
	T get onDarkCyan100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade100;
      }
      return _child;
  }
	T get onDarkCyan200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade200;
      }
      return _child;
  }
	T get onDarkCyan300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade300;
      }
      return _child;
  }
	T get onDarkCyan400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade400;
      }
      return _child;
  }
	T get onDarkCyan500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade500;
      }
      return _child;
  }
	T get onDarkCyan600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade600;
      }
      return _child;
  }
	T get onDarkCyan700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade700;
      }
      return _child;
  }
	T get onDarkCyan800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade800;
      }
      return _child;
  }
	T get onDarkCyan900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.cyan.shade900;
      }
      return _child;
  }
	T get lightBlue {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue;
      return _child;
  }
	T get lightBlue50 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade50;
      return _child;
  }
	T get lightBlue100 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade100;
      return _child;
  }
	T get lightBlue200 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade200;
      return _child;
  }
	T get lightBlue300 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade300;
      return _child;
  }
	T get lightBlue400 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade400;
      return _child;
  }
	T get lightBlue500 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade500;
      return _child;
  }
	T get lightBlue600 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade600;
      return _child;
  }
	T get lightBlue700 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade700;
      return _child;
  }
	T get lightBlue800 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade800;
      return _child;
  }
	T get lightBlue900 {
      if(!_needsDarkVariant) twColor = TwColors.lightBlue.shade900;
      return _child;
  }
	T get onDarkLightBlue {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.lightBlue;
      }
      return _child;
  }
	T get onDarkLightBlue50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade50;
      }
      return _child;
  }
	T get onDarkLightBlue100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade100;
      }
      return _child;
  }
	T get onDarkLightBlue200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade200;
      }
      return _child;
  }
	T get onDarkLightBlue300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade300;
      }
      return _child;
  }
	T get onDarkLightBlue400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade400;
      }
      return _child;
  }
	T get onDarkLightBlue500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade500;
      }
      return _child;
  }
	T get onDarkLightBlue600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade600;
      }
      return _child;
  }
	T get onDarkLightBlue700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade700;
      }
      return _child;
  }
	T get onDarkLightBlue800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade800;
      }
      return _child;
  }
	T get onDarkLightBlue900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.lightBlue.shade900;
      }
      return _child;
  }
	T get blue {
      if(!_needsDarkVariant) twColor = TwColors.blue;
      return _child;
  }
	T get blue50 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade50;
      return _child;
  }
	T get blue100 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade100;
      return _child;
  }
	T get blue200 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade200;
      return _child;
  }
	T get blue300 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade300;
      return _child;
  }
	T get blue400 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade400;
      return _child;
  }
	T get blue500 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade500;
      return _child;
  }
	T get blue600 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade600;
      return _child;
  }
	T get blue700 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade700;
      return _child;
  }
	T get blue800 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade800;
      return _child;
  }
	T get blue900 {
      if(!_needsDarkVariant) twColor = TwColors.blue.shade900;
      return _child;
  }
	T get onDarkBlue {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.blue;
      }
      return _child;
  }
	T get onDarkBlue50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade50;
      }
      return _child;
  }
	T get onDarkBlue100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade100;
      }
      return _child;
  }
	T get onDarkBlue200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade200;
      }
      return _child;
  }
	T get onDarkBlue300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade300;
      }
      return _child;
  }
	T get onDarkBlue400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade400;
      }
      return _child;
  }
	T get onDarkBlue500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade500;
      }
      return _child;
  }
	T get onDarkBlue600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade600;
      }
      return _child;
  }
	T get onDarkBlue700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade700;
      }
      return _child;
  }
	T get onDarkBlue800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade800;
      }
      return _child;
  }
	T get onDarkBlue900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.blue.shade900;
      }
      return _child;
  }
	T get indigo {
      if(!_needsDarkVariant) twColor = TwColors.indigo;
      return _child;
  }
	T get indigo50 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade50;
      return _child;
  }
	T get indigo100 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade100;
      return _child;
  }
	T get indigo200 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade200;
      return _child;
  }
	T get indigo300 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade300;
      return _child;
  }
	T get indigo400 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade400;
      return _child;
  }
	T get indigo500 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade500;
      return _child;
  }
	T get indigo600 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade600;
      return _child;
  }
	T get indigo700 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade700;
      return _child;
  }
	T get indigo800 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade800;
      return _child;
  }
	T get indigo900 {
      if(!_needsDarkVariant) twColor = TwColors.indigo.shade900;
      return _child;
  }
	T get onDarkIndigo {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.indigo;
      }
      return _child;
  }
	T get onDarkIndigo50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade50;
      }
      return _child;
  }
	T get onDarkIndigo100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade100;
      }
      return _child;
  }
	T get onDarkIndigo200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade200;
      }
      return _child;
  }
	T get onDarkIndigo300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade300;
      }
      return _child;
  }
	T get onDarkIndigo400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade400;
      }
      return _child;
  }
	T get onDarkIndigo500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade500;
      }
      return _child;
  }
	T get onDarkIndigo600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade600;
      }
      return _child;
  }
	T get onDarkIndigo700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade700;
      }
      return _child;
  }
	T get onDarkIndigo800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade800;
      }
      return _child;
  }
	T get onDarkIndigo900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.indigo.shade900;
      }
      return _child;
  }
	T get violet {
      if(!_needsDarkVariant) twColor = TwColors.violet;
      return _child;
  }
	T get violet50 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade50;
      return _child;
  }
	T get violet100 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade100;
      return _child;
  }
	T get violet200 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade200;
      return _child;
  }
	T get violet300 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade300;
      return _child;
  }
	T get violet400 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade400;
      return _child;
  }
	T get violet500 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade500;
      return _child;
  }
	T get violet600 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade600;
      return _child;
  }
	T get violet700 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade700;
      return _child;
  }
	T get violet800 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade800;
      return _child;
  }
	T get violet900 {
      if(!_needsDarkVariant) twColor = TwColors.violet.shade900;
      return _child;
  }
	T get onDarkViolet {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.violet;
      }
      return _child;
  }
	T get onDarkViolet50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade50;
      }
      return _child;
  }
	T get onDarkViolet100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade100;
      }
      return _child;
  }
	T get onDarkViolet200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade200;
      }
      return _child;
  }
	T get onDarkViolet300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade300;
      }
      return _child;
  }
	T get onDarkViolet400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade400;
      }
      return _child;
  }
	T get onDarkViolet500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade500;
      }
      return _child;
  }
	T get onDarkViolet600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade600;
      }
      return _child;
  }
	T get onDarkViolet700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade700;
      }
      return _child;
  }
	T get onDarkViolet800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade800;
      }
      return _child;
  }
	T get onDarkViolet900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.violet.shade900;
      }
      return _child;
  }
	T get purple {
      if(!_needsDarkVariant) twColor = TwColors.purple;
      return _child;
  }
	T get purple50 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade50;
      return _child;
  }
	T get purple100 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade100;
      return _child;
  }
	T get purple200 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade200;
      return _child;
  }
	T get purple300 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade300;
      return _child;
  }
	T get purple400 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade400;
      return _child;
  }
	T get purple500 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade500;
      return _child;
  }
	T get purple600 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade600;
      return _child;
  }
	T get purple700 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade700;
      return _child;
  }
	T get purple800 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade800;
      return _child;
  }
	T get purple900 {
      if(!_needsDarkVariant) twColor = TwColors.purple.shade900;
      return _child;
  }
	T get onDarkPurple {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.purple;
      }
      return _child;
  }
	T get onDarkPurple50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade50;
      }
      return _child;
  }
	T get onDarkPurple100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade100;
      }
      return _child;
  }
	T get onDarkPurple200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade200;
      }
      return _child;
  }
	T get onDarkPurple300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade300;
      }
      return _child;
  }
	T get onDarkPurple400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade400;
      }
      return _child;
  }
	T get onDarkPurple500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade500;
      }
      return _child;
  }
	T get onDarkPurple600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade600;
      }
      return _child;
  }
	T get onDarkPurple700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade700;
      }
      return _child;
  }
	T get onDarkPurple800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade800;
      }
      return _child;
  }
	T get onDarkPurple900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.purple.shade900;
      }
      return _child;
  }
	T get fuchsia {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia;
      return _child;
  }
	T get fuchsia50 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade50;
      return _child;
  }
	T get fuchsia100 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade100;
      return _child;
  }
	T get fuchsia200 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade200;
      return _child;
  }
	T get fuchsia300 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade300;
      return _child;
  }
	T get fuchsia400 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade400;
      return _child;
  }
	T get fuchsia500 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade500;
      return _child;
  }
	T get fuchsia600 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade600;
      return _child;
  }
	T get fuchsia700 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade700;
      return _child;
  }
	T get fuchsia800 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade800;
      return _child;
  }
	T get fuchsia900 {
      if(!_needsDarkVariant) twColor = TwColors.fuchsia.shade900;
      return _child;
  }
	T get onDarkFuchsia {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.fuchsia;
      }
      return _child;
  }
	T get onDarkFuchsia50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade50;
      }
      return _child;
  }
	T get onDarkFuchsia100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade100;
      }
      return _child;
  }
	T get onDarkFuchsia200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade200;
      }
      return _child;
  }
	T get onDarkFuchsia300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade300;
      }
      return _child;
  }
	T get onDarkFuchsia400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade400;
      }
      return _child;
  }
	T get onDarkFuchsia500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade500;
      }
      return _child;
  }
	T get onDarkFuchsia600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade600;
      }
      return _child;
  }
	T get onDarkFuchsia700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade700;
      }
      return _child;
  }
	T get onDarkFuchsia800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade800;
      }
      return _child;
  }
	T get onDarkFuchsia900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.fuchsia.shade900;
      }
      return _child;
  }
	T get pink {
      if(!_needsDarkVariant) twColor = TwColors.pink;
      return _child;
  }
	T get pink50 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade50;
      return _child;
  }
	T get pink100 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade100;
      return _child;
  }
	T get pink200 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade200;
      return _child;
  }
	T get pink300 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade300;
      return _child;
  }
	T get pink400 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade400;
      return _child;
  }
	T get pink500 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade500;
      return _child;
  }
	T get pink600 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade600;
      return _child;
  }
	T get pink700 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade700;
      return _child;
  }
	T get pink800 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade800;
      return _child;
  }
	T get pink900 {
      if(!_needsDarkVariant) twColor = TwColors.pink.shade900;
      return _child;
  }
	T get onDarkPink {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.pink;
      }
      return _child;
  }
	T get onDarkPink50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade50;
      }
      return _child;
  }
	T get onDarkPink100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade100;
      }
      return _child;
  }
	T get onDarkPink200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade200;
      }
      return _child;
  }
	T get onDarkPink300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade300;
      }
      return _child;
  }
	T get onDarkPink400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade400;
      }
      return _child;
  }
	T get onDarkPink500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade500;
      }
      return _child;
  }
	T get onDarkPink600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade600;
      }
      return _child;
  }
	T get onDarkPink700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade700;
      }
      return _child;
  }
	T get onDarkPink800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade800;
      }
      return _child;
  }
	T get onDarkPink900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.pink.shade900;
      }
      return _child;
  }
	T get rose {
      if(!_needsDarkVariant) twColor = TwColors.rose;
      return _child;
  }
	T get rose50 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade50;
      return _child;
  }
	T get rose100 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade100;
      return _child;
  }
	T get rose200 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade200;
      return _child;
  }
	T get rose300 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade300;
      return _child;
  }
	T get rose400 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade400;
      return _child;
  }
	T get rose500 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade500;
      return _child;
  }
	T get rose600 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade600;
      return _child;
  }
	T get rose700 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade700;
      return _child;
  }
	T get rose800 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade800;
      return _child;
  }
	T get rose900 {
      if(!_needsDarkVariant) twColor = TwColors.rose.shade900;
      return _child;
  }
	T get onDarkRose {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.rose;
      }
      return _child;
  }
	T get onDarkRose50 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade50;
      }
      return _child;
  }
	T get onDarkRose100 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade100;
      }
      return _child;
  }
	T get onDarkRose200 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade200;
      }
      return _child;
  }
	T get onDarkRose300 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade300;
      }
      return _child;
  }
	T get onDarkRose400 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade400;
      }
      return _child;
  }
	T get onDarkRose500 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade500;
      }
      return _child;
  }
	T get onDarkRose600 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade600;
      }
      return _child;
  }
	T get onDarkRose700 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade700;
      }
      return _child;
  }
	T get onDarkRose800 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade800;
      }
      return _child;
  }
	T get onDarkRose900 {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.rose.shade900;
      }
      return _child;
  }
	T get primary {
      if(!_needsDarkVariant) twColor = TwColors.primary;
      return _child;
  }
	T get onDarkPrimary {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.primary;
      }
      return _child;
  }
	
}

