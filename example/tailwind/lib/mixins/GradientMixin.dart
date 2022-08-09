import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'package:get/get.dart';

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
  T get fromPrimaryColor {
    gradientColors[0] = TwColors.primaryColor(Get.context!);
    return _child;
  }
  T get toPrimaryColor {
    gradientColors[1] = TwColors.primaryColor(Get.context!);
    return _child;
  }

  T get fromPrimaryColorDark {
    gradientColors[0] = TwColors.primaryColorDark(Get.context!);
    return _child;
  }

  T get fromSecondaryColor {
    gradientColors[0] = TwColors.secondary(Get.context!);
    return _child;
  }
  T get toSecondaryColor {
    gradientColors[1] = TwColors.secondary(Get.context!);
    return _child;
  }

  T get fromBackgroundColor {
    gradientColors[0] = TwColors.backgroundColor(Get.context!);
    return _child;
  }
  T get toBackgroundColor {
    gradientColors[1] = TwColors.backgroundColor(Get.context!);
    return _child;
  }

  T get fromScaffoldBackgroundColor {
    gradientColors[0] = TwColors.scaffoldBackgroundColor(Get.context!);
    return _child;
  }
  T get toScaffoldBackgroundColor {
    gradientColors[1] = TwColors.scaffoldBackgroundColor(Get.context!);
    return _child;
  }


  T get fromCardColor {
    gradientColors[0] = TwColors.cardColor(Get.context!);
    return _child;
  }
  T get toCardColor {
    gradientColors[1] = TwColors.cardColor(Get.context!);
    return _child;
  }

  T get fromBlack {
      gradientColors[0] = TwColors.black;
      return _child;
  }
	T get toBlack {
      gradientColors[1] = TwColors.black;
      return _child;
  }
	T get fromWhite {
      gradientColors[0] = TwColors.white;
      return _child;
  }
	T get toWhite {
      gradientColors[1] = TwColors.white;
      return _child;
  }
	T get fromTransparent {
      gradientColors[0] = TwColors.transparent;
      return _child;
  }
	T get toTransparent {
      gradientColors[1] = TwColors.transparent;
      return _child;
  }
	T get fromGray50 {
      gradientColors[0] = TwColors.gray50;
      return _child;
  }
	T get toGray50 {
      gradientColors[1] = TwColors.gray50;
      return _child;
  }
	T get fromGray100 {
      gradientColors[0] = TwColors.gray100;
      return _child;
  }
	T get toGray100 {
      gradientColors[1] = TwColors.gray100;
      return _child;
  }
	T get fromGray200 {
      gradientColors[0] = TwColors.gray200;
      return _child;
  }
	T get toGray200 {
      gradientColors[1] = TwColors.gray200;
      return _child;
  }
	T get fromGray300 {
      gradientColors[0] = TwColors.gray300;
      return _child;
  }
	T get toGray300 {
      gradientColors[1] = TwColors.gray300;
      return _child;
  }
	T get fromGray400 {
      gradientColors[0] = TwColors.gray400;
      return _child;
  }
	T get toGray400 {
      gradientColors[1] = TwColors.gray400;
      return _child;
  }
	T get fromGray500 {
      gradientColors[0] = TwColors.gray500;
      return _child;
  }
	T get toGray500 {
      gradientColors[1] = TwColors.gray500;
      return _child;
  }
	T get fromGray600 {
      gradientColors[0] = TwColors.gray600;
      return _child;
  }
	T get toGray600 {
      gradientColors[1] = TwColors.gray600;
      return _child;
  }
	T get fromGray700 {
      gradientColors[0] = TwColors.gray700;
      return _child;
  }
	T get toGray700 {
      gradientColors[1] = TwColors.gray700;
      return _child;
  }
	T get fromGray800 {
      gradientColors[0] = TwColors.gray800;
      return _child;
  }
	T get toGray800 {
      gradientColors[1] = TwColors.gray800;
      return _child;
  }
	T get fromGray900 {
      gradientColors[0] = TwColors.gray900;
      return _child;
  }
	T get toGray900 {
      gradientColors[1] = TwColors.gray900;
      return _child;
  }
	T get fromBlueGray50 {
      gradientColors[0] = TwColors.blueGray50;
      return _child;
  }
	T get toBlueGray50 {
      gradientColors[1] = TwColors.blueGray50;
      return _child;
  }
	T get fromBlueGray100 {
      gradientColors[0] = TwColors.blueGray100;
      return _child;
  }
	T get toBlueGray100 {
      gradientColors[1] = TwColors.blueGray100;
      return _child;
  }
	T get fromBlueGray200 {
      gradientColors[0] = TwColors.blueGray200;
      return _child;
  }
	T get toBlueGray200 {
      gradientColors[1] = TwColors.blueGray200;
      return _child;
  }
	T get fromBlueGray300 {
      gradientColors[0] = TwColors.blueGray300;
      return _child;
  }
	T get toBlueGray300 {
      gradientColors[1] = TwColors.blueGray300;
      return _child;
  }
	T get fromBlueGray400 {
      gradientColors[0] = TwColors.blueGray400;
      return _child;
  }
	T get toBlueGray400 {
      gradientColors[1] = TwColors.blueGray400;
      return _child;
  }
	T get fromBlueGray500 {
      gradientColors[0] = TwColors.blueGray500;
      return _child;
  }
	T get toBlueGray500 {
      gradientColors[1] = TwColors.blueGray500;
      return _child;
  }
	T get fromBlueGray600 {
      gradientColors[0] = TwColors.blueGray600;
      return _child;
  }
	T get toBlueGray600 {
      gradientColors[1] = TwColors.blueGray600;
      return _child;
  }
	T get fromBlueGray700 {
      gradientColors[0] = TwColors.blueGray700;
      return _child;
  }
	T get toBlueGray700 {
      gradientColors[1] = TwColors.blueGray700;
      return _child;
  }
	T get fromBlueGray800 {
      gradientColors[0] = TwColors.blueGray800;
      return _child;
  }
	T get toBlueGray800 {
      gradientColors[1] = TwColors.blueGray800;
      return _child;
  }
	T get fromBlueGray900 {
      gradientColors[0] = TwColors.blueGray900;
      return _child;
  }
	T get toBlueGray900 {
      gradientColors[1] = TwColors.blueGray900;
      return _child;
  }
	T get fromCoolGray50 {
      gradientColors[0] = TwColors.coolGray50;
      return _child;
  }
	T get toCoolGray50 {
      gradientColors[1] = TwColors.coolGray50;
      return _child;
  }
	T get fromCoolGray100 {
      gradientColors[0] = TwColors.coolGray100;
      return _child;
  }
	T get toCoolGray100 {
      gradientColors[1] = TwColors.coolGray100;
      return _child;
  }
	T get fromCoolGray200 {
      gradientColors[0] = TwColors.coolGray200;
      return _child;
  }
	T get toCoolGray200 {
      gradientColors[1] = TwColors.coolGray200;
      return _child;
  }
	T get fromCoolGray300 {
      gradientColors[0] = TwColors.coolGray300;
      return _child;
  }
	T get toCoolGray300 {
      gradientColors[1] = TwColors.coolGray300;
      return _child;
  }
	T get fromCoolGray400 {
      gradientColors[0] = TwColors.coolGray400;
      return _child;
  }
	T get toCoolGray400 {
      gradientColors[1] = TwColors.coolGray400;
      return _child;
  }
	T get fromCoolGray500 {
      gradientColors[0] = TwColors.coolGray500;
      return _child;
  }
	T get toCoolGray500 {
      gradientColors[1] = TwColors.coolGray500;
      return _child;
  }
	T get fromCoolGray600 {
      gradientColors[0] = TwColors.coolGray600;
      return _child;
  }
	T get toCoolGray600 {
      gradientColors[1] = TwColors.coolGray600;
      return _child;
  }
	T get fromCoolGray700 {
      gradientColors[0] = TwColors.coolGray700;
      return _child;
  }
	T get toCoolGray700 {
      gradientColors[1] = TwColors.coolGray700;
      return _child;
  }
	T get fromCoolGray800 {
      gradientColors[0] = TwColors.coolGray800;
      return _child;
  }
	T get toCoolGray800 {
      gradientColors[1] = TwColors.coolGray800;
      return _child;
  }
	T get fromCoolGray900 {
      gradientColors[0] = TwColors.coolGray900;
      return _child;
  }
	T get toCoolGray900 {
      gradientColors[1] = TwColors.coolGray900;
      return _child;
  }
	T get fromTrueGray50 {
      gradientColors[0] = TwColors.trueGray50;
      return _child;
  }
	T get toTrueGray50 {
      gradientColors[1] = TwColors.trueGray50;
      return _child;
  }
	T get fromTrueGray100 {
      gradientColors[0] = TwColors.trueGray100;
      return _child;
  }
	T get toTrueGray100 {
      gradientColors[1] = TwColors.trueGray100;
      return _child;
  }
	T get fromTrueGray200 {
      gradientColors[0] = TwColors.trueGray200;
      return _child;
  }
	T get toTrueGray200 {
      gradientColors[1] = TwColors.trueGray200;
      return _child;
  }
	T get fromTrueGray300 {
      gradientColors[0] = TwColors.trueGray300;
      return _child;
  }
	T get toTrueGray300 {
      gradientColors[1] = TwColors.trueGray300;
      return _child;
  }
	T get fromTrueGray400 {
      gradientColors[0] = TwColors.trueGray400;
      return _child;
  }
	T get toTrueGray400 {
      gradientColors[1] = TwColors.trueGray400;
      return _child;
  }
	T get fromTrueGray500 {
      gradientColors[0] = TwColors.trueGray500;
      return _child;
  }
	T get toTrueGray500 {
      gradientColors[1] = TwColors.trueGray500;
      return _child;
  }
	T get fromTrueGray600 {
      gradientColors[0] = TwColors.trueGray600;
      return _child;
  }
	T get toTrueGray600 {
      gradientColors[1] = TwColors.trueGray600;
      return _child;
  }
	T get fromTrueGray700 {
      gradientColors[0] = TwColors.trueGray700;
      return _child;
  }
	T get toTrueGray700 {
      gradientColors[1] = TwColors.trueGray700;
      return _child;
  }
	T get fromTrueGray800 {
      gradientColors[0] = TwColors.trueGray800;
      return _child;
  }
	T get toTrueGray800 {
      gradientColors[1] = TwColors.trueGray800;
      return _child;
  }
	T get fromTrueGray900 {
      gradientColors[0] = TwColors.trueGray900;
      return _child;
  }
	T get toTrueGray900 {
      gradientColors[1] = TwColors.trueGray900;
      return _child;
  }
	T get fromWarmGray50 {
      gradientColors[0] = TwColors.warmGray50;
      return _child;
  }
	T get toWarmGray50 {
      gradientColors[1] = TwColors.warmGray50;
      return _child;
  }
	T get fromWarmGray100 {
      gradientColors[0] = TwColors.warmGray100;
      return _child;
  }
	T get toWarmGray100 {
      gradientColors[1] = TwColors.warmGray100;
      return _child;
  }
	T get fromWarmGray200 {
      gradientColors[0] = TwColors.warmGray200;
      return _child;
  }
	T get toWarmGray200 {
      gradientColors[1] = TwColors.warmGray200;
      return _child;
  }
	T get fromWarmGray300 {
      gradientColors[0] = TwColors.warmGray300;
      return _child;
  }
	T get toWarmGray300 {
      gradientColors[1] = TwColors.warmGray300;
      return _child;
  }
	T get fromWarmGray400 {
      gradientColors[0] = TwColors.warmGray400;
      return _child;
  }
	T get toWarmGray400 {
      gradientColors[1] = TwColors.warmGray400;
      return _child;
  }
	T get fromWarmGray500 {
      gradientColors[0] = TwColors.warmGray500;
      return _child;
  }
	T get toWarmGray500 {
      gradientColors[1] = TwColors.warmGray500;
      return _child;
  }
	T get fromWarmGray600 {
      gradientColors[0] = TwColors.warmGray600;
      return _child;
  }
	T get toWarmGray600 {
      gradientColors[1] = TwColors.warmGray600;
      return _child;
  }
	T get fromWarmGray700 {
      gradientColors[0] = TwColors.warmGray700;
      return _child;
  }
	T get toWarmGray700 {
      gradientColors[1] = TwColors.warmGray700;
      return _child;
  }
	T get fromWarmGray800 {
      gradientColors[0] = TwColors.warmGray800;
      return _child;
  }
	T get toWarmGray800 {
      gradientColors[1] = TwColors.warmGray800;
      return _child;
  }
	T get fromWarmGray900 {
      gradientColors[0] = TwColors.warmGray900;
      return _child;
  }
	T get toWarmGray900 {
      gradientColors[1] = TwColors.warmGray900;
      return _child;
  }
	T get fromRed50 {
      gradientColors[0] = TwColors.red50;
      return _child;
  }
	T get toRed50 {
      gradientColors[1] = TwColors.red50;
      return _child;
  }
	T get fromRed100 {
      gradientColors[0] = TwColors.red100;
      return _child;
  }
	T get toRed100 {
      gradientColors[1] = TwColors.red100;
      return _child;
  }
	T get fromRed200 {
      gradientColors[0] = TwColors.red200;
      return _child;
  }
	T get toRed200 {
      gradientColors[1] = TwColors.red200;
      return _child;
  }
	T get fromRed300 {
      gradientColors[0] = TwColors.red300;
      return _child;
  }
	T get toRed300 {
      gradientColors[1] = TwColors.red300;
      return _child;
  }
	T get fromRed400 {
      gradientColors[0] = TwColors.red400;
      return _child;
  }
	T get toRed400 {
      gradientColors[1] = TwColors.red400;
      return _child;
  }
	T get fromRed500 {
      gradientColors[0] = TwColors.red500;
      return _child;
  }
	T get toRed500 {
      gradientColors[1] = TwColors.red500;
      return _child;
  }
	T get fromRed600 {
      gradientColors[0] = TwColors.red600;
      return _child;
  }
	T get toRed600 {
      gradientColors[1] = TwColors.red600;
      return _child;
  }
	T get fromRed700 {
      gradientColors[0] = TwColors.red700;
      return _child;
  }
	T get toRed700 {
      gradientColors[1] = TwColors.red700;
      return _child;
  }
	T get fromRed800 {
      gradientColors[0] = TwColors.red800;
      return _child;
  }
	T get toRed800 {
      gradientColors[1] = TwColors.red800;
      return _child;
  }
	T get fromRed900 {
      gradientColors[0] = TwColors.red900;
      return _child;
  }
	T get toRed900 {
      gradientColors[1] = TwColors.red900;
      return _child;
  }
	T get fromOrange50 {
      gradientColors[0] = TwColors.orange50;
      return _child;
  }
	T get toOrange50 {
      gradientColors[1] = TwColors.orange50;
      return _child;
  }
	T get fromOrange100 {
      gradientColors[0] = TwColors.orange100;
      return _child;
  }
	T get toOrange100 {
      gradientColors[1] = TwColors.orange100;
      return _child;
  }
	T get fromOrange200 {
      gradientColors[0] = TwColors.orange200;
      return _child;
  }
	T get toOrange200 {
      gradientColors[1] = TwColors.orange200;
      return _child;
  }
	T get fromOrange300 {
      gradientColors[0] = TwColors.orange300;
      return _child;
  }
	T get toOrange300 {
      gradientColors[1] = TwColors.orange300;
      return _child;
  }
	T get fromOrange400 {
      gradientColors[0] = TwColors.orange400;
      return _child;
  }
	T get toOrange400 {
      gradientColors[1] = TwColors.orange400;
      return _child;
  }
	T get fromOrange500 {
      gradientColors[0] = TwColors.orange500;
      return _child;
  }
	T get toOrange500 {
      gradientColors[1] = TwColors.orange500;
      return _child;
  }
	T get fromOrange600 {
      gradientColors[0] = TwColors.orange600;
      return _child;
  }
	T get toOrange600 {
      gradientColors[1] = TwColors.orange600;
      return _child;
  }
	T get fromOrange700 {
      gradientColors[0] = TwColors.orange700;
      return _child;
  }
	T get toOrange700 {
      gradientColors[1] = TwColors.orange700;
      return _child;
  }
	T get fromOrange800 {
      gradientColors[0] = TwColors.orange800;
      return _child;
  }
	T get toOrange800 {
      gradientColors[1] = TwColors.orange800;
      return _child;
  }
	T get fromOrange900 {
      gradientColors[0] = TwColors.orange900;
      return _child;
  }
	T get toOrange900 {
      gradientColors[1] = TwColors.orange900;
      return _child;
  }
	T get fromAmber50 {
      gradientColors[0] = TwColors.amber50;
      return _child;
  }
	T get toAmber50 {
      gradientColors[1] = TwColors.amber50;
      return _child;
  }
	T get fromAmber100 {
      gradientColors[0] = TwColors.amber100;
      return _child;
  }
	T get toAmber100 {
      gradientColors[1] = TwColors.amber100;
      return _child;
  }
	T get fromAmber200 {
      gradientColors[0] = TwColors.amber200;
      return _child;
  }
	T get toAmber200 {
      gradientColors[1] = TwColors.amber200;
      return _child;
  }
	T get fromAmber300 {
      gradientColors[0] = TwColors.amber300;
      return _child;
  }
	T get toAmber300 {
      gradientColors[1] = TwColors.amber300;
      return _child;
  }
	T get fromAmber400 {
      gradientColors[0] = TwColors.amber400;
      return _child;
  }
	T get toAmber400 {
      gradientColors[1] = TwColors.amber400;
      return _child;
  }
	T get fromAmber500 {
      gradientColors[0] = TwColors.amber500;
      return _child;
  }
	T get toAmber500 {
      gradientColors[1] = TwColors.amber500;
      return _child;
  }
	T get fromAmber600 {
      gradientColors[0] = TwColors.amber600;
      return _child;
  }
	T get toAmber600 {
      gradientColors[1] = TwColors.amber600;
      return _child;
  }
	T get fromAmber700 {
      gradientColors[0] = TwColors.amber700;
      return _child;
  }
	T get toAmber700 {
      gradientColors[1] = TwColors.amber700;
      return _child;
  }
	T get fromAmber800 {
      gradientColors[0] = TwColors.amber800;
      return _child;
  }
	T get toAmber800 {
      gradientColors[1] = TwColors.amber800;
      return _child;
  }
	T get fromAmber900 {
      gradientColors[0] = TwColors.amber900;
      return _child;
  }
	T get toAmber900 {
      gradientColors[1] = TwColors.amber900;
      return _child;
  }
	T get fromYellow50 {
      gradientColors[0] = TwColors.yellow50;
      return _child;
  }
	T get toYellow50 {
      gradientColors[1] = TwColors.yellow50;
      return _child;
  }
	T get fromYellow100 {
      gradientColors[0] = TwColors.yellow100;
      return _child;
  }
	T get toYellow100 {
      gradientColors[1] = TwColors.yellow100;
      return _child;
  }
	T get fromYellow200 {
      gradientColors[0] = TwColors.yellow200;
      return _child;
  }
	T get toYellow200 {
      gradientColors[1] = TwColors.yellow200;
      return _child;
  }
	T get fromYellow300 {
      gradientColors[0] = TwColors.yellow300;
      return _child;
  }
	T get toYellow300 {
      gradientColors[1] = TwColors.yellow300;
      return _child;
  }
	T get fromYellow400 {
      gradientColors[0] = TwColors.yellow400;
      return _child;
  }
	T get toYellow400 {
      gradientColors[1] = TwColors.yellow400;
      return _child;
  }
	T get fromYellow500 {
      gradientColors[0] = TwColors.yellow500;
      return _child;
  }
	T get toYellow500 {
      gradientColors[1] = TwColors.yellow500;
      return _child;
  }
	T get fromYellow600 {
      gradientColors[0] = TwColors.yellow600;
      return _child;
  }
	T get toYellow600 {
      gradientColors[1] = TwColors.yellow600;
      return _child;
  }
	T get fromYellow700 {
      gradientColors[0] = TwColors.yellow700;
      return _child;
  }
	T get toYellow700 {
      gradientColors[1] = TwColors.yellow700;
      return _child;
  }
	T get fromYellow800 {
      gradientColors[0] = TwColors.yellow800;
      return _child;
  }
	T get toYellow800 {
      gradientColors[1] = TwColors.yellow800;
      return _child;
  }
	T get fromYellow900 {
      gradientColors[0] = TwColors.yellow900;
      return _child;
  }
	T get toYellow900 {
      gradientColors[1] = TwColors.yellow900;
      return _child;
  }
	T get fromLime50 {
      gradientColors[0] = TwColors.lime50;
      return _child;
  }
	T get toLime50 {
      gradientColors[1] = TwColors.lime50;
      return _child;
  }
	T get fromLime100 {
      gradientColors[0] = TwColors.lime100;
      return _child;
  }
	T get toLime100 {
      gradientColors[1] = TwColors.lime100;
      return _child;
  }
	T get fromLime200 {
      gradientColors[0] = TwColors.lime200;
      return _child;
  }
	T get toLime200 {
      gradientColors[1] = TwColors.lime200;
      return _child;
  }
	T get fromLime300 {
      gradientColors[0] = TwColors.lime300;
      return _child;
  }
	T get toLime300 {
      gradientColors[1] = TwColors.lime300;
      return _child;
  }
	T get fromLime400 {
      gradientColors[0] = TwColors.lime400;
      return _child;
  }
	T get toLime400 {
      gradientColors[1] = TwColors.lime400;
      return _child;
  }
	T get fromLime500 {
      gradientColors[0] = TwColors.lime500;
      return _child;
  }
	T get toLime500 {
      gradientColors[1] = TwColors.lime500;
      return _child;
  }
	T get fromLime600 {
      gradientColors[0] = TwColors.lime600;
      return _child;
  }
	T get toLime600 {
      gradientColors[1] = TwColors.lime600;
      return _child;
  }
	T get fromLime700 {
      gradientColors[0] = TwColors.lime700;
      return _child;
  }
	T get toLime700 {
      gradientColors[1] = TwColors.lime700;
      return _child;
  }
	T get fromLime800 {
      gradientColors[0] = TwColors.lime800;
      return _child;
  }
	T get toLime800 {
      gradientColors[1] = TwColors.lime800;
      return _child;
  }
	T get fromLime900 {
      gradientColors[0] = TwColors.lime900;
      return _child;
  }
	T get toLime900 {
      gradientColors[1] = TwColors.lime900;
      return _child;
  }
	T get fromGreen50 {
      gradientColors[0] = TwColors.green50;
      return _child;
  }
	T get toGreen50 {
      gradientColors[1] = TwColors.green50;
      return _child;
  }
	T get fromGreen100 {
      gradientColors[0] = TwColors.green100;
      return _child;
  }
	T get toGreen100 {
      gradientColors[1] = TwColors.green100;
      return _child;
  }
	T get fromGreen200 {
      gradientColors[0] = TwColors.green200;
      return _child;
  }
	T get toGreen200 {
      gradientColors[1] = TwColors.green200;
      return _child;
  }
	T get fromGreen300 {
      gradientColors[0] = TwColors.green300;
      return _child;
  }
	T get toGreen300 {
      gradientColors[1] = TwColors.green300;
      return _child;
  }
	T get fromGreen400 {
      gradientColors[0] = TwColors.green400;
      return _child;
  }
	T get toGreen400 {
      gradientColors[1] = TwColors.green400;
      return _child;
  }
	T get fromGreen500 {
      gradientColors[0] = TwColors.green500;
      return _child;
  }
	T get toGreen500 {
      gradientColors[1] = TwColors.green500;
      return _child;
  }
	T get fromGreen600 {
      gradientColors[0] = TwColors.green600;
      return _child;
  }
	T get toGreen600 {
      gradientColors[1] = TwColors.green600;
      return _child;
  }
	T get fromGreen700 {
      gradientColors[0] = TwColors.green700;
      return _child;
  }
	T get toGreen700 {
      gradientColors[1] = TwColors.green700;
      return _child;
  }
	T get fromGreen800 {
      gradientColors[0] = TwColors.green800;
      return _child;
  }
	T get toGreen800 {
      gradientColors[1] = TwColors.green800;
      return _child;
  }
	T get fromGreen900 {
      gradientColors[0] = TwColors.green900;
      return _child;
  }
	T get toGreen900 {
      gradientColors[1] = TwColors.green900;
      return _child;
  }
	T get fromEmerald50 {
      gradientColors[0] = TwColors.emerald50;
      return _child;
  }
	T get toEmerald50 {
      gradientColors[1] = TwColors.emerald50;
      return _child;
  }
	T get fromEmerald100 {
      gradientColors[0] = TwColors.emerald100;
      return _child;
  }
	T get toEmerald100 {
      gradientColors[1] = TwColors.emerald100;
      return _child;
  }
	T get fromEmerald200 {
      gradientColors[0] = TwColors.emerald200;
      return _child;
  }
	T get toEmerald200 {
      gradientColors[1] = TwColors.emerald200;
      return _child;
  }
	T get fromEmerald300 {
      gradientColors[0] = TwColors.emerald300;
      return _child;
  }
	T get toEmerald300 {
      gradientColors[1] = TwColors.emerald300;
      return _child;
  }
	T get fromEmerald400 {
      gradientColors[0] = TwColors.emerald400;
      return _child;
  }
	T get toEmerald400 {
      gradientColors[1] = TwColors.emerald400;
      return _child;
  }
	T get fromEmerald500 {
      gradientColors[0] = TwColors.emerald500;
      return _child;
  }
	T get toEmerald500 {
      gradientColors[1] = TwColors.emerald500;
      return _child;
  }
	T get fromEmerald600 {
      gradientColors[0] = TwColors.emerald600;
      return _child;
  }
	T get toEmerald600 {
      gradientColors[1] = TwColors.emerald600;
      return _child;
  }
	T get fromEmerald700 {
      gradientColors[0] = TwColors.emerald700;
      return _child;
  }
	T get toEmerald700 {
      gradientColors[1] = TwColors.emerald700;
      return _child;
  }
	T get fromEmerald800 {
      gradientColors[0] = TwColors.emerald800;
      return _child;
  }
	T get toEmerald800 {
      gradientColors[1] = TwColors.emerald800;
      return _child;
  }
	T get fromEmerald900 {
      gradientColors[0] = TwColors.emerald900;
      return _child;
  }
	T get toEmerald900 {
      gradientColors[1] = TwColors.emerald900;
      return _child;
  }
	T get fromTeal50 {
      gradientColors[0] = TwColors.teal50;
      return _child;
  }
	T get toTeal50 {
      gradientColors[1] = TwColors.teal50;
      return _child;
  }
	T get fromTeal100 {
      gradientColors[0] = TwColors.teal100;
      return _child;
  }
	T get toTeal100 {
      gradientColors[1] = TwColors.teal100;
      return _child;
  }
	T get fromTeal200 {
      gradientColors[0] = TwColors.teal200;
      return _child;
  }
	T get toTeal200 {
      gradientColors[1] = TwColors.teal200;
      return _child;
  }
	T get fromTeal300 {
      gradientColors[0] = TwColors.teal300;
      return _child;
  }
	T get toTeal300 {
      gradientColors[1] = TwColors.teal300;
      return _child;
  }
	T get fromTeal400 {
      gradientColors[0] = TwColors.teal400;
      return _child;
  }
	T get toTeal400 {
      gradientColors[1] = TwColors.teal400;
      return _child;
  }
	T get fromTeal500 {
      gradientColors[0] = TwColors.teal500;
      return _child;
  }
	T get toTeal500 {
      gradientColors[1] = TwColors.teal500;
      return _child;
  }
	T get fromTeal600 {
      gradientColors[0] = TwColors.teal600;
      return _child;
  }
	T get toTeal600 {
      gradientColors[1] = TwColors.teal600;
      return _child;
  }
	T get fromTeal700 {
      gradientColors[0] = TwColors.teal700;
      return _child;
  }
	T get toTeal700 {
      gradientColors[1] = TwColors.teal700;
      return _child;
  }
	T get fromTeal800 {
      gradientColors[0] = TwColors.teal800;
      return _child;
  }
	T get toTeal800 {
      gradientColors[1] = TwColors.teal800;
      return _child;
  }
	T get fromTeal900 {
      gradientColors[0] = TwColors.teal900;
      return _child;
  }
	T get toTeal900 {
      gradientColors[1] = TwColors.teal900;
      return _child;
  }
	T get fromCyan50 {
      gradientColors[0] = TwColors.cyan50;
      return _child;
  }
	T get toCyan50 {
      gradientColors[1] = TwColors.cyan50;
      return _child;
  }
	T get fromCyan100 {
      gradientColors[0] = TwColors.cyan100;
      return _child;
  }
	T get toCyan100 {
      gradientColors[1] = TwColors.cyan100;
      return _child;
  }
	T get fromCyan200 {
      gradientColors[0] = TwColors.cyan200;
      return _child;
  }
	T get toCyan200 {
      gradientColors[1] = TwColors.cyan200;
      return _child;
  }
	T get fromCyan300 {
      gradientColors[0] = TwColors.cyan300;
      return _child;
  }
	T get toCyan300 {
      gradientColors[1] = TwColors.cyan300;
      return _child;
  }
	T get fromCyan400 {
      gradientColors[0] = TwColors.cyan400;
      return _child;
  }
	T get toCyan400 {
      gradientColors[1] = TwColors.cyan400;
      return _child;
  }
	T get fromCyan500 {
      gradientColors[0] = TwColors.cyan500;
      return _child;
  }
	T get toCyan500 {
      gradientColors[1] = TwColors.cyan500;
      return _child;
  }
	T get fromCyan600 {
      gradientColors[0] = TwColors.cyan600;
      return _child;
  }
	T get toCyan600 {
      gradientColors[1] = TwColors.cyan600;
      return _child;
  }
	T get fromCyan700 {
      gradientColors[0] = TwColors.cyan700;
      return _child;
  }
	T get toCyan700 {
      gradientColors[1] = TwColors.cyan700;
      return _child;
  }
	T get fromCyan800 {
      gradientColors[0] = TwColors.cyan800;
      return _child;
  }
	T get toCyan800 {
      gradientColors[1] = TwColors.cyan800;
      return _child;
  }
	T get fromCyan900 {
      gradientColors[0] = TwColors.cyan900;
      return _child;
  }
	T get toCyan900 {
      gradientColors[1] = TwColors.cyan900;
      return _child;
  }
	T get fromLightBlue50 {
      gradientColors[0] = TwColors.lightBlue50;
      return _child;
  }
	T get toLightBlue50 {
      gradientColors[1] = TwColors.lightBlue50;
      return _child;
  }
	T get fromLightBlue100 {
      gradientColors[0] = TwColors.lightBlue100;
      return _child;
  }
	T get toLightBlue100 {
      gradientColors[1] = TwColors.lightBlue100;
      return _child;
  }
	T get fromLightBlue200 {
      gradientColors[0] = TwColors.lightBlue200;
      return _child;
  }
	T get toLightBlue200 {
      gradientColors[1] = TwColors.lightBlue200;
      return _child;
  }
	T get fromLightBlue300 {
      gradientColors[0] = TwColors.lightBlue300;
      return _child;
  }
	T get toLightBlue300 {
      gradientColors[1] = TwColors.lightBlue300;
      return _child;
  }
	T get fromLightBlue400 {
      gradientColors[0] = TwColors.lightBlue400;
      return _child;
  }
	T get toLightBlue400 {
      gradientColors[1] = TwColors.lightBlue400;
      return _child;
  }
	T get fromLightBlue500 {
      gradientColors[0] = TwColors.lightBlue500;
      return _child;
  }
	T get toLightBlue500 {
      gradientColors[1] = TwColors.lightBlue500;
      return _child;
  }
	T get fromLightBlue600 {
      gradientColors[0] = TwColors.lightBlue600;
      return _child;
  }
	T get toLightBlue600 {
      gradientColors[1] = TwColors.lightBlue600;
      return _child;
  }
	T get fromLightBlue700 {
      gradientColors[0] = TwColors.lightBlue700;
      return _child;
  }
	T get toLightBlue700 {
      gradientColors[1] = TwColors.lightBlue700;
      return _child;
  }
	T get fromLightBlue800 {
      gradientColors[0] = TwColors.lightBlue800;
      return _child;
  }
	T get toLightBlue800 {
      gradientColors[1] = TwColors.lightBlue800;
      return _child;
  }
	T get fromLightBlue900 {
      gradientColors[0] = TwColors.lightBlue900;
      return _child;
  }
	T get toLightBlue900 {
      gradientColors[1] = TwColors.lightBlue900;
      return _child;
  }
	T get fromBlue50 {
      gradientColors[0] = TwColors.blue50;
      return _child;
  }
	T get toBlue50 {
      gradientColors[1] = TwColors.blue50;
      return _child;
  }
	T get fromBlue100 {
      gradientColors[0] = TwColors.blue100;
      return _child;
  }
	T get toBlue100 {
      gradientColors[1] = TwColors.blue100;
      return _child;
  }
	T get fromBlue200 {
      gradientColors[0] = TwColors.blue200;
      return _child;
  }
	T get toBlue200 {
      gradientColors[1] = TwColors.blue200;
      return _child;
  }
	T get fromBlue300 {
      gradientColors[0] = TwColors.blue300;
      return _child;
  }
	T get toBlue300 {
      gradientColors[1] = TwColors.blue300;
      return _child;
  }
	T get fromBlue400 {
      gradientColors[0] = TwColors.blue400;
      return _child;
  }
	T get toBlue400 {
      gradientColors[1] = TwColors.blue400;
      return _child;
  }
	T get fromBlue500 {
      gradientColors[0] = TwColors.blue500;
      return _child;
  }
	T get toBlue500 {
      gradientColors[1] = TwColors.blue500;
      return _child;
  }
	T get fromBlue600 {
      gradientColors[0] = TwColors.blue600;
      return _child;
  }
	T get toBlue600 {
      gradientColors[1] = TwColors.blue600;
      return _child;
  }
	T get fromBlue700 {
      gradientColors[0] = TwColors.blue700;
      return _child;
  }
	T get toBlue700 {
      gradientColors[1] = TwColors.blue700;
      return _child;
  }
	T get fromBlue800 {
      gradientColors[0] = TwColors.blue800;
      return _child;
  }
	T get toBlue800 {
      gradientColors[1] = TwColors.blue800;
      return _child;
  }
	T get fromBlue900 {
      gradientColors[0] = TwColors.blue900;
      return _child;
  }
	T get toBlue900 {
      gradientColors[1] = TwColors.blue900;
      return _child;
  }
	T get fromIndigo50 {
      gradientColors[0] = TwColors.indigo50;
      return _child;
  }
	T get toIndigo50 {
      gradientColors[1] = TwColors.indigo50;
      return _child;
  }
	T get fromIndigo100 {
      gradientColors[0] = TwColors.indigo100;
      return _child;
  }
	T get toIndigo100 {
      gradientColors[1] = TwColors.indigo100;
      return _child;
  }
	T get fromIndigo200 {
      gradientColors[0] = TwColors.indigo200;
      return _child;
  }
	T get toIndigo200 {
      gradientColors[1] = TwColors.indigo200;
      return _child;
  }
	T get fromIndigo300 {
      gradientColors[0] = TwColors.indigo300;
      return _child;
  }
	T get toIndigo300 {
      gradientColors[1] = TwColors.indigo300;
      return _child;
  }
	T get fromIndigo400 {
      gradientColors[0] = TwColors.indigo400;
      return _child;
  }
	T get toIndigo400 {
      gradientColors[1] = TwColors.indigo400;
      return _child;
  }
	T get fromIndigo500 {
      gradientColors[0] = TwColors.indigo500;
      return _child;
  }
	T get toIndigo500 {
      gradientColors[1] = TwColors.indigo500;
      return _child;
  }
	T get fromIndigo600 {
      gradientColors[0] = TwColors.indigo600;
      return _child;
  }
	T get toIndigo600 {
      gradientColors[1] = TwColors.indigo600;
      return _child;
  }
	T get fromIndigo700 {
      gradientColors[0] = TwColors.indigo700;
      return _child;
  }
	T get toIndigo700 {
      gradientColors[1] = TwColors.indigo700;
      return _child;
  }
	T get fromIndigo800 {
      gradientColors[0] = TwColors.indigo800;
      return _child;
  }
	T get toIndigo800 {
      gradientColors[1] = TwColors.indigo800;
      return _child;
  }
	T get fromIndigo900 {
      gradientColors[0] = TwColors.indigo900;
      return _child;
  }
	T get toIndigo900 {
      gradientColors[1] = TwColors.indigo900;
      return _child;
  }
	T get fromViolet50 {
      gradientColors[0] = TwColors.violet50;
      return _child;
  }
	T get toViolet50 {
      gradientColors[1] = TwColors.violet50;
      return _child;
  }
	T get fromViolet100 {
      gradientColors[0] = TwColors.violet100;
      return _child;
  }
	T get toViolet100 {
      gradientColors[1] = TwColors.violet100;
      return _child;
  }
	T get fromViolet200 {
      gradientColors[0] = TwColors.violet200;
      return _child;
  }
	T get toViolet200 {
      gradientColors[1] = TwColors.violet200;
      return _child;
  }
	T get fromViolet300 {
      gradientColors[0] = TwColors.violet300;
      return _child;
  }
	T get toViolet300 {
      gradientColors[1] = TwColors.violet300;
      return _child;
  }
	T get fromViolet400 {
      gradientColors[0] = TwColors.violet400;
      return _child;
  }
	T get toViolet400 {
      gradientColors[1] = TwColors.violet400;
      return _child;
  }
	T get fromViolet500 {
      gradientColors[0] = TwColors.violet500;
      return _child;
  }
	T get toViolet500 {
      gradientColors[1] = TwColors.violet500;
      return _child;
  }
	T get fromViolet600 {
      gradientColors[0] = TwColors.violet600;
      return _child;
  }
	T get toViolet600 {
      gradientColors[1] = TwColors.violet600;
      return _child;
  }
	T get fromViolet700 {
      gradientColors[0] = TwColors.violet700;
      return _child;
  }
	T get toViolet700 {
      gradientColors[1] = TwColors.violet700;
      return _child;
  }
	T get fromViolet800 {
      gradientColors[0] = TwColors.violet800;
      return _child;
  }
	T get toViolet800 {
      gradientColors[1] = TwColors.violet800;
      return _child;
  }
	T get fromViolet900 {
      gradientColors[0] = TwColors.violet900;
      return _child;
  }
	T get toViolet900 {
      gradientColors[1] = TwColors.violet900;
      return _child;
  }
	T get fromPurple50 {
      gradientColors[0] = TwColors.purple50;
      return _child;
  }
	T get toPurple50 {
      gradientColors[1] = TwColors.purple50;
      return _child;
  }
	T get fromPurple100 {
      gradientColors[0] = TwColors.purple100;
      return _child;
  }
	T get toPurple100 {
      gradientColors[1] = TwColors.purple100;
      return _child;
  }
	T get fromPurple200 {
      gradientColors[0] = TwColors.purple200;
      return _child;
  }
	T get toPurple200 {
      gradientColors[1] = TwColors.purple200;
      return _child;
  }
	T get fromPurple300 {
      gradientColors[0] = TwColors.purple300;
      return _child;
  }
	T get toPurple300 {
      gradientColors[1] = TwColors.purple300;
      return _child;
  }
	T get fromPurple400 {
      gradientColors[0] = TwColors.purple400;
      return _child;
  }
	T get toPurple400 {
      gradientColors[1] = TwColors.purple400;
      return _child;
  }
	T get fromPurple500 {
      gradientColors[0] = TwColors.purple500;
      return _child;
  }
	T get toPurple500 {
      gradientColors[1] = TwColors.purple500;
      return _child;
  }
	T get fromPurple600 {
      gradientColors[0] = TwColors.purple600;
      return _child;
  }
	T get toPurple600 {
      gradientColors[1] = TwColors.purple600;
      return _child;
  }
	T get fromPurple700 {
      gradientColors[0] = TwColors.purple700;
      return _child;
  }
	T get toPurple700 {
      gradientColors[1] = TwColors.purple700;
      return _child;
  }
	T get fromPurple800 {
      gradientColors[0] = TwColors.purple800;
      return _child;
  }
	T get toPurple800 {
      gradientColors[1] = TwColors.purple800;
      return _child;
  }
	T get fromPurple900 {
      gradientColors[0] = TwColors.purple900;
      return _child;
  }
	T get toPurple900 {
      gradientColors[1] = TwColors.purple900;
      return _child;
  }
	T get fromFuchsia50 {
      gradientColors[0] = TwColors.fuchsia50;
      return _child;
  }
	T get toFuchsia50 {
      gradientColors[1] = TwColors.fuchsia50;
      return _child;
  }
	T get fromFuchsia100 {
      gradientColors[0] = TwColors.fuchsia100;
      return _child;
  }
	T get toFuchsia100 {
      gradientColors[1] = TwColors.fuchsia100;
      return _child;
  }
	T get fromFuchsia200 {
      gradientColors[0] = TwColors.fuchsia200;
      return _child;
  }
	T get toFuchsia200 {
      gradientColors[1] = TwColors.fuchsia200;
      return _child;
  }
	T get fromFuchsia300 {
      gradientColors[0] = TwColors.fuchsia300;
      return _child;
  }
	T get toFuchsia300 {
      gradientColors[1] = TwColors.fuchsia300;
      return _child;
  }
	T get fromFuchsia400 {
      gradientColors[0] = TwColors.fuchsia400;
      return _child;
  }
	T get toFuchsia400 {
      gradientColors[1] = TwColors.fuchsia400;
      return _child;
  }
	T get fromFuchsia500 {
      gradientColors[0] = TwColors.fuchsia500;
      return _child;
  }
	T get toFuchsia500 {
      gradientColors[1] = TwColors.fuchsia500;
      return _child;
  }
	T get fromFuchsia600 {
      gradientColors[0] = TwColors.fuchsia600;
      return _child;
  }
	T get toFuchsia600 {
      gradientColors[1] = TwColors.fuchsia600;
      return _child;
  }
	T get fromFuchsia700 {
      gradientColors[0] = TwColors.fuchsia700;
      return _child;
  }
	T get toFuchsia700 {
      gradientColors[1] = TwColors.fuchsia700;
      return _child;
  }
	T get fromFuchsia800 {
      gradientColors[0] = TwColors.fuchsia800;
      return _child;
  }
	T get toFuchsia800 {
      gradientColors[1] = TwColors.fuchsia800;
      return _child;
  }
	T get fromFuchsia900 {
      gradientColors[0] = TwColors.fuchsia900;
      return _child;
  }
	T get toFuchsia900 {
      gradientColors[1] = TwColors.fuchsia900;
      return _child;
  }
	T get fromPink50 {
      gradientColors[0] = TwColors.pink50;
      return _child;
  }
	T get toPink50 {
      gradientColors[1] = TwColors.pink50;
      return _child;
  }
	T get fromPink100 {
      gradientColors[0] = TwColors.pink100;
      return _child;
  }
	T get toPink100 {
      gradientColors[1] = TwColors.pink100;
      return _child;
  }
	T get fromPink200 {
      gradientColors[0] = TwColors.pink200;
      return _child;
  }
	T get toPink200 {
      gradientColors[1] = TwColors.pink200;
      return _child;
  }
	T get fromPink300 {
      gradientColors[0] = TwColors.pink300;
      return _child;
  }
	T get toPink300 {
      gradientColors[1] = TwColors.pink300;
      return _child;
  }
	T get fromPink400 {
      gradientColors[0] = TwColors.pink400;
      return _child;
  }
	T get toPink400 {
      gradientColors[1] = TwColors.pink400;
      return _child;
  }
	T get fromPink500 {
      gradientColors[0] = TwColors.pink500;
      return _child;
  }
	T get toPink500 {
      gradientColors[1] = TwColors.pink500;
      return _child;
  }
	T get fromPink600 {
      gradientColors[0] = TwColors.pink600;
      return _child;
  }
	T get toPink600 {
      gradientColors[1] = TwColors.pink600;
      return _child;
  }
	T get fromPink700 {
      gradientColors[0] = TwColors.pink700;
      return _child;
  }
	T get toPink700 {
      gradientColors[1] = TwColors.pink700;
      return _child;
  }
	T get fromPink800 {
      gradientColors[0] = TwColors.pink800;
      return _child;
  }
	T get toPink800 {
      gradientColors[1] = TwColors.pink800;
      return _child;
  }
	T get fromPink900 {
      gradientColors[0] = TwColors.pink900;
      return _child;
  }
	T get toPink900 {
      gradientColors[1] = TwColors.pink900;
      return _child;
  }
	T get fromRose50 {
      gradientColors[0] = TwColors.rose50;
      return _child;
  }
	T get toRose50 {
      gradientColors[1] = TwColors.rose50;
      return _child;
  }
	T get fromRose100 {
      gradientColors[0] = TwColors.rose100;
      return _child;
  }
	T get toRose100 {
      gradientColors[1] = TwColors.rose100;
      return _child;
  }
	T get fromRose200 {
      gradientColors[0] = TwColors.rose200;
      return _child;
  }
	T get toRose200 {
      gradientColors[1] = TwColors.rose200;
      return _child;
  }
	T get fromRose300 {
      gradientColors[0] = TwColors.rose300;
      return _child;
  }
	T get toRose300 {
      gradientColors[1] = TwColors.rose300;
      return _child;
  }
	T get fromRose400 {
      gradientColors[0] = TwColors.rose400;
      return _child;
  }
	T get toRose400 {
      gradientColors[1] = TwColors.rose400;
      return _child;
  }
	T get fromRose500 {
      gradientColors[0] = TwColors.rose500;
      return _child;
  }
	T get toRose500 {
      gradientColors[1] = TwColors.rose500;
      return _child;
  }
	T get fromRose600 {
      gradientColors[0] = TwColors.rose600;
      return _child;
  }
	T get toRose600 {
      gradientColors[1] = TwColors.rose600;
      return _child;
  }
	T get fromRose700 {
      gradientColors[0] = TwColors.rose700;
      return _child;
  }
	T get toRose700 {
      gradientColors[1] = TwColors.rose700;
      return _child;
  }
	T get fromRose800 {
      gradientColors[0] = TwColors.rose800;
      return _child;
  }
	T get toRose800 {
      gradientColors[1] = TwColors.rose800;
      return _child;
  }
	T get fromRose900 {
      gradientColors[0] = TwColors.rose900;
      return _child;
  }
	T get toRose900 {
      gradientColors[1] = TwColors.rose900;
      return _child;
  }
	T get fromPrimary {
      gradientColors[0] = TwColors.primary;
      return _child;
  }
	T get toPrimary {
      gradientColors[1] = TwColors.primary;
      return _child;
  }
	
}

