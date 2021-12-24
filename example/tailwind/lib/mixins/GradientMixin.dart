import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwGradientMixin<T> {
  late T _child;

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
    gradientColors[0] = Theme.of(context).primaryColor;
    return _child;
  }
  T toPrimaryColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).primaryColor;
    return _child;
  }

  T fromPrimaryColorDark(BuildContext context) {
    gradientColors[0] = Theme.of(context).primaryColorDark;
    return _child;
  }

  T fromAccentColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).accentColor;
    return _child;
  }
  T toAccentColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).accentColor;
    return _child;
  }

  T fromBackgroundColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).backgroundColor;
    return _child;
  }
  T toBackgroundColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).backgroundColor;
    return _child;
  }

  T fromScaffoldBackgroundColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }
  T toScaffoldBackgroundColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }

  T fromButtonColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).buttonColor;
    return _child;
  }
  T toButtonColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).buttonColor;
    return _child;
  }

  T fromCardColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).cardColor;
    return _child;
  }
  T toCardColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).cardColor;
    return _child;
  }

  T get fromBlack {
      gradientColors[0] = Tw.black;
      return _child;
  }
	T get toBlack {
      gradientColors[1] = Tw.black;
      return _child;
  }
	T get fromWhite {
      gradientColors[0] = Tw.white;
      return _child;
  }
	T get toWhite {
      gradientColors[1] = Tw.white;
      return _child;
  }
	T get fromTransparent {
      gradientColors[0] = Tw.transparent;
      return _child;
  }
	T get toTransparent {
      gradientColors[1] = Tw.transparent;
      return _child;
  }
	T get fromGray50 {
      gradientColors[0] = Tw.gray50;
      return _child;
  }
	T get toGray50 {
      gradientColors[1] = Tw.gray50;
      return _child;
  }
	T get fromGray100 {
      gradientColors[0] = Tw.gray100;
      return _child;
  }
	T get toGray100 {
      gradientColors[1] = Tw.gray100;
      return _child;
  }
	T get fromGray200 {
      gradientColors[0] = Tw.gray200;
      return _child;
  }
	T get toGray200 {
      gradientColors[1] = Tw.gray200;
      return _child;
  }
	T get fromGray300 {
      gradientColors[0] = Tw.gray300;
      return _child;
  }
	T get toGray300 {
      gradientColors[1] = Tw.gray300;
      return _child;
  }
	T get fromGray400 {
      gradientColors[0] = Tw.gray400;
      return _child;
  }
	T get toGray400 {
      gradientColors[1] = Tw.gray400;
      return _child;
  }
	T get fromGray500 {
      gradientColors[0] = Tw.gray500;
      return _child;
  }
	T get toGray500 {
      gradientColors[1] = Tw.gray500;
      return _child;
  }
	T get fromGray600 {
      gradientColors[0] = Tw.gray600;
      return _child;
  }
	T get toGray600 {
      gradientColors[1] = Tw.gray600;
      return _child;
  }
	T get fromGray700 {
      gradientColors[0] = Tw.gray700;
      return _child;
  }
	T get toGray700 {
      gradientColors[1] = Tw.gray700;
      return _child;
  }
	T get fromGray800 {
      gradientColors[0] = Tw.gray800;
      return _child;
  }
	T get toGray800 {
      gradientColors[1] = Tw.gray800;
      return _child;
  }
	T get fromGray900 {
      gradientColors[0] = Tw.gray900;
      return _child;
  }
	T get toGray900 {
      gradientColors[1] = Tw.gray900;
      return _child;
  }
	T get fromBlueGray50 {
      gradientColors[0] = Tw.blueGray50;
      return _child;
  }
	T get toBlueGray50 {
      gradientColors[1] = Tw.blueGray50;
      return _child;
  }
	T get fromBlueGray100 {
      gradientColors[0] = Tw.blueGray100;
      return _child;
  }
	T get toBlueGray100 {
      gradientColors[1] = Tw.blueGray100;
      return _child;
  }
	T get fromBlueGray200 {
      gradientColors[0] = Tw.blueGray200;
      return _child;
  }
	T get toBlueGray200 {
      gradientColors[1] = Tw.blueGray200;
      return _child;
  }
	T get fromBlueGray300 {
      gradientColors[0] = Tw.blueGray300;
      return _child;
  }
	T get toBlueGray300 {
      gradientColors[1] = Tw.blueGray300;
      return _child;
  }
	T get fromBlueGray400 {
      gradientColors[0] = Tw.blueGray400;
      return _child;
  }
	T get toBlueGray400 {
      gradientColors[1] = Tw.blueGray400;
      return _child;
  }
	T get fromBlueGray500 {
      gradientColors[0] = Tw.blueGray500;
      return _child;
  }
	T get toBlueGray500 {
      gradientColors[1] = Tw.blueGray500;
      return _child;
  }
	T get fromBlueGray600 {
      gradientColors[0] = Tw.blueGray600;
      return _child;
  }
	T get toBlueGray600 {
      gradientColors[1] = Tw.blueGray600;
      return _child;
  }
	T get fromBlueGray700 {
      gradientColors[0] = Tw.blueGray700;
      return _child;
  }
	T get toBlueGray700 {
      gradientColors[1] = Tw.blueGray700;
      return _child;
  }
	T get fromBlueGray800 {
      gradientColors[0] = Tw.blueGray800;
      return _child;
  }
	T get toBlueGray800 {
      gradientColors[1] = Tw.blueGray800;
      return _child;
  }
	T get fromBlueGray900 {
      gradientColors[0] = Tw.blueGray900;
      return _child;
  }
	T get toBlueGray900 {
      gradientColors[1] = Tw.blueGray900;
      return _child;
  }
	T get fromCoolGray50 {
      gradientColors[0] = Tw.coolGray50;
      return _child;
  }
	T get toCoolGray50 {
      gradientColors[1] = Tw.coolGray50;
      return _child;
  }
	T get fromCoolGray100 {
      gradientColors[0] = Tw.coolGray100;
      return _child;
  }
	T get toCoolGray100 {
      gradientColors[1] = Tw.coolGray100;
      return _child;
  }
	T get fromCoolGray200 {
      gradientColors[0] = Tw.coolGray200;
      return _child;
  }
	T get toCoolGray200 {
      gradientColors[1] = Tw.coolGray200;
      return _child;
  }
	T get fromCoolGray300 {
      gradientColors[0] = Tw.coolGray300;
      return _child;
  }
	T get toCoolGray300 {
      gradientColors[1] = Tw.coolGray300;
      return _child;
  }
	T get fromCoolGray400 {
      gradientColors[0] = Tw.coolGray400;
      return _child;
  }
	T get toCoolGray400 {
      gradientColors[1] = Tw.coolGray400;
      return _child;
  }
	T get fromCoolGray500 {
      gradientColors[0] = Tw.coolGray500;
      return _child;
  }
	T get toCoolGray500 {
      gradientColors[1] = Tw.coolGray500;
      return _child;
  }
	T get fromCoolGray600 {
      gradientColors[0] = Tw.coolGray600;
      return _child;
  }
	T get toCoolGray600 {
      gradientColors[1] = Tw.coolGray600;
      return _child;
  }
	T get fromCoolGray700 {
      gradientColors[0] = Tw.coolGray700;
      return _child;
  }
	T get toCoolGray700 {
      gradientColors[1] = Tw.coolGray700;
      return _child;
  }
	T get fromCoolGray800 {
      gradientColors[0] = Tw.coolGray800;
      return _child;
  }
	T get toCoolGray800 {
      gradientColors[1] = Tw.coolGray800;
      return _child;
  }
	T get fromCoolGray900 {
      gradientColors[0] = Tw.coolGray900;
      return _child;
  }
	T get toCoolGray900 {
      gradientColors[1] = Tw.coolGray900;
      return _child;
  }
	T get fromTrueGray50 {
      gradientColors[0] = Tw.trueGray50;
      return _child;
  }
	T get toTrueGray50 {
      gradientColors[1] = Tw.trueGray50;
      return _child;
  }
	T get fromTrueGray100 {
      gradientColors[0] = Tw.trueGray100;
      return _child;
  }
	T get toTrueGray100 {
      gradientColors[1] = Tw.trueGray100;
      return _child;
  }
	T get fromTrueGray200 {
      gradientColors[0] = Tw.trueGray200;
      return _child;
  }
	T get toTrueGray200 {
      gradientColors[1] = Tw.trueGray200;
      return _child;
  }
	T get fromTrueGray300 {
      gradientColors[0] = Tw.trueGray300;
      return _child;
  }
	T get toTrueGray300 {
      gradientColors[1] = Tw.trueGray300;
      return _child;
  }
	T get fromTrueGray400 {
      gradientColors[0] = Tw.trueGray400;
      return _child;
  }
	T get toTrueGray400 {
      gradientColors[1] = Tw.trueGray400;
      return _child;
  }
	T get fromTrueGray500 {
      gradientColors[0] = Tw.trueGray500;
      return _child;
  }
	T get toTrueGray500 {
      gradientColors[1] = Tw.trueGray500;
      return _child;
  }
	T get fromTrueGray600 {
      gradientColors[0] = Tw.trueGray600;
      return _child;
  }
	T get toTrueGray600 {
      gradientColors[1] = Tw.trueGray600;
      return _child;
  }
	T get fromTrueGray700 {
      gradientColors[0] = Tw.trueGray700;
      return _child;
  }
	T get toTrueGray700 {
      gradientColors[1] = Tw.trueGray700;
      return _child;
  }
	T get fromTrueGray800 {
      gradientColors[0] = Tw.trueGray800;
      return _child;
  }
	T get toTrueGray800 {
      gradientColors[1] = Tw.trueGray800;
      return _child;
  }
	T get fromTrueGray900 {
      gradientColors[0] = Tw.trueGray900;
      return _child;
  }
	T get toTrueGray900 {
      gradientColors[1] = Tw.trueGray900;
      return _child;
  }
	T get fromWarmGray50 {
      gradientColors[0] = Tw.warmGray50;
      return _child;
  }
	T get toWarmGray50 {
      gradientColors[1] = Tw.warmGray50;
      return _child;
  }
	T get fromWarmGray100 {
      gradientColors[0] = Tw.warmGray100;
      return _child;
  }
	T get toWarmGray100 {
      gradientColors[1] = Tw.warmGray100;
      return _child;
  }
	T get fromWarmGray200 {
      gradientColors[0] = Tw.warmGray200;
      return _child;
  }
	T get toWarmGray200 {
      gradientColors[1] = Tw.warmGray200;
      return _child;
  }
	T get fromWarmGray300 {
      gradientColors[0] = Tw.warmGray300;
      return _child;
  }
	T get toWarmGray300 {
      gradientColors[1] = Tw.warmGray300;
      return _child;
  }
	T get fromWarmGray400 {
      gradientColors[0] = Tw.warmGray400;
      return _child;
  }
	T get toWarmGray400 {
      gradientColors[1] = Tw.warmGray400;
      return _child;
  }
	T get fromWarmGray500 {
      gradientColors[0] = Tw.warmGray500;
      return _child;
  }
	T get toWarmGray500 {
      gradientColors[1] = Tw.warmGray500;
      return _child;
  }
	T get fromWarmGray600 {
      gradientColors[0] = Tw.warmGray600;
      return _child;
  }
	T get toWarmGray600 {
      gradientColors[1] = Tw.warmGray600;
      return _child;
  }
	T get fromWarmGray700 {
      gradientColors[0] = Tw.warmGray700;
      return _child;
  }
	T get toWarmGray700 {
      gradientColors[1] = Tw.warmGray700;
      return _child;
  }
	T get fromWarmGray800 {
      gradientColors[0] = Tw.warmGray800;
      return _child;
  }
	T get toWarmGray800 {
      gradientColors[1] = Tw.warmGray800;
      return _child;
  }
	T get fromWarmGray900 {
      gradientColors[0] = Tw.warmGray900;
      return _child;
  }
	T get toWarmGray900 {
      gradientColors[1] = Tw.warmGray900;
      return _child;
  }
	T get fromRed50 {
      gradientColors[0] = Tw.red50;
      return _child;
  }
	T get toRed50 {
      gradientColors[1] = Tw.red50;
      return _child;
  }
	T get fromRed100 {
      gradientColors[0] = Tw.red100;
      return _child;
  }
	T get toRed100 {
      gradientColors[1] = Tw.red100;
      return _child;
  }
	T get fromRed200 {
      gradientColors[0] = Tw.red200;
      return _child;
  }
	T get toRed200 {
      gradientColors[1] = Tw.red200;
      return _child;
  }
	T get fromRed300 {
      gradientColors[0] = Tw.red300;
      return _child;
  }
	T get toRed300 {
      gradientColors[1] = Tw.red300;
      return _child;
  }
	T get fromRed400 {
      gradientColors[0] = Tw.red400;
      return _child;
  }
	T get toRed400 {
      gradientColors[1] = Tw.red400;
      return _child;
  }
	T get fromRed500 {
      gradientColors[0] = Tw.red500;
      return _child;
  }
	T get toRed500 {
      gradientColors[1] = Tw.red500;
      return _child;
  }
	T get fromRed600 {
      gradientColors[0] = Tw.red600;
      return _child;
  }
	T get toRed600 {
      gradientColors[1] = Tw.red600;
      return _child;
  }
	T get fromRed700 {
      gradientColors[0] = Tw.red700;
      return _child;
  }
	T get toRed700 {
      gradientColors[1] = Tw.red700;
      return _child;
  }
	T get fromRed800 {
      gradientColors[0] = Tw.red800;
      return _child;
  }
	T get toRed800 {
      gradientColors[1] = Tw.red800;
      return _child;
  }
	T get fromRed900 {
      gradientColors[0] = Tw.red900;
      return _child;
  }
	T get toRed900 {
      gradientColors[1] = Tw.red900;
      return _child;
  }
	T get fromOrange50 {
      gradientColors[0] = Tw.orange50;
      return _child;
  }
	T get toOrange50 {
      gradientColors[1] = Tw.orange50;
      return _child;
  }
	T get fromOrange100 {
      gradientColors[0] = Tw.orange100;
      return _child;
  }
	T get toOrange100 {
      gradientColors[1] = Tw.orange100;
      return _child;
  }
	T get fromOrange200 {
      gradientColors[0] = Tw.orange200;
      return _child;
  }
	T get toOrange200 {
      gradientColors[1] = Tw.orange200;
      return _child;
  }
	T get fromOrange300 {
      gradientColors[0] = Tw.orange300;
      return _child;
  }
	T get toOrange300 {
      gradientColors[1] = Tw.orange300;
      return _child;
  }
	T get fromOrange400 {
      gradientColors[0] = Tw.orange400;
      return _child;
  }
	T get toOrange400 {
      gradientColors[1] = Tw.orange400;
      return _child;
  }
	T get fromOrange500 {
      gradientColors[0] = Tw.orange500;
      return _child;
  }
	T get toOrange500 {
      gradientColors[1] = Tw.orange500;
      return _child;
  }
	T get fromOrange600 {
      gradientColors[0] = Tw.orange600;
      return _child;
  }
	T get toOrange600 {
      gradientColors[1] = Tw.orange600;
      return _child;
  }
	T get fromOrange700 {
      gradientColors[0] = Tw.orange700;
      return _child;
  }
	T get toOrange700 {
      gradientColors[1] = Tw.orange700;
      return _child;
  }
	T get fromOrange800 {
      gradientColors[0] = Tw.orange800;
      return _child;
  }
	T get toOrange800 {
      gradientColors[1] = Tw.orange800;
      return _child;
  }
	T get fromOrange900 {
      gradientColors[0] = Tw.orange900;
      return _child;
  }
	T get toOrange900 {
      gradientColors[1] = Tw.orange900;
      return _child;
  }
	T get fromAmber50 {
      gradientColors[0] = Tw.amber50;
      return _child;
  }
	T get toAmber50 {
      gradientColors[1] = Tw.amber50;
      return _child;
  }
	T get fromAmber100 {
      gradientColors[0] = Tw.amber100;
      return _child;
  }
	T get toAmber100 {
      gradientColors[1] = Tw.amber100;
      return _child;
  }
	T get fromAmber200 {
      gradientColors[0] = Tw.amber200;
      return _child;
  }
	T get toAmber200 {
      gradientColors[1] = Tw.amber200;
      return _child;
  }
	T get fromAmber300 {
      gradientColors[0] = Tw.amber300;
      return _child;
  }
	T get toAmber300 {
      gradientColors[1] = Tw.amber300;
      return _child;
  }
	T get fromAmber400 {
      gradientColors[0] = Tw.amber400;
      return _child;
  }
	T get toAmber400 {
      gradientColors[1] = Tw.amber400;
      return _child;
  }
	T get fromAmber500 {
      gradientColors[0] = Tw.amber500;
      return _child;
  }
	T get toAmber500 {
      gradientColors[1] = Tw.amber500;
      return _child;
  }
	T get fromAmber600 {
      gradientColors[0] = Tw.amber600;
      return _child;
  }
	T get toAmber600 {
      gradientColors[1] = Tw.amber600;
      return _child;
  }
	T get fromAmber700 {
      gradientColors[0] = Tw.amber700;
      return _child;
  }
	T get toAmber700 {
      gradientColors[1] = Tw.amber700;
      return _child;
  }
	T get fromAmber800 {
      gradientColors[0] = Tw.amber800;
      return _child;
  }
	T get toAmber800 {
      gradientColors[1] = Tw.amber800;
      return _child;
  }
	T get fromAmber900 {
      gradientColors[0] = Tw.amber900;
      return _child;
  }
	T get toAmber900 {
      gradientColors[1] = Tw.amber900;
      return _child;
  }
	T get fromYellow50 {
      gradientColors[0] = Tw.yellow50;
      return _child;
  }
	T get toYellow50 {
      gradientColors[1] = Tw.yellow50;
      return _child;
  }
	T get fromYellow100 {
      gradientColors[0] = Tw.yellow100;
      return _child;
  }
	T get toYellow100 {
      gradientColors[1] = Tw.yellow100;
      return _child;
  }
	T get fromYellow200 {
      gradientColors[0] = Tw.yellow200;
      return _child;
  }
	T get toYellow200 {
      gradientColors[1] = Tw.yellow200;
      return _child;
  }
	T get fromYellow300 {
      gradientColors[0] = Tw.yellow300;
      return _child;
  }
	T get toYellow300 {
      gradientColors[1] = Tw.yellow300;
      return _child;
  }
	T get fromYellow400 {
      gradientColors[0] = Tw.yellow400;
      return _child;
  }
	T get toYellow400 {
      gradientColors[1] = Tw.yellow400;
      return _child;
  }
	T get fromYellow500 {
      gradientColors[0] = Tw.yellow500;
      return _child;
  }
	T get toYellow500 {
      gradientColors[1] = Tw.yellow500;
      return _child;
  }
	T get fromYellow600 {
      gradientColors[0] = Tw.yellow600;
      return _child;
  }
	T get toYellow600 {
      gradientColors[1] = Tw.yellow600;
      return _child;
  }
	T get fromYellow700 {
      gradientColors[0] = Tw.yellow700;
      return _child;
  }
	T get toYellow700 {
      gradientColors[1] = Tw.yellow700;
      return _child;
  }
	T get fromYellow800 {
      gradientColors[0] = Tw.yellow800;
      return _child;
  }
	T get toYellow800 {
      gradientColors[1] = Tw.yellow800;
      return _child;
  }
	T get fromYellow900 {
      gradientColors[0] = Tw.yellow900;
      return _child;
  }
	T get toYellow900 {
      gradientColors[1] = Tw.yellow900;
      return _child;
  }
	T get fromLime50 {
      gradientColors[0] = Tw.lime50;
      return _child;
  }
	T get toLime50 {
      gradientColors[1] = Tw.lime50;
      return _child;
  }
	T get fromLime100 {
      gradientColors[0] = Tw.lime100;
      return _child;
  }
	T get toLime100 {
      gradientColors[1] = Tw.lime100;
      return _child;
  }
	T get fromLime200 {
      gradientColors[0] = Tw.lime200;
      return _child;
  }
	T get toLime200 {
      gradientColors[1] = Tw.lime200;
      return _child;
  }
	T get fromLime300 {
      gradientColors[0] = Tw.lime300;
      return _child;
  }
	T get toLime300 {
      gradientColors[1] = Tw.lime300;
      return _child;
  }
	T get fromLime400 {
      gradientColors[0] = Tw.lime400;
      return _child;
  }
	T get toLime400 {
      gradientColors[1] = Tw.lime400;
      return _child;
  }
	T get fromLime500 {
      gradientColors[0] = Tw.lime500;
      return _child;
  }
	T get toLime500 {
      gradientColors[1] = Tw.lime500;
      return _child;
  }
	T get fromLime600 {
      gradientColors[0] = Tw.lime600;
      return _child;
  }
	T get toLime600 {
      gradientColors[1] = Tw.lime600;
      return _child;
  }
	T get fromLime700 {
      gradientColors[0] = Tw.lime700;
      return _child;
  }
	T get toLime700 {
      gradientColors[1] = Tw.lime700;
      return _child;
  }
	T get fromLime800 {
      gradientColors[0] = Tw.lime800;
      return _child;
  }
	T get toLime800 {
      gradientColors[1] = Tw.lime800;
      return _child;
  }
	T get fromLime900 {
      gradientColors[0] = Tw.lime900;
      return _child;
  }
	T get toLime900 {
      gradientColors[1] = Tw.lime900;
      return _child;
  }
	T get fromGreen50 {
      gradientColors[0] = Tw.green50;
      return _child;
  }
	T get toGreen50 {
      gradientColors[1] = Tw.green50;
      return _child;
  }
	T get fromGreen100 {
      gradientColors[0] = Tw.green100;
      return _child;
  }
	T get toGreen100 {
      gradientColors[1] = Tw.green100;
      return _child;
  }
	T get fromGreen200 {
      gradientColors[0] = Tw.green200;
      return _child;
  }
	T get toGreen200 {
      gradientColors[1] = Tw.green200;
      return _child;
  }
	T get fromGreen300 {
      gradientColors[0] = Tw.green300;
      return _child;
  }
	T get toGreen300 {
      gradientColors[1] = Tw.green300;
      return _child;
  }
	T get fromGreen400 {
      gradientColors[0] = Tw.green400;
      return _child;
  }
	T get toGreen400 {
      gradientColors[1] = Tw.green400;
      return _child;
  }
	T get fromGreen500 {
      gradientColors[0] = Tw.green500;
      return _child;
  }
	T get toGreen500 {
      gradientColors[1] = Tw.green500;
      return _child;
  }
	T get fromGreen600 {
      gradientColors[0] = Tw.green600;
      return _child;
  }
	T get toGreen600 {
      gradientColors[1] = Tw.green600;
      return _child;
  }
	T get fromGreen700 {
      gradientColors[0] = Tw.green700;
      return _child;
  }
	T get toGreen700 {
      gradientColors[1] = Tw.green700;
      return _child;
  }
	T get fromGreen800 {
      gradientColors[0] = Tw.green800;
      return _child;
  }
	T get toGreen800 {
      gradientColors[1] = Tw.green800;
      return _child;
  }
	T get fromGreen900 {
      gradientColors[0] = Tw.green900;
      return _child;
  }
	T get toGreen900 {
      gradientColors[1] = Tw.green900;
      return _child;
  }
	T get fromEmerald50 {
      gradientColors[0] = Tw.emerald50;
      return _child;
  }
	T get toEmerald50 {
      gradientColors[1] = Tw.emerald50;
      return _child;
  }
	T get fromEmerald100 {
      gradientColors[0] = Tw.emerald100;
      return _child;
  }
	T get toEmerald100 {
      gradientColors[1] = Tw.emerald100;
      return _child;
  }
	T get fromEmerald200 {
      gradientColors[0] = Tw.emerald200;
      return _child;
  }
	T get toEmerald200 {
      gradientColors[1] = Tw.emerald200;
      return _child;
  }
	T get fromEmerald300 {
      gradientColors[0] = Tw.emerald300;
      return _child;
  }
	T get toEmerald300 {
      gradientColors[1] = Tw.emerald300;
      return _child;
  }
	T get fromEmerald400 {
      gradientColors[0] = Tw.emerald400;
      return _child;
  }
	T get toEmerald400 {
      gradientColors[1] = Tw.emerald400;
      return _child;
  }
	T get fromEmerald500 {
      gradientColors[0] = Tw.emerald500;
      return _child;
  }
	T get toEmerald500 {
      gradientColors[1] = Tw.emerald500;
      return _child;
  }
	T get fromEmerald600 {
      gradientColors[0] = Tw.emerald600;
      return _child;
  }
	T get toEmerald600 {
      gradientColors[1] = Tw.emerald600;
      return _child;
  }
	T get fromEmerald700 {
      gradientColors[0] = Tw.emerald700;
      return _child;
  }
	T get toEmerald700 {
      gradientColors[1] = Tw.emerald700;
      return _child;
  }
	T get fromEmerald800 {
      gradientColors[0] = Tw.emerald800;
      return _child;
  }
	T get toEmerald800 {
      gradientColors[1] = Tw.emerald800;
      return _child;
  }
	T get fromEmerald900 {
      gradientColors[0] = Tw.emerald900;
      return _child;
  }
	T get toEmerald900 {
      gradientColors[1] = Tw.emerald900;
      return _child;
  }
	T get fromTeal50 {
      gradientColors[0] = Tw.teal50;
      return _child;
  }
	T get toTeal50 {
      gradientColors[1] = Tw.teal50;
      return _child;
  }
	T get fromTeal100 {
      gradientColors[0] = Tw.teal100;
      return _child;
  }
	T get toTeal100 {
      gradientColors[1] = Tw.teal100;
      return _child;
  }
	T get fromTeal200 {
      gradientColors[0] = Tw.teal200;
      return _child;
  }
	T get toTeal200 {
      gradientColors[1] = Tw.teal200;
      return _child;
  }
	T get fromTeal300 {
      gradientColors[0] = Tw.teal300;
      return _child;
  }
	T get toTeal300 {
      gradientColors[1] = Tw.teal300;
      return _child;
  }
	T get fromTeal400 {
      gradientColors[0] = Tw.teal400;
      return _child;
  }
	T get toTeal400 {
      gradientColors[1] = Tw.teal400;
      return _child;
  }
	T get fromTeal500 {
      gradientColors[0] = Tw.teal500;
      return _child;
  }
	T get toTeal500 {
      gradientColors[1] = Tw.teal500;
      return _child;
  }
	T get fromTeal600 {
      gradientColors[0] = Tw.teal600;
      return _child;
  }
	T get toTeal600 {
      gradientColors[1] = Tw.teal600;
      return _child;
  }
	T get fromTeal700 {
      gradientColors[0] = Tw.teal700;
      return _child;
  }
	T get toTeal700 {
      gradientColors[1] = Tw.teal700;
      return _child;
  }
	T get fromTeal800 {
      gradientColors[0] = Tw.teal800;
      return _child;
  }
	T get toTeal800 {
      gradientColors[1] = Tw.teal800;
      return _child;
  }
	T get fromTeal900 {
      gradientColors[0] = Tw.teal900;
      return _child;
  }
	T get toTeal900 {
      gradientColors[1] = Tw.teal900;
      return _child;
  }
	T get fromCyan50 {
      gradientColors[0] = Tw.cyan50;
      return _child;
  }
	T get toCyan50 {
      gradientColors[1] = Tw.cyan50;
      return _child;
  }
	T get fromCyan100 {
      gradientColors[0] = Tw.cyan100;
      return _child;
  }
	T get toCyan100 {
      gradientColors[1] = Tw.cyan100;
      return _child;
  }
	T get fromCyan200 {
      gradientColors[0] = Tw.cyan200;
      return _child;
  }
	T get toCyan200 {
      gradientColors[1] = Tw.cyan200;
      return _child;
  }
	T get fromCyan300 {
      gradientColors[0] = Tw.cyan300;
      return _child;
  }
	T get toCyan300 {
      gradientColors[1] = Tw.cyan300;
      return _child;
  }
	T get fromCyan400 {
      gradientColors[0] = Tw.cyan400;
      return _child;
  }
	T get toCyan400 {
      gradientColors[1] = Tw.cyan400;
      return _child;
  }
	T get fromCyan500 {
      gradientColors[0] = Tw.cyan500;
      return _child;
  }
	T get toCyan500 {
      gradientColors[1] = Tw.cyan500;
      return _child;
  }
	T get fromCyan600 {
      gradientColors[0] = Tw.cyan600;
      return _child;
  }
	T get toCyan600 {
      gradientColors[1] = Tw.cyan600;
      return _child;
  }
	T get fromCyan700 {
      gradientColors[0] = Tw.cyan700;
      return _child;
  }
	T get toCyan700 {
      gradientColors[1] = Tw.cyan700;
      return _child;
  }
	T get fromCyan800 {
      gradientColors[0] = Tw.cyan800;
      return _child;
  }
	T get toCyan800 {
      gradientColors[1] = Tw.cyan800;
      return _child;
  }
	T get fromCyan900 {
      gradientColors[0] = Tw.cyan900;
      return _child;
  }
	T get toCyan900 {
      gradientColors[1] = Tw.cyan900;
      return _child;
  }
	T get fromLightBlue50 {
      gradientColors[0] = Tw.lightBlue50;
      return _child;
  }
	T get toLightBlue50 {
      gradientColors[1] = Tw.lightBlue50;
      return _child;
  }
	T get fromLightBlue100 {
      gradientColors[0] = Tw.lightBlue100;
      return _child;
  }
	T get toLightBlue100 {
      gradientColors[1] = Tw.lightBlue100;
      return _child;
  }
	T get fromLightBlue200 {
      gradientColors[0] = Tw.lightBlue200;
      return _child;
  }
	T get toLightBlue200 {
      gradientColors[1] = Tw.lightBlue200;
      return _child;
  }
	T get fromLightBlue300 {
      gradientColors[0] = Tw.lightBlue300;
      return _child;
  }
	T get toLightBlue300 {
      gradientColors[1] = Tw.lightBlue300;
      return _child;
  }
	T get fromLightBlue400 {
      gradientColors[0] = Tw.lightBlue400;
      return _child;
  }
	T get toLightBlue400 {
      gradientColors[1] = Tw.lightBlue400;
      return _child;
  }
	T get fromLightBlue500 {
      gradientColors[0] = Tw.lightBlue500;
      return _child;
  }
	T get toLightBlue500 {
      gradientColors[1] = Tw.lightBlue500;
      return _child;
  }
	T get fromLightBlue600 {
      gradientColors[0] = Tw.lightBlue600;
      return _child;
  }
	T get toLightBlue600 {
      gradientColors[1] = Tw.lightBlue600;
      return _child;
  }
	T get fromLightBlue700 {
      gradientColors[0] = Tw.lightBlue700;
      return _child;
  }
	T get toLightBlue700 {
      gradientColors[1] = Tw.lightBlue700;
      return _child;
  }
	T get fromLightBlue800 {
      gradientColors[0] = Tw.lightBlue800;
      return _child;
  }
	T get toLightBlue800 {
      gradientColors[1] = Tw.lightBlue800;
      return _child;
  }
	T get fromLightBlue900 {
      gradientColors[0] = Tw.lightBlue900;
      return _child;
  }
	T get toLightBlue900 {
      gradientColors[1] = Tw.lightBlue900;
      return _child;
  }
	T get fromBlue50 {
      gradientColors[0] = Tw.blue50;
      return _child;
  }
	T get toBlue50 {
      gradientColors[1] = Tw.blue50;
      return _child;
  }
	T get fromBlue100 {
      gradientColors[0] = Tw.blue100;
      return _child;
  }
	T get toBlue100 {
      gradientColors[1] = Tw.blue100;
      return _child;
  }
	T get fromBlue200 {
      gradientColors[0] = Tw.blue200;
      return _child;
  }
	T get toBlue200 {
      gradientColors[1] = Tw.blue200;
      return _child;
  }
	T get fromBlue300 {
      gradientColors[0] = Tw.blue300;
      return _child;
  }
	T get toBlue300 {
      gradientColors[1] = Tw.blue300;
      return _child;
  }
	T get fromBlue400 {
      gradientColors[0] = Tw.blue400;
      return _child;
  }
	T get toBlue400 {
      gradientColors[1] = Tw.blue400;
      return _child;
  }
	T get fromBlue500 {
      gradientColors[0] = Tw.blue500;
      return _child;
  }
	T get toBlue500 {
      gradientColors[1] = Tw.blue500;
      return _child;
  }
	T get fromBlue600 {
      gradientColors[0] = Tw.blue600;
      return _child;
  }
	T get toBlue600 {
      gradientColors[1] = Tw.blue600;
      return _child;
  }
	T get fromBlue700 {
      gradientColors[0] = Tw.blue700;
      return _child;
  }
	T get toBlue700 {
      gradientColors[1] = Tw.blue700;
      return _child;
  }
	T get fromBlue800 {
      gradientColors[0] = Tw.blue800;
      return _child;
  }
	T get toBlue800 {
      gradientColors[1] = Tw.blue800;
      return _child;
  }
	T get fromBlue900 {
      gradientColors[0] = Tw.blue900;
      return _child;
  }
	T get toBlue900 {
      gradientColors[1] = Tw.blue900;
      return _child;
  }
	T get fromIndigo50 {
      gradientColors[0] = Tw.indigo50;
      return _child;
  }
	T get toIndigo50 {
      gradientColors[1] = Tw.indigo50;
      return _child;
  }
	T get fromIndigo100 {
      gradientColors[0] = Tw.indigo100;
      return _child;
  }
	T get toIndigo100 {
      gradientColors[1] = Tw.indigo100;
      return _child;
  }
	T get fromIndigo200 {
      gradientColors[0] = Tw.indigo200;
      return _child;
  }
	T get toIndigo200 {
      gradientColors[1] = Tw.indigo200;
      return _child;
  }
	T get fromIndigo300 {
      gradientColors[0] = Tw.indigo300;
      return _child;
  }
	T get toIndigo300 {
      gradientColors[1] = Tw.indigo300;
      return _child;
  }
	T get fromIndigo400 {
      gradientColors[0] = Tw.indigo400;
      return _child;
  }
	T get toIndigo400 {
      gradientColors[1] = Tw.indigo400;
      return _child;
  }
	T get fromIndigo500 {
      gradientColors[0] = Tw.indigo500;
      return _child;
  }
	T get toIndigo500 {
      gradientColors[1] = Tw.indigo500;
      return _child;
  }
	T get fromIndigo600 {
      gradientColors[0] = Tw.indigo600;
      return _child;
  }
	T get toIndigo600 {
      gradientColors[1] = Tw.indigo600;
      return _child;
  }
	T get fromIndigo700 {
      gradientColors[0] = Tw.indigo700;
      return _child;
  }
	T get toIndigo700 {
      gradientColors[1] = Tw.indigo700;
      return _child;
  }
	T get fromIndigo800 {
      gradientColors[0] = Tw.indigo800;
      return _child;
  }
	T get toIndigo800 {
      gradientColors[1] = Tw.indigo800;
      return _child;
  }
	T get fromIndigo900 {
      gradientColors[0] = Tw.indigo900;
      return _child;
  }
	T get toIndigo900 {
      gradientColors[1] = Tw.indigo900;
      return _child;
  }
	T get fromViolet50 {
      gradientColors[0] = Tw.violet50;
      return _child;
  }
	T get toViolet50 {
      gradientColors[1] = Tw.violet50;
      return _child;
  }
	T get fromViolet100 {
      gradientColors[0] = Tw.violet100;
      return _child;
  }
	T get toViolet100 {
      gradientColors[1] = Tw.violet100;
      return _child;
  }
	T get fromViolet200 {
      gradientColors[0] = Tw.violet200;
      return _child;
  }
	T get toViolet200 {
      gradientColors[1] = Tw.violet200;
      return _child;
  }
	T get fromViolet300 {
      gradientColors[0] = Tw.violet300;
      return _child;
  }
	T get toViolet300 {
      gradientColors[1] = Tw.violet300;
      return _child;
  }
	T get fromViolet400 {
      gradientColors[0] = Tw.violet400;
      return _child;
  }
	T get toViolet400 {
      gradientColors[1] = Tw.violet400;
      return _child;
  }
	T get fromViolet500 {
      gradientColors[0] = Tw.violet500;
      return _child;
  }
	T get toViolet500 {
      gradientColors[1] = Tw.violet500;
      return _child;
  }
	T get fromViolet600 {
      gradientColors[0] = Tw.violet600;
      return _child;
  }
	T get toViolet600 {
      gradientColors[1] = Tw.violet600;
      return _child;
  }
	T get fromViolet700 {
      gradientColors[0] = Tw.violet700;
      return _child;
  }
	T get toViolet700 {
      gradientColors[1] = Tw.violet700;
      return _child;
  }
	T get fromViolet800 {
      gradientColors[0] = Tw.violet800;
      return _child;
  }
	T get toViolet800 {
      gradientColors[1] = Tw.violet800;
      return _child;
  }
	T get fromViolet900 {
      gradientColors[0] = Tw.violet900;
      return _child;
  }
	T get toViolet900 {
      gradientColors[1] = Tw.violet900;
      return _child;
  }
	T get fromPurple50 {
      gradientColors[0] = Tw.purple50;
      return _child;
  }
	T get toPurple50 {
      gradientColors[1] = Tw.purple50;
      return _child;
  }
	T get fromPurple100 {
      gradientColors[0] = Tw.purple100;
      return _child;
  }
	T get toPurple100 {
      gradientColors[1] = Tw.purple100;
      return _child;
  }
	T get fromPurple200 {
      gradientColors[0] = Tw.purple200;
      return _child;
  }
	T get toPurple200 {
      gradientColors[1] = Tw.purple200;
      return _child;
  }
	T get fromPurple300 {
      gradientColors[0] = Tw.purple300;
      return _child;
  }
	T get toPurple300 {
      gradientColors[1] = Tw.purple300;
      return _child;
  }
	T get fromPurple400 {
      gradientColors[0] = Tw.purple400;
      return _child;
  }
	T get toPurple400 {
      gradientColors[1] = Tw.purple400;
      return _child;
  }
	T get fromPurple500 {
      gradientColors[0] = Tw.purple500;
      return _child;
  }
	T get toPurple500 {
      gradientColors[1] = Tw.purple500;
      return _child;
  }
	T get fromPurple600 {
      gradientColors[0] = Tw.purple600;
      return _child;
  }
	T get toPurple600 {
      gradientColors[1] = Tw.purple600;
      return _child;
  }
	T get fromPurple700 {
      gradientColors[0] = Tw.purple700;
      return _child;
  }
	T get toPurple700 {
      gradientColors[1] = Tw.purple700;
      return _child;
  }
	T get fromPurple800 {
      gradientColors[0] = Tw.purple800;
      return _child;
  }
	T get toPurple800 {
      gradientColors[1] = Tw.purple800;
      return _child;
  }
	T get fromPurple900 {
      gradientColors[0] = Tw.purple900;
      return _child;
  }
	T get toPurple900 {
      gradientColors[1] = Tw.purple900;
      return _child;
  }
	T get fromFuchsia50 {
      gradientColors[0] = Tw.fuchsia50;
      return _child;
  }
	T get toFuchsia50 {
      gradientColors[1] = Tw.fuchsia50;
      return _child;
  }
	T get fromFuchsia100 {
      gradientColors[0] = Tw.fuchsia100;
      return _child;
  }
	T get toFuchsia100 {
      gradientColors[1] = Tw.fuchsia100;
      return _child;
  }
	T get fromFuchsia200 {
      gradientColors[0] = Tw.fuchsia200;
      return _child;
  }
	T get toFuchsia200 {
      gradientColors[1] = Tw.fuchsia200;
      return _child;
  }
	T get fromFuchsia300 {
      gradientColors[0] = Tw.fuchsia300;
      return _child;
  }
	T get toFuchsia300 {
      gradientColors[1] = Tw.fuchsia300;
      return _child;
  }
	T get fromFuchsia400 {
      gradientColors[0] = Tw.fuchsia400;
      return _child;
  }
	T get toFuchsia400 {
      gradientColors[1] = Tw.fuchsia400;
      return _child;
  }
	T get fromFuchsia500 {
      gradientColors[0] = Tw.fuchsia500;
      return _child;
  }
	T get toFuchsia500 {
      gradientColors[1] = Tw.fuchsia500;
      return _child;
  }
	T get fromFuchsia600 {
      gradientColors[0] = Tw.fuchsia600;
      return _child;
  }
	T get toFuchsia600 {
      gradientColors[1] = Tw.fuchsia600;
      return _child;
  }
	T get fromFuchsia700 {
      gradientColors[0] = Tw.fuchsia700;
      return _child;
  }
	T get toFuchsia700 {
      gradientColors[1] = Tw.fuchsia700;
      return _child;
  }
	T get fromFuchsia800 {
      gradientColors[0] = Tw.fuchsia800;
      return _child;
  }
	T get toFuchsia800 {
      gradientColors[1] = Tw.fuchsia800;
      return _child;
  }
	T get fromFuchsia900 {
      gradientColors[0] = Tw.fuchsia900;
      return _child;
  }
	T get toFuchsia900 {
      gradientColors[1] = Tw.fuchsia900;
      return _child;
  }
	T get fromPink50 {
      gradientColors[0] = Tw.pink50;
      return _child;
  }
	T get toPink50 {
      gradientColors[1] = Tw.pink50;
      return _child;
  }
	T get fromPink100 {
      gradientColors[0] = Tw.pink100;
      return _child;
  }
	T get toPink100 {
      gradientColors[1] = Tw.pink100;
      return _child;
  }
	T get fromPink200 {
      gradientColors[0] = Tw.pink200;
      return _child;
  }
	T get toPink200 {
      gradientColors[1] = Tw.pink200;
      return _child;
  }
	T get fromPink300 {
      gradientColors[0] = Tw.pink300;
      return _child;
  }
	T get toPink300 {
      gradientColors[1] = Tw.pink300;
      return _child;
  }
	T get fromPink400 {
      gradientColors[0] = Tw.pink400;
      return _child;
  }
	T get toPink400 {
      gradientColors[1] = Tw.pink400;
      return _child;
  }
	T get fromPink500 {
      gradientColors[0] = Tw.pink500;
      return _child;
  }
	T get toPink500 {
      gradientColors[1] = Tw.pink500;
      return _child;
  }
	T get fromPink600 {
      gradientColors[0] = Tw.pink600;
      return _child;
  }
	T get toPink600 {
      gradientColors[1] = Tw.pink600;
      return _child;
  }
	T get fromPink700 {
      gradientColors[0] = Tw.pink700;
      return _child;
  }
	T get toPink700 {
      gradientColors[1] = Tw.pink700;
      return _child;
  }
	T get fromPink800 {
      gradientColors[0] = Tw.pink800;
      return _child;
  }
	T get toPink800 {
      gradientColors[1] = Tw.pink800;
      return _child;
  }
	T get fromPink900 {
      gradientColors[0] = Tw.pink900;
      return _child;
  }
	T get toPink900 {
      gradientColors[1] = Tw.pink900;
      return _child;
  }
	T get fromRose50 {
      gradientColors[0] = Tw.rose50;
      return _child;
  }
	T get toRose50 {
      gradientColors[1] = Tw.rose50;
      return _child;
  }
	T get fromRose100 {
      gradientColors[0] = Tw.rose100;
      return _child;
  }
	T get toRose100 {
      gradientColors[1] = Tw.rose100;
      return _child;
  }
	T get fromRose200 {
      gradientColors[0] = Tw.rose200;
      return _child;
  }
	T get toRose200 {
      gradientColors[1] = Tw.rose200;
      return _child;
  }
	T get fromRose300 {
      gradientColors[0] = Tw.rose300;
      return _child;
  }
	T get toRose300 {
      gradientColors[1] = Tw.rose300;
      return _child;
  }
	T get fromRose400 {
      gradientColors[0] = Tw.rose400;
      return _child;
  }
	T get toRose400 {
      gradientColors[1] = Tw.rose400;
      return _child;
  }
	T get fromRose500 {
      gradientColors[0] = Tw.rose500;
      return _child;
  }
	T get toRose500 {
      gradientColors[1] = Tw.rose500;
      return _child;
  }
	T get fromRose600 {
      gradientColors[0] = Tw.rose600;
      return _child;
  }
	T get toRose600 {
      gradientColors[1] = Tw.rose600;
      return _child;
  }
	T get fromRose700 {
      gradientColors[0] = Tw.rose700;
      return _child;
  }
	T get toRose700 {
      gradientColors[1] = Tw.rose700;
      return _child;
  }
	T get fromRose800 {
      gradientColors[0] = Tw.rose800;
      return _child;
  }
	T get toRose800 {
      gradientColors[1] = Tw.rose800;
      return _child;
  }
	T get fromRose900 {
      gradientColors[0] = Tw.rose900;
      return _child;
  }
	T get toRose900 {
      gradientColors[1] = Tw.rose900;
      return _child;
  }
	T get fromPrimary {
      gradientColors[0] = Tw.primary;
      return _child;
  }
	T get toPrimary {
      gradientColors[1] = Tw.primary;
      return _child;
  }
	
}

