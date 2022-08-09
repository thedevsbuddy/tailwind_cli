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
    gradientColors[0] = Theme.of(Get.context!).primaryColor;
    return _child;
  }
  T get toPrimaryColor {
    gradientColors[1] = Theme.of(Get.context!).primaryColor;
    return _child;
  }

  T get fromPrimaryColorDark {
    gradientColors[0] = Theme.of(Get.context!).primaryColorDark;
    return _child;
  }

  T get fromSecondaryColor {
    gradientColors[0] = Theme.of(Get.context!).colorScheme.secondary;
    return _child;
  }
  T get toSecondaryColor {
    gradientColors[1] = Theme.of(Get.context!).colorScheme.secondary;
    return _child;
  }

  T get fromBackgroundColor {
    gradientColors[0] = Theme.of(Get.context!).backgroundColor;
    return _child;
  }
  T get toBackgroundColor {
    gradientColors[1] = Theme.of(Get.context!).backgroundColor;
    return _child;
  }

  T get fromScaffoldBackgroundColor {
    gradientColors[0] = Theme.of(Get.context!).scaffoldBackgroundColor;
    return _child;
  }
  T get toScaffoldBackgroundColor {
    gradientColors[1] = Theme.of(Get.context!).scaffoldBackgroundColor;
    return _child;
  }


  T get fromCardColor {
    gradientColors[0] = Theme.of(Get.context!).cardColor;
    return _child;
  }
  T get toCardColor {
    gradientColors[1] = Theme.of(Get.context!).cardColor;
    return _child;
  }

  T get fromBlack {
      gradientColors[0] = twBlack;
      return _child;
  }
	T get toBlack {
      gradientColors[1] = twBlack;
      return _child;
  }
	T get fromWhite {
      gradientColors[0] = twWhite;
      return _child;
  }
	T get toWhite {
      gradientColors[1] = twWhite;
      return _child;
  }
	T get fromTransparent {
      gradientColors[0] = twTransparent;
      return _child;
  }
	T get toTransparent {
      gradientColors[1] = twTransparent;
      return _child;
  }
	T get fromGray50 {
      gradientColors[0] = twGray50;
      return _child;
  }
	T get toGray50 {
      gradientColors[1] = twGray50;
      return _child;
  }
	T get fromGray100 {
      gradientColors[0] = twGray100;
      return _child;
  }
	T get toGray100 {
      gradientColors[1] = twGray100;
      return _child;
  }
	T get fromGray200 {
      gradientColors[0] = twGray200;
      return _child;
  }
	T get toGray200 {
      gradientColors[1] = twGray200;
      return _child;
  }
	T get fromGray300 {
      gradientColors[0] = twGray300;
      return _child;
  }
	T get toGray300 {
      gradientColors[1] = twGray300;
      return _child;
  }
	T get fromGray400 {
      gradientColors[0] = twGray400;
      return _child;
  }
	T get toGray400 {
      gradientColors[1] = twGray400;
      return _child;
  }
	T get fromGray500 {
      gradientColors[0] = twGray500;
      return _child;
  }
	T get toGray500 {
      gradientColors[1] = twGray500;
      return _child;
  }
	T get fromGray600 {
      gradientColors[0] = twGray600;
      return _child;
  }
	T get toGray600 {
      gradientColors[1] = twGray600;
      return _child;
  }
	T get fromGray700 {
      gradientColors[0] = twGray700;
      return _child;
  }
	T get toGray700 {
      gradientColors[1] = twGray700;
      return _child;
  }
	T get fromGray800 {
      gradientColors[0] = twGray800;
      return _child;
  }
	T get toGray800 {
      gradientColors[1] = twGray800;
      return _child;
  }
	T get fromGray900 {
      gradientColors[0] = twGray900;
      return _child;
  }
	T get toGray900 {
      gradientColors[1] = twGray900;
      return _child;
  }
	T get fromBlueGray50 {
      gradientColors[0] = twBlueGray50;
      return _child;
  }
	T get toBlueGray50 {
      gradientColors[1] = twBlueGray50;
      return _child;
  }
	T get fromBlueGray100 {
      gradientColors[0] = twBlueGray100;
      return _child;
  }
	T get toBlueGray100 {
      gradientColors[1] = twBlueGray100;
      return _child;
  }
	T get fromBlueGray200 {
      gradientColors[0] = twBlueGray200;
      return _child;
  }
	T get toBlueGray200 {
      gradientColors[1] = twBlueGray200;
      return _child;
  }
	T get fromBlueGray300 {
      gradientColors[0] = twBlueGray300;
      return _child;
  }
	T get toBlueGray300 {
      gradientColors[1] = twBlueGray300;
      return _child;
  }
	T get fromBlueGray400 {
      gradientColors[0] = twBlueGray400;
      return _child;
  }
	T get toBlueGray400 {
      gradientColors[1] = twBlueGray400;
      return _child;
  }
	T get fromBlueGray500 {
      gradientColors[0] = twBlueGray500;
      return _child;
  }
	T get toBlueGray500 {
      gradientColors[1] = twBlueGray500;
      return _child;
  }
	T get fromBlueGray600 {
      gradientColors[0] = twBlueGray600;
      return _child;
  }
	T get toBlueGray600 {
      gradientColors[1] = twBlueGray600;
      return _child;
  }
	T get fromBlueGray700 {
      gradientColors[0] = twBlueGray700;
      return _child;
  }
	T get toBlueGray700 {
      gradientColors[1] = twBlueGray700;
      return _child;
  }
	T get fromBlueGray800 {
      gradientColors[0] = twBlueGray800;
      return _child;
  }
	T get toBlueGray800 {
      gradientColors[1] = twBlueGray800;
      return _child;
  }
	T get fromBlueGray900 {
      gradientColors[0] = twBlueGray900;
      return _child;
  }
	T get toBlueGray900 {
      gradientColors[1] = twBlueGray900;
      return _child;
  }
	T get fromCoolGray50 {
      gradientColors[0] = twCoolGray50;
      return _child;
  }
	T get toCoolGray50 {
      gradientColors[1] = twCoolGray50;
      return _child;
  }
	T get fromCoolGray100 {
      gradientColors[0] = twCoolGray100;
      return _child;
  }
	T get toCoolGray100 {
      gradientColors[1] = twCoolGray100;
      return _child;
  }
	T get fromCoolGray200 {
      gradientColors[0] = twCoolGray200;
      return _child;
  }
	T get toCoolGray200 {
      gradientColors[1] = twCoolGray200;
      return _child;
  }
	T get fromCoolGray300 {
      gradientColors[0] = twCoolGray300;
      return _child;
  }
	T get toCoolGray300 {
      gradientColors[1] = twCoolGray300;
      return _child;
  }
	T get fromCoolGray400 {
      gradientColors[0] = twCoolGray400;
      return _child;
  }
	T get toCoolGray400 {
      gradientColors[1] = twCoolGray400;
      return _child;
  }
	T get fromCoolGray500 {
      gradientColors[0] = twCoolGray500;
      return _child;
  }
	T get toCoolGray500 {
      gradientColors[1] = twCoolGray500;
      return _child;
  }
	T get fromCoolGray600 {
      gradientColors[0] = twCoolGray600;
      return _child;
  }
	T get toCoolGray600 {
      gradientColors[1] = twCoolGray600;
      return _child;
  }
	T get fromCoolGray700 {
      gradientColors[0] = twCoolGray700;
      return _child;
  }
	T get toCoolGray700 {
      gradientColors[1] = twCoolGray700;
      return _child;
  }
	T get fromCoolGray800 {
      gradientColors[0] = twCoolGray800;
      return _child;
  }
	T get toCoolGray800 {
      gradientColors[1] = twCoolGray800;
      return _child;
  }
	T get fromCoolGray900 {
      gradientColors[0] = twCoolGray900;
      return _child;
  }
	T get toCoolGray900 {
      gradientColors[1] = twCoolGray900;
      return _child;
  }
	T get fromTrueGray50 {
      gradientColors[0] = twTrueGray50;
      return _child;
  }
	T get toTrueGray50 {
      gradientColors[1] = twTrueGray50;
      return _child;
  }
	T get fromTrueGray100 {
      gradientColors[0] = twTrueGray100;
      return _child;
  }
	T get toTrueGray100 {
      gradientColors[1] = twTrueGray100;
      return _child;
  }
	T get fromTrueGray200 {
      gradientColors[0] = twTrueGray200;
      return _child;
  }
	T get toTrueGray200 {
      gradientColors[1] = twTrueGray200;
      return _child;
  }
	T get fromTrueGray300 {
      gradientColors[0] = twTrueGray300;
      return _child;
  }
	T get toTrueGray300 {
      gradientColors[1] = twTrueGray300;
      return _child;
  }
	T get fromTrueGray400 {
      gradientColors[0] = twTrueGray400;
      return _child;
  }
	T get toTrueGray400 {
      gradientColors[1] = twTrueGray400;
      return _child;
  }
	T get fromTrueGray500 {
      gradientColors[0] = twTrueGray500;
      return _child;
  }
	T get toTrueGray500 {
      gradientColors[1] = twTrueGray500;
      return _child;
  }
	T get fromTrueGray600 {
      gradientColors[0] = twTrueGray600;
      return _child;
  }
	T get toTrueGray600 {
      gradientColors[1] = twTrueGray600;
      return _child;
  }
	T get fromTrueGray700 {
      gradientColors[0] = twTrueGray700;
      return _child;
  }
	T get toTrueGray700 {
      gradientColors[1] = twTrueGray700;
      return _child;
  }
	T get fromTrueGray800 {
      gradientColors[0] = twTrueGray800;
      return _child;
  }
	T get toTrueGray800 {
      gradientColors[1] = twTrueGray800;
      return _child;
  }
	T get fromTrueGray900 {
      gradientColors[0] = twTrueGray900;
      return _child;
  }
	T get toTrueGray900 {
      gradientColors[1] = twTrueGray900;
      return _child;
  }
	T get fromWarmGray50 {
      gradientColors[0] = twWarmGray50;
      return _child;
  }
	T get toWarmGray50 {
      gradientColors[1] = twWarmGray50;
      return _child;
  }
	T get fromWarmGray100 {
      gradientColors[0] = twWarmGray100;
      return _child;
  }
	T get toWarmGray100 {
      gradientColors[1] = twWarmGray100;
      return _child;
  }
	T get fromWarmGray200 {
      gradientColors[0] = twWarmGray200;
      return _child;
  }
	T get toWarmGray200 {
      gradientColors[1] = twWarmGray200;
      return _child;
  }
	T get fromWarmGray300 {
      gradientColors[0] = twWarmGray300;
      return _child;
  }
	T get toWarmGray300 {
      gradientColors[1] = twWarmGray300;
      return _child;
  }
	T get fromWarmGray400 {
      gradientColors[0] = twWarmGray400;
      return _child;
  }
	T get toWarmGray400 {
      gradientColors[1] = twWarmGray400;
      return _child;
  }
	T get fromWarmGray500 {
      gradientColors[0] = twWarmGray500;
      return _child;
  }
	T get toWarmGray500 {
      gradientColors[1] = twWarmGray500;
      return _child;
  }
	T get fromWarmGray600 {
      gradientColors[0] = twWarmGray600;
      return _child;
  }
	T get toWarmGray600 {
      gradientColors[1] = twWarmGray600;
      return _child;
  }
	T get fromWarmGray700 {
      gradientColors[0] = twWarmGray700;
      return _child;
  }
	T get toWarmGray700 {
      gradientColors[1] = twWarmGray700;
      return _child;
  }
	T get fromWarmGray800 {
      gradientColors[0] = twWarmGray800;
      return _child;
  }
	T get toWarmGray800 {
      gradientColors[1] = twWarmGray800;
      return _child;
  }
	T get fromWarmGray900 {
      gradientColors[0] = twWarmGray900;
      return _child;
  }
	T get toWarmGray900 {
      gradientColors[1] = twWarmGray900;
      return _child;
  }
	T get fromRed50 {
      gradientColors[0] = twRed50;
      return _child;
  }
	T get toRed50 {
      gradientColors[1] = twRed50;
      return _child;
  }
	T get fromRed100 {
      gradientColors[0] = twRed100;
      return _child;
  }
	T get toRed100 {
      gradientColors[1] = twRed100;
      return _child;
  }
	T get fromRed200 {
      gradientColors[0] = twRed200;
      return _child;
  }
	T get toRed200 {
      gradientColors[1] = twRed200;
      return _child;
  }
	T get fromRed300 {
      gradientColors[0] = twRed300;
      return _child;
  }
	T get toRed300 {
      gradientColors[1] = twRed300;
      return _child;
  }
	T get fromRed400 {
      gradientColors[0] = twRed400;
      return _child;
  }
	T get toRed400 {
      gradientColors[1] = twRed400;
      return _child;
  }
	T get fromRed500 {
      gradientColors[0] = twRed500;
      return _child;
  }
	T get toRed500 {
      gradientColors[1] = twRed500;
      return _child;
  }
	T get fromRed600 {
      gradientColors[0] = twRed600;
      return _child;
  }
	T get toRed600 {
      gradientColors[1] = twRed600;
      return _child;
  }
	T get fromRed700 {
      gradientColors[0] = twRed700;
      return _child;
  }
	T get toRed700 {
      gradientColors[1] = twRed700;
      return _child;
  }
	T get fromRed800 {
      gradientColors[0] = twRed800;
      return _child;
  }
	T get toRed800 {
      gradientColors[1] = twRed800;
      return _child;
  }
	T get fromRed900 {
      gradientColors[0] = twRed900;
      return _child;
  }
	T get toRed900 {
      gradientColors[1] = twRed900;
      return _child;
  }
	T get fromOrange50 {
      gradientColors[0] = twOrange50;
      return _child;
  }
	T get toOrange50 {
      gradientColors[1] = twOrange50;
      return _child;
  }
	T get fromOrange100 {
      gradientColors[0] = twOrange100;
      return _child;
  }
	T get toOrange100 {
      gradientColors[1] = twOrange100;
      return _child;
  }
	T get fromOrange200 {
      gradientColors[0] = twOrange200;
      return _child;
  }
	T get toOrange200 {
      gradientColors[1] = twOrange200;
      return _child;
  }
	T get fromOrange300 {
      gradientColors[0] = twOrange300;
      return _child;
  }
	T get toOrange300 {
      gradientColors[1] = twOrange300;
      return _child;
  }
	T get fromOrange400 {
      gradientColors[0] = twOrange400;
      return _child;
  }
	T get toOrange400 {
      gradientColors[1] = twOrange400;
      return _child;
  }
	T get fromOrange500 {
      gradientColors[0] = twOrange500;
      return _child;
  }
	T get toOrange500 {
      gradientColors[1] = twOrange500;
      return _child;
  }
	T get fromOrange600 {
      gradientColors[0] = twOrange600;
      return _child;
  }
	T get toOrange600 {
      gradientColors[1] = twOrange600;
      return _child;
  }
	T get fromOrange700 {
      gradientColors[0] = twOrange700;
      return _child;
  }
	T get toOrange700 {
      gradientColors[1] = twOrange700;
      return _child;
  }
	T get fromOrange800 {
      gradientColors[0] = twOrange800;
      return _child;
  }
	T get toOrange800 {
      gradientColors[1] = twOrange800;
      return _child;
  }
	T get fromOrange900 {
      gradientColors[0] = twOrange900;
      return _child;
  }
	T get toOrange900 {
      gradientColors[1] = twOrange900;
      return _child;
  }
	T get fromAmber50 {
      gradientColors[0] = twAmber50;
      return _child;
  }
	T get toAmber50 {
      gradientColors[1] = twAmber50;
      return _child;
  }
	T get fromAmber100 {
      gradientColors[0] = twAmber100;
      return _child;
  }
	T get toAmber100 {
      gradientColors[1] = twAmber100;
      return _child;
  }
	T get fromAmber200 {
      gradientColors[0] = twAmber200;
      return _child;
  }
	T get toAmber200 {
      gradientColors[1] = twAmber200;
      return _child;
  }
	T get fromAmber300 {
      gradientColors[0] = twAmber300;
      return _child;
  }
	T get toAmber300 {
      gradientColors[1] = twAmber300;
      return _child;
  }
	T get fromAmber400 {
      gradientColors[0] = twAmber400;
      return _child;
  }
	T get toAmber400 {
      gradientColors[1] = twAmber400;
      return _child;
  }
	T get fromAmber500 {
      gradientColors[0] = twAmber500;
      return _child;
  }
	T get toAmber500 {
      gradientColors[1] = twAmber500;
      return _child;
  }
	T get fromAmber600 {
      gradientColors[0] = twAmber600;
      return _child;
  }
	T get toAmber600 {
      gradientColors[1] = twAmber600;
      return _child;
  }
	T get fromAmber700 {
      gradientColors[0] = twAmber700;
      return _child;
  }
	T get toAmber700 {
      gradientColors[1] = twAmber700;
      return _child;
  }
	T get fromAmber800 {
      gradientColors[0] = twAmber800;
      return _child;
  }
	T get toAmber800 {
      gradientColors[1] = twAmber800;
      return _child;
  }
	T get fromAmber900 {
      gradientColors[0] = twAmber900;
      return _child;
  }
	T get toAmber900 {
      gradientColors[1] = twAmber900;
      return _child;
  }
	T get fromYellow50 {
      gradientColors[0] = twYellow50;
      return _child;
  }
	T get toYellow50 {
      gradientColors[1] = twYellow50;
      return _child;
  }
	T get fromYellow100 {
      gradientColors[0] = twYellow100;
      return _child;
  }
	T get toYellow100 {
      gradientColors[1] = twYellow100;
      return _child;
  }
	T get fromYellow200 {
      gradientColors[0] = twYellow200;
      return _child;
  }
	T get toYellow200 {
      gradientColors[1] = twYellow200;
      return _child;
  }
	T get fromYellow300 {
      gradientColors[0] = twYellow300;
      return _child;
  }
	T get toYellow300 {
      gradientColors[1] = twYellow300;
      return _child;
  }
	T get fromYellow400 {
      gradientColors[0] = twYellow400;
      return _child;
  }
	T get toYellow400 {
      gradientColors[1] = twYellow400;
      return _child;
  }
	T get fromYellow500 {
      gradientColors[0] = twYellow500;
      return _child;
  }
	T get toYellow500 {
      gradientColors[1] = twYellow500;
      return _child;
  }
	T get fromYellow600 {
      gradientColors[0] = twYellow600;
      return _child;
  }
	T get toYellow600 {
      gradientColors[1] = twYellow600;
      return _child;
  }
	T get fromYellow700 {
      gradientColors[0] = twYellow700;
      return _child;
  }
	T get toYellow700 {
      gradientColors[1] = twYellow700;
      return _child;
  }
	T get fromYellow800 {
      gradientColors[0] = twYellow800;
      return _child;
  }
	T get toYellow800 {
      gradientColors[1] = twYellow800;
      return _child;
  }
	T get fromYellow900 {
      gradientColors[0] = twYellow900;
      return _child;
  }
	T get toYellow900 {
      gradientColors[1] = twYellow900;
      return _child;
  }
	T get fromLime50 {
      gradientColors[0] = twLime50;
      return _child;
  }
	T get toLime50 {
      gradientColors[1] = twLime50;
      return _child;
  }
	T get fromLime100 {
      gradientColors[0] = twLime100;
      return _child;
  }
	T get toLime100 {
      gradientColors[1] = twLime100;
      return _child;
  }
	T get fromLime200 {
      gradientColors[0] = twLime200;
      return _child;
  }
	T get toLime200 {
      gradientColors[1] = twLime200;
      return _child;
  }
	T get fromLime300 {
      gradientColors[0] = twLime300;
      return _child;
  }
	T get toLime300 {
      gradientColors[1] = twLime300;
      return _child;
  }
	T get fromLime400 {
      gradientColors[0] = twLime400;
      return _child;
  }
	T get toLime400 {
      gradientColors[1] = twLime400;
      return _child;
  }
	T get fromLime500 {
      gradientColors[0] = twLime500;
      return _child;
  }
	T get toLime500 {
      gradientColors[1] = twLime500;
      return _child;
  }
	T get fromLime600 {
      gradientColors[0] = twLime600;
      return _child;
  }
	T get toLime600 {
      gradientColors[1] = twLime600;
      return _child;
  }
	T get fromLime700 {
      gradientColors[0] = twLime700;
      return _child;
  }
	T get toLime700 {
      gradientColors[1] = twLime700;
      return _child;
  }
	T get fromLime800 {
      gradientColors[0] = twLime800;
      return _child;
  }
	T get toLime800 {
      gradientColors[1] = twLime800;
      return _child;
  }
	T get fromLime900 {
      gradientColors[0] = twLime900;
      return _child;
  }
	T get toLime900 {
      gradientColors[1] = twLime900;
      return _child;
  }
	T get fromGreen50 {
      gradientColors[0] = twGreen50;
      return _child;
  }
	T get toGreen50 {
      gradientColors[1] = twGreen50;
      return _child;
  }
	T get fromGreen100 {
      gradientColors[0] = twGreen100;
      return _child;
  }
	T get toGreen100 {
      gradientColors[1] = twGreen100;
      return _child;
  }
	T get fromGreen200 {
      gradientColors[0] = twGreen200;
      return _child;
  }
	T get toGreen200 {
      gradientColors[1] = twGreen200;
      return _child;
  }
	T get fromGreen300 {
      gradientColors[0] = twGreen300;
      return _child;
  }
	T get toGreen300 {
      gradientColors[1] = twGreen300;
      return _child;
  }
	T get fromGreen400 {
      gradientColors[0] = twGreen400;
      return _child;
  }
	T get toGreen400 {
      gradientColors[1] = twGreen400;
      return _child;
  }
	T get fromGreen500 {
      gradientColors[0] = twGreen500;
      return _child;
  }
	T get toGreen500 {
      gradientColors[1] = twGreen500;
      return _child;
  }
	T get fromGreen600 {
      gradientColors[0] = twGreen600;
      return _child;
  }
	T get toGreen600 {
      gradientColors[1] = twGreen600;
      return _child;
  }
	T get fromGreen700 {
      gradientColors[0] = twGreen700;
      return _child;
  }
	T get toGreen700 {
      gradientColors[1] = twGreen700;
      return _child;
  }
	T get fromGreen800 {
      gradientColors[0] = twGreen800;
      return _child;
  }
	T get toGreen800 {
      gradientColors[1] = twGreen800;
      return _child;
  }
	T get fromGreen900 {
      gradientColors[0] = twGreen900;
      return _child;
  }
	T get toGreen900 {
      gradientColors[1] = twGreen900;
      return _child;
  }
	T get fromEmerald50 {
      gradientColors[0] = twEmerald50;
      return _child;
  }
	T get toEmerald50 {
      gradientColors[1] = twEmerald50;
      return _child;
  }
	T get fromEmerald100 {
      gradientColors[0] = twEmerald100;
      return _child;
  }
	T get toEmerald100 {
      gradientColors[1] = twEmerald100;
      return _child;
  }
	T get fromEmerald200 {
      gradientColors[0] = twEmerald200;
      return _child;
  }
	T get toEmerald200 {
      gradientColors[1] = twEmerald200;
      return _child;
  }
	T get fromEmerald300 {
      gradientColors[0] = twEmerald300;
      return _child;
  }
	T get toEmerald300 {
      gradientColors[1] = twEmerald300;
      return _child;
  }
	T get fromEmerald400 {
      gradientColors[0] = twEmerald400;
      return _child;
  }
	T get toEmerald400 {
      gradientColors[1] = twEmerald400;
      return _child;
  }
	T get fromEmerald500 {
      gradientColors[0] = twEmerald500;
      return _child;
  }
	T get toEmerald500 {
      gradientColors[1] = twEmerald500;
      return _child;
  }
	T get fromEmerald600 {
      gradientColors[0] = twEmerald600;
      return _child;
  }
	T get toEmerald600 {
      gradientColors[1] = twEmerald600;
      return _child;
  }
	T get fromEmerald700 {
      gradientColors[0] = twEmerald700;
      return _child;
  }
	T get toEmerald700 {
      gradientColors[1] = twEmerald700;
      return _child;
  }
	T get fromEmerald800 {
      gradientColors[0] = twEmerald800;
      return _child;
  }
	T get toEmerald800 {
      gradientColors[1] = twEmerald800;
      return _child;
  }
	T get fromEmerald900 {
      gradientColors[0] = twEmerald900;
      return _child;
  }
	T get toEmerald900 {
      gradientColors[1] = twEmerald900;
      return _child;
  }
	T get fromTeal50 {
      gradientColors[0] = twTeal50;
      return _child;
  }
	T get toTeal50 {
      gradientColors[1] = twTeal50;
      return _child;
  }
	T get fromTeal100 {
      gradientColors[0] = twTeal100;
      return _child;
  }
	T get toTeal100 {
      gradientColors[1] = twTeal100;
      return _child;
  }
	T get fromTeal200 {
      gradientColors[0] = twTeal200;
      return _child;
  }
	T get toTeal200 {
      gradientColors[1] = twTeal200;
      return _child;
  }
	T get fromTeal300 {
      gradientColors[0] = twTeal300;
      return _child;
  }
	T get toTeal300 {
      gradientColors[1] = twTeal300;
      return _child;
  }
	T get fromTeal400 {
      gradientColors[0] = twTeal400;
      return _child;
  }
	T get toTeal400 {
      gradientColors[1] = twTeal400;
      return _child;
  }
	T get fromTeal500 {
      gradientColors[0] = twTeal500;
      return _child;
  }
	T get toTeal500 {
      gradientColors[1] = twTeal500;
      return _child;
  }
	T get fromTeal600 {
      gradientColors[0] = twTeal600;
      return _child;
  }
	T get toTeal600 {
      gradientColors[1] = twTeal600;
      return _child;
  }
	T get fromTeal700 {
      gradientColors[0] = twTeal700;
      return _child;
  }
	T get toTeal700 {
      gradientColors[1] = twTeal700;
      return _child;
  }
	T get fromTeal800 {
      gradientColors[0] = twTeal800;
      return _child;
  }
	T get toTeal800 {
      gradientColors[1] = twTeal800;
      return _child;
  }
	T get fromTeal900 {
      gradientColors[0] = twTeal900;
      return _child;
  }
	T get toTeal900 {
      gradientColors[1] = twTeal900;
      return _child;
  }
	T get fromCyan50 {
      gradientColors[0] = twCyan50;
      return _child;
  }
	T get toCyan50 {
      gradientColors[1] = twCyan50;
      return _child;
  }
	T get fromCyan100 {
      gradientColors[0] = twCyan100;
      return _child;
  }
	T get toCyan100 {
      gradientColors[1] = twCyan100;
      return _child;
  }
	T get fromCyan200 {
      gradientColors[0] = twCyan200;
      return _child;
  }
	T get toCyan200 {
      gradientColors[1] = twCyan200;
      return _child;
  }
	T get fromCyan300 {
      gradientColors[0] = twCyan300;
      return _child;
  }
	T get toCyan300 {
      gradientColors[1] = twCyan300;
      return _child;
  }
	T get fromCyan400 {
      gradientColors[0] = twCyan400;
      return _child;
  }
	T get toCyan400 {
      gradientColors[1] = twCyan400;
      return _child;
  }
	T get fromCyan500 {
      gradientColors[0] = twCyan500;
      return _child;
  }
	T get toCyan500 {
      gradientColors[1] = twCyan500;
      return _child;
  }
	T get fromCyan600 {
      gradientColors[0] = twCyan600;
      return _child;
  }
	T get toCyan600 {
      gradientColors[1] = twCyan600;
      return _child;
  }
	T get fromCyan700 {
      gradientColors[0] = twCyan700;
      return _child;
  }
	T get toCyan700 {
      gradientColors[1] = twCyan700;
      return _child;
  }
	T get fromCyan800 {
      gradientColors[0] = twCyan800;
      return _child;
  }
	T get toCyan800 {
      gradientColors[1] = twCyan800;
      return _child;
  }
	T get fromCyan900 {
      gradientColors[0] = twCyan900;
      return _child;
  }
	T get toCyan900 {
      gradientColors[1] = twCyan900;
      return _child;
  }
	T get fromLightBlue50 {
      gradientColors[0] = twLightBlue50;
      return _child;
  }
	T get toLightBlue50 {
      gradientColors[1] = twLightBlue50;
      return _child;
  }
	T get fromLightBlue100 {
      gradientColors[0] = twLightBlue100;
      return _child;
  }
	T get toLightBlue100 {
      gradientColors[1] = twLightBlue100;
      return _child;
  }
	T get fromLightBlue200 {
      gradientColors[0] = twLightBlue200;
      return _child;
  }
	T get toLightBlue200 {
      gradientColors[1] = twLightBlue200;
      return _child;
  }
	T get fromLightBlue300 {
      gradientColors[0] = twLightBlue300;
      return _child;
  }
	T get toLightBlue300 {
      gradientColors[1] = twLightBlue300;
      return _child;
  }
	T get fromLightBlue400 {
      gradientColors[0] = twLightBlue400;
      return _child;
  }
	T get toLightBlue400 {
      gradientColors[1] = twLightBlue400;
      return _child;
  }
	T get fromLightBlue500 {
      gradientColors[0] = twLightBlue500;
      return _child;
  }
	T get toLightBlue500 {
      gradientColors[1] = twLightBlue500;
      return _child;
  }
	T get fromLightBlue600 {
      gradientColors[0] = twLightBlue600;
      return _child;
  }
	T get toLightBlue600 {
      gradientColors[1] = twLightBlue600;
      return _child;
  }
	T get fromLightBlue700 {
      gradientColors[0] = twLightBlue700;
      return _child;
  }
	T get toLightBlue700 {
      gradientColors[1] = twLightBlue700;
      return _child;
  }
	T get fromLightBlue800 {
      gradientColors[0] = twLightBlue800;
      return _child;
  }
	T get toLightBlue800 {
      gradientColors[1] = twLightBlue800;
      return _child;
  }
	T get fromLightBlue900 {
      gradientColors[0] = twLightBlue900;
      return _child;
  }
	T get toLightBlue900 {
      gradientColors[1] = twLightBlue900;
      return _child;
  }
	T get fromBlue50 {
      gradientColors[0] = twBlue50;
      return _child;
  }
	T get toBlue50 {
      gradientColors[1] = twBlue50;
      return _child;
  }
	T get fromBlue100 {
      gradientColors[0] = twBlue100;
      return _child;
  }
	T get toBlue100 {
      gradientColors[1] = twBlue100;
      return _child;
  }
	T get fromBlue200 {
      gradientColors[0] = twBlue200;
      return _child;
  }
	T get toBlue200 {
      gradientColors[1] = twBlue200;
      return _child;
  }
	T get fromBlue300 {
      gradientColors[0] = twBlue300;
      return _child;
  }
	T get toBlue300 {
      gradientColors[1] = twBlue300;
      return _child;
  }
	T get fromBlue400 {
      gradientColors[0] = twBlue400;
      return _child;
  }
	T get toBlue400 {
      gradientColors[1] = twBlue400;
      return _child;
  }
	T get fromBlue500 {
      gradientColors[0] = twBlue500;
      return _child;
  }
	T get toBlue500 {
      gradientColors[1] = twBlue500;
      return _child;
  }
	T get fromBlue600 {
      gradientColors[0] = twBlue600;
      return _child;
  }
	T get toBlue600 {
      gradientColors[1] = twBlue600;
      return _child;
  }
	T get fromBlue700 {
      gradientColors[0] = twBlue700;
      return _child;
  }
	T get toBlue700 {
      gradientColors[1] = twBlue700;
      return _child;
  }
	T get fromBlue800 {
      gradientColors[0] = twBlue800;
      return _child;
  }
	T get toBlue800 {
      gradientColors[1] = twBlue800;
      return _child;
  }
	T get fromBlue900 {
      gradientColors[0] = twBlue900;
      return _child;
  }
	T get toBlue900 {
      gradientColors[1] = twBlue900;
      return _child;
  }
	T get fromIndigo50 {
      gradientColors[0] = twIndigo50;
      return _child;
  }
	T get toIndigo50 {
      gradientColors[1] = twIndigo50;
      return _child;
  }
	T get fromIndigo100 {
      gradientColors[0] = twIndigo100;
      return _child;
  }
	T get toIndigo100 {
      gradientColors[1] = twIndigo100;
      return _child;
  }
	T get fromIndigo200 {
      gradientColors[0] = twIndigo200;
      return _child;
  }
	T get toIndigo200 {
      gradientColors[1] = twIndigo200;
      return _child;
  }
	T get fromIndigo300 {
      gradientColors[0] = twIndigo300;
      return _child;
  }
	T get toIndigo300 {
      gradientColors[1] = twIndigo300;
      return _child;
  }
	T get fromIndigo400 {
      gradientColors[0] = twIndigo400;
      return _child;
  }
	T get toIndigo400 {
      gradientColors[1] = twIndigo400;
      return _child;
  }
	T get fromIndigo500 {
      gradientColors[0] = twIndigo500;
      return _child;
  }
	T get toIndigo500 {
      gradientColors[1] = twIndigo500;
      return _child;
  }
	T get fromIndigo600 {
      gradientColors[0] = twIndigo600;
      return _child;
  }
	T get toIndigo600 {
      gradientColors[1] = twIndigo600;
      return _child;
  }
	T get fromIndigo700 {
      gradientColors[0] = twIndigo700;
      return _child;
  }
	T get toIndigo700 {
      gradientColors[1] = twIndigo700;
      return _child;
  }
	T get fromIndigo800 {
      gradientColors[0] = twIndigo800;
      return _child;
  }
	T get toIndigo800 {
      gradientColors[1] = twIndigo800;
      return _child;
  }
	T get fromIndigo900 {
      gradientColors[0] = twIndigo900;
      return _child;
  }
	T get toIndigo900 {
      gradientColors[1] = twIndigo900;
      return _child;
  }
	T get fromViolet50 {
      gradientColors[0] = twViolet50;
      return _child;
  }
	T get toViolet50 {
      gradientColors[1] = twViolet50;
      return _child;
  }
	T get fromViolet100 {
      gradientColors[0] = twViolet100;
      return _child;
  }
	T get toViolet100 {
      gradientColors[1] = twViolet100;
      return _child;
  }
	T get fromViolet200 {
      gradientColors[0] = twViolet200;
      return _child;
  }
	T get toViolet200 {
      gradientColors[1] = twViolet200;
      return _child;
  }
	T get fromViolet300 {
      gradientColors[0] = twViolet300;
      return _child;
  }
	T get toViolet300 {
      gradientColors[1] = twViolet300;
      return _child;
  }
	T get fromViolet400 {
      gradientColors[0] = twViolet400;
      return _child;
  }
	T get toViolet400 {
      gradientColors[1] = twViolet400;
      return _child;
  }
	T get fromViolet500 {
      gradientColors[0] = twViolet500;
      return _child;
  }
	T get toViolet500 {
      gradientColors[1] = twViolet500;
      return _child;
  }
	T get fromViolet600 {
      gradientColors[0] = twViolet600;
      return _child;
  }
	T get toViolet600 {
      gradientColors[1] = twViolet600;
      return _child;
  }
	T get fromViolet700 {
      gradientColors[0] = twViolet700;
      return _child;
  }
	T get toViolet700 {
      gradientColors[1] = twViolet700;
      return _child;
  }
	T get fromViolet800 {
      gradientColors[0] = twViolet800;
      return _child;
  }
	T get toViolet800 {
      gradientColors[1] = twViolet800;
      return _child;
  }
	T get fromViolet900 {
      gradientColors[0] = twViolet900;
      return _child;
  }
	T get toViolet900 {
      gradientColors[1] = twViolet900;
      return _child;
  }
	T get fromPurple50 {
      gradientColors[0] = twPurple50;
      return _child;
  }
	T get toPurple50 {
      gradientColors[1] = twPurple50;
      return _child;
  }
	T get fromPurple100 {
      gradientColors[0] = twPurple100;
      return _child;
  }
	T get toPurple100 {
      gradientColors[1] = twPurple100;
      return _child;
  }
	T get fromPurple200 {
      gradientColors[0] = twPurple200;
      return _child;
  }
	T get toPurple200 {
      gradientColors[1] = twPurple200;
      return _child;
  }
	T get fromPurple300 {
      gradientColors[0] = twPurple300;
      return _child;
  }
	T get toPurple300 {
      gradientColors[1] = twPurple300;
      return _child;
  }
	T get fromPurple400 {
      gradientColors[0] = twPurple400;
      return _child;
  }
	T get toPurple400 {
      gradientColors[1] = twPurple400;
      return _child;
  }
	T get fromPurple500 {
      gradientColors[0] = twPurple500;
      return _child;
  }
	T get toPurple500 {
      gradientColors[1] = twPurple500;
      return _child;
  }
	T get fromPurple600 {
      gradientColors[0] = twPurple600;
      return _child;
  }
	T get toPurple600 {
      gradientColors[1] = twPurple600;
      return _child;
  }
	T get fromPurple700 {
      gradientColors[0] = twPurple700;
      return _child;
  }
	T get toPurple700 {
      gradientColors[1] = twPurple700;
      return _child;
  }
	T get fromPurple800 {
      gradientColors[0] = twPurple800;
      return _child;
  }
	T get toPurple800 {
      gradientColors[1] = twPurple800;
      return _child;
  }
	T get fromPurple900 {
      gradientColors[0] = twPurple900;
      return _child;
  }
	T get toPurple900 {
      gradientColors[1] = twPurple900;
      return _child;
  }
	T get fromFuchsia50 {
      gradientColors[0] = twFuchsia50;
      return _child;
  }
	T get toFuchsia50 {
      gradientColors[1] = twFuchsia50;
      return _child;
  }
	T get fromFuchsia100 {
      gradientColors[0] = twFuchsia100;
      return _child;
  }
	T get toFuchsia100 {
      gradientColors[1] = twFuchsia100;
      return _child;
  }
	T get fromFuchsia200 {
      gradientColors[0] = twFuchsia200;
      return _child;
  }
	T get toFuchsia200 {
      gradientColors[1] = twFuchsia200;
      return _child;
  }
	T get fromFuchsia300 {
      gradientColors[0] = twFuchsia300;
      return _child;
  }
	T get toFuchsia300 {
      gradientColors[1] = twFuchsia300;
      return _child;
  }
	T get fromFuchsia400 {
      gradientColors[0] = twFuchsia400;
      return _child;
  }
	T get toFuchsia400 {
      gradientColors[1] = twFuchsia400;
      return _child;
  }
	T get fromFuchsia500 {
      gradientColors[0] = twFuchsia500;
      return _child;
  }
	T get toFuchsia500 {
      gradientColors[1] = twFuchsia500;
      return _child;
  }
	T get fromFuchsia600 {
      gradientColors[0] = twFuchsia600;
      return _child;
  }
	T get toFuchsia600 {
      gradientColors[1] = twFuchsia600;
      return _child;
  }
	T get fromFuchsia700 {
      gradientColors[0] = twFuchsia700;
      return _child;
  }
	T get toFuchsia700 {
      gradientColors[1] = twFuchsia700;
      return _child;
  }
	T get fromFuchsia800 {
      gradientColors[0] = twFuchsia800;
      return _child;
  }
	T get toFuchsia800 {
      gradientColors[1] = twFuchsia800;
      return _child;
  }
	T get fromFuchsia900 {
      gradientColors[0] = twFuchsia900;
      return _child;
  }
	T get toFuchsia900 {
      gradientColors[1] = twFuchsia900;
      return _child;
  }
	T get fromPink50 {
      gradientColors[0] = twPink50;
      return _child;
  }
	T get toPink50 {
      gradientColors[1] = twPink50;
      return _child;
  }
	T get fromPink100 {
      gradientColors[0] = twPink100;
      return _child;
  }
	T get toPink100 {
      gradientColors[1] = twPink100;
      return _child;
  }
	T get fromPink200 {
      gradientColors[0] = twPink200;
      return _child;
  }
	T get toPink200 {
      gradientColors[1] = twPink200;
      return _child;
  }
	T get fromPink300 {
      gradientColors[0] = twPink300;
      return _child;
  }
	T get toPink300 {
      gradientColors[1] = twPink300;
      return _child;
  }
	T get fromPink400 {
      gradientColors[0] = twPink400;
      return _child;
  }
	T get toPink400 {
      gradientColors[1] = twPink400;
      return _child;
  }
	T get fromPink500 {
      gradientColors[0] = twPink500;
      return _child;
  }
	T get toPink500 {
      gradientColors[1] = twPink500;
      return _child;
  }
	T get fromPink600 {
      gradientColors[0] = twPink600;
      return _child;
  }
	T get toPink600 {
      gradientColors[1] = twPink600;
      return _child;
  }
	T get fromPink700 {
      gradientColors[0] = twPink700;
      return _child;
  }
	T get toPink700 {
      gradientColors[1] = twPink700;
      return _child;
  }
	T get fromPink800 {
      gradientColors[0] = twPink800;
      return _child;
  }
	T get toPink800 {
      gradientColors[1] = twPink800;
      return _child;
  }
	T get fromPink900 {
      gradientColors[0] = twPink900;
      return _child;
  }
	T get toPink900 {
      gradientColors[1] = twPink900;
      return _child;
  }
	T get fromRose50 {
      gradientColors[0] = twRose50;
      return _child;
  }
	T get toRose50 {
      gradientColors[1] = twRose50;
      return _child;
  }
	T get fromRose100 {
      gradientColors[0] = twRose100;
      return _child;
  }
	T get toRose100 {
      gradientColors[1] = twRose100;
      return _child;
  }
	T get fromRose200 {
      gradientColors[0] = twRose200;
      return _child;
  }
	T get toRose200 {
      gradientColors[1] = twRose200;
      return _child;
  }
	T get fromRose300 {
      gradientColors[0] = twRose300;
      return _child;
  }
	T get toRose300 {
      gradientColors[1] = twRose300;
      return _child;
  }
	T get fromRose400 {
      gradientColors[0] = twRose400;
      return _child;
  }
	T get toRose400 {
      gradientColors[1] = twRose400;
      return _child;
  }
	T get fromRose500 {
      gradientColors[0] = twRose500;
      return _child;
  }
	T get toRose500 {
      gradientColors[1] = twRose500;
      return _child;
  }
	T get fromRose600 {
      gradientColors[0] = twRose600;
      return _child;
  }
	T get toRose600 {
      gradientColors[1] = twRose600;
      return _child;
  }
	T get fromRose700 {
      gradientColors[0] = twRose700;
      return _child;
  }
	T get toRose700 {
      gradientColors[1] = twRose700;
      return _child;
  }
	T get fromRose800 {
      gradientColors[0] = twRose800;
      return _child;
  }
	T get toRose800 {
      gradientColors[1] = twRose800;
      return _child;
  }
	T get fromRose900 {
      gradientColors[0] = twRose900;
      return _child;
  }
	T get toRose900 {
      gradientColors[1] = twRose900;
      return _child;
  }
	T get fromPrimary {
      gradientColors[0] = twPrimary;
      return _child;
  }
	T get toPrimary {
      gradientColors[1] = twPrimary;
      return _child;
  }
	
}

