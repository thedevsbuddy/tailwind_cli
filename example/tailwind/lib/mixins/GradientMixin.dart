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
	T get fromGray {
      gradientColors[0] = TwColors.gray;
      return _child;
  }
	T get toGray {
      gradientColors[1] = TwColors.gray;
      return _child;
  }
	T get fromGray50 {
      gradientColors[0] = TwColors.gray.shade50;
      return _child;
  }
	T get toGray50 {
      gradientColors[1] = TwColors.gray.shade50;
      return _child;
  }
	T get fromGray100 {
      gradientColors[0] = TwColors.gray.shade100;
      return _child;
  }
	T get toGray100 {
      gradientColors[1] = TwColors.gray.shade100;
      return _child;
  }
	T get fromGray200 {
      gradientColors[0] = TwColors.gray.shade200;
      return _child;
  }
	T get toGray200 {
      gradientColors[1] = TwColors.gray.shade200;
      return _child;
  }
	T get fromGray300 {
      gradientColors[0] = TwColors.gray.shade300;
      return _child;
  }
	T get toGray300 {
      gradientColors[1] = TwColors.gray.shade300;
      return _child;
  }
	T get fromGray400 {
      gradientColors[0] = TwColors.gray.shade400;
      return _child;
  }
	T get toGray400 {
      gradientColors[1] = TwColors.gray.shade400;
      return _child;
  }
	T get fromGray500 {
      gradientColors[0] = TwColors.gray.shade500;
      return _child;
  }
	T get toGray500 {
      gradientColors[1] = TwColors.gray.shade500;
      return _child;
  }
	T get fromGray600 {
      gradientColors[0] = TwColors.gray.shade600;
      return _child;
  }
	T get toGray600 {
      gradientColors[1] = TwColors.gray.shade600;
      return _child;
  }
	T get fromGray700 {
      gradientColors[0] = TwColors.gray.shade700;
      return _child;
  }
	T get toGray700 {
      gradientColors[1] = TwColors.gray.shade700;
      return _child;
  }
	T get fromGray800 {
      gradientColors[0] = TwColors.gray.shade800;
      return _child;
  }
	T get toGray800 {
      gradientColors[1] = TwColors.gray.shade800;
      return _child;
  }
	T get fromGray900 {
      gradientColors[0] = TwColors.gray.shade900;
      return _child;
  }
	T get toGray900 {
      gradientColors[1] = TwColors.gray.shade900;
      return _child;
  }
	T get fromBlueGray {
      gradientColors[0] = TwColors.blueGray;
      return _child;
  }
	T get toBlueGray {
      gradientColors[1] = TwColors.blueGray;
      return _child;
  }
	T get fromBlueGray50 {
      gradientColors[0] = TwColors.blueGray.shade50;
      return _child;
  }
	T get toBlueGray50 {
      gradientColors[1] = TwColors.blueGray.shade50;
      return _child;
  }
	T get fromBlueGray100 {
      gradientColors[0] = TwColors.blueGray.shade100;
      return _child;
  }
	T get toBlueGray100 {
      gradientColors[1] = TwColors.blueGray.shade100;
      return _child;
  }
	T get fromBlueGray200 {
      gradientColors[0] = TwColors.blueGray.shade200;
      return _child;
  }
	T get toBlueGray200 {
      gradientColors[1] = TwColors.blueGray.shade200;
      return _child;
  }
	T get fromBlueGray300 {
      gradientColors[0] = TwColors.blueGray.shade300;
      return _child;
  }
	T get toBlueGray300 {
      gradientColors[1] = TwColors.blueGray.shade300;
      return _child;
  }
	T get fromBlueGray400 {
      gradientColors[0] = TwColors.blueGray.shade400;
      return _child;
  }
	T get toBlueGray400 {
      gradientColors[1] = TwColors.blueGray.shade400;
      return _child;
  }
	T get fromBlueGray500 {
      gradientColors[0] = TwColors.blueGray.shade500;
      return _child;
  }
	T get toBlueGray500 {
      gradientColors[1] = TwColors.blueGray.shade500;
      return _child;
  }
	T get fromBlueGray600 {
      gradientColors[0] = TwColors.blueGray.shade600;
      return _child;
  }
	T get toBlueGray600 {
      gradientColors[1] = TwColors.blueGray.shade600;
      return _child;
  }
	T get fromBlueGray700 {
      gradientColors[0] = TwColors.blueGray.shade700;
      return _child;
  }
	T get toBlueGray700 {
      gradientColors[1] = TwColors.blueGray.shade700;
      return _child;
  }
	T get fromBlueGray800 {
      gradientColors[0] = TwColors.blueGray.shade800;
      return _child;
  }
	T get toBlueGray800 {
      gradientColors[1] = TwColors.blueGray.shade800;
      return _child;
  }
	T get fromBlueGray900 {
      gradientColors[0] = TwColors.blueGray.shade900;
      return _child;
  }
	T get toBlueGray900 {
      gradientColors[1] = TwColors.blueGray.shade900;
      return _child;
  }
	T get fromCoolGray {
      gradientColors[0] = TwColors.coolGray;
      return _child;
  }
	T get toCoolGray {
      gradientColors[1] = TwColors.coolGray;
      return _child;
  }
	T get fromCoolGray50 {
      gradientColors[0] = TwColors.coolGray.shade50;
      return _child;
  }
	T get toCoolGray50 {
      gradientColors[1] = TwColors.coolGray.shade50;
      return _child;
  }
	T get fromCoolGray100 {
      gradientColors[0] = TwColors.coolGray.shade100;
      return _child;
  }
	T get toCoolGray100 {
      gradientColors[1] = TwColors.coolGray.shade100;
      return _child;
  }
	T get fromCoolGray200 {
      gradientColors[0] = TwColors.coolGray.shade200;
      return _child;
  }
	T get toCoolGray200 {
      gradientColors[1] = TwColors.coolGray.shade200;
      return _child;
  }
	T get fromCoolGray300 {
      gradientColors[0] = TwColors.coolGray.shade300;
      return _child;
  }
	T get toCoolGray300 {
      gradientColors[1] = TwColors.coolGray.shade300;
      return _child;
  }
	T get fromCoolGray400 {
      gradientColors[0] = TwColors.coolGray.shade400;
      return _child;
  }
	T get toCoolGray400 {
      gradientColors[1] = TwColors.coolGray.shade400;
      return _child;
  }
	T get fromCoolGray500 {
      gradientColors[0] = TwColors.coolGray.shade500;
      return _child;
  }
	T get toCoolGray500 {
      gradientColors[1] = TwColors.coolGray.shade500;
      return _child;
  }
	T get fromCoolGray600 {
      gradientColors[0] = TwColors.coolGray.shade600;
      return _child;
  }
	T get toCoolGray600 {
      gradientColors[1] = TwColors.coolGray.shade600;
      return _child;
  }
	T get fromCoolGray700 {
      gradientColors[0] = TwColors.coolGray.shade700;
      return _child;
  }
	T get toCoolGray700 {
      gradientColors[1] = TwColors.coolGray.shade700;
      return _child;
  }
	T get fromCoolGray800 {
      gradientColors[0] = TwColors.coolGray.shade800;
      return _child;
  }
	T get toCoolGray800 {
      gradientColors[1] = TwColors.coolGray.shade800;
      return _child;
  }
	T get fromCoolGray900 {
      gradientColors[0] = TwColors.coolGray.shade900;
      return _child;
  }
	T get toCoolGray900 {
      gradientColors[1] = TwColors.coolGray.shade900;
      return _child;
  }
	T get fromTrueGray {
      gradientColors[0] = TwColors.trueGray;
      return _child;
  }
	T get toTrueGray {
      gradientColors[1] = TwColors.trueGray;
      return _child;
  }
	T get fromTrueGray50 {
      gradientColors[0] = TwColors.trueGray.shade50;
      return _child;
  }
	T get toTrueGray50 {
      gradientColors[1] = TwColors.trueGray.shade50;
      return _child;
  }
	T get fromTrueGray100 {
      gradientColors[0] = TwColors.trueGray.shade100;
      return _child;
  }
	T get toTrueGray100 {
      gradientColors[1] = TwColors.trueGray.shade100;
      return _child;
  }
	T get fromTrueGray200 {
      gradientColors[0] = TwColors.trueGray.shade200;
      return _child;
  }
	T get toTrueGray200 {
      gradientColors[1] = TwColors.trueGray.shade200;
      return _child;
  }
	T get fromTrueGray300 {
      gradientColors[0] = TwColors.trueGray.shade300;
      return _child;
  }
	T get toTrueGray300 {
      gradientColors[1] = TwColors.trueGray.shade300;
      return _child;
  }
	T get fromTrueGray400 {
      gradientColors[0] = TwColors.trueGray.shade400;
      return _child;
  }
	T get toTrueGray400 {
      gradientColors[1] = TwColors.trueGray.shade400;
      return _child;
  }
	T get fromTrueGray500 {
      gradientColors[0] = TwColors.trueGray.shade500;
      return _child;
  }
	T get toTrueGray500 {
      gradientColors[1] = TwColors.trueGray.shade500;
      return _child;
  }
	T get fromTrueGray600 {
      gradientColors[0] = TwColors.trueGray.shade600;
      return _child;
  }
	T get toTrueGray600 {
      gradientColors[1] = TwColors.trueGray.shade600;
      return _child;
  }
	T get fromTrueGray700 {
      gradientColors[0] = TwColors.trueGray.shade700;
      return _child;
  }
	T get toTrueGray700 {
      gradientColors[1] = TwColors.trueGray.shade700;
      return _child;
  }
	T get fromTrueGray800 {
      gradientColors[0] = TwColors.trueGray.shade800;
      return _child;
  }
	T get toTrueGray800 {
      gradientColors[1] = TwColors.trueGray.shade800;
      return _child;
  }
	T get fromTrueGray900 {
      gradientColors[0] = TwColors.trueGray.shade900;
      return _child;
  }
	T get toTrueGray900 {
      gradientColors[1] = TwColors.trueGray.shade900;
      return _child;
  }
	T get fromWarmGray {
      gradientColors[0] = TwColors.warmGray;
      return _child;
  }
	T get toWarmGray {
      gradientColors[1] = TwColors.warmGray;
      return _child;
  }
	T get fromWarmGray50 {
      gradientColors[0] = TwColors.warmGray.shade50;
      return _child;
  }
	T get toWarmGray50 {
      gradientColors[1] = TwColors.warmGray.shade50;
      return _child;
  }
	T get fromWarmGray100 {
      gradientColors[0] = TwColors.warmGray.shade100;
      return _child;
  }
	T get toWarmGray100 {
      gradientColors[1] = TwColors.warmGray.shade100;
      return _child;
  }
	T get fromWarmGray200 {
      gradientColors[0] = TwColors.warmGray.shade200;
      return _child;
  }
	T get toWarmGray200 {
      gradientColors[1] = TwColors.warmGray.shade200;
      return _child;
  }
	T get fromWarmGray300 {
      gradientColors[0] = TwColors.warmGray.shade300;
      return _child;
  }
	T get toWarmGray300 {
      gradientColors[1] = TwColors.warmGray.shade300;
      return _child;
  }
	T get fromWarmGray400 {
      gradientColors[0] = TwColors.warmGray.shade400;
      return _child;
  }
	T get toWarmGray400 {
      gradientColors[1] = TwColors.warmGray.shade400;
      return _child;
  }
	T get fromWarmGray500 {
      gradientColors[0] = TwColors.warmGray.shade500;
      return _child;
  }
	T get toWarmGray500 {
      gradientColors[1] = TwColors.warmGray.shade500;
      return _child;
  }
	T get fromWarmGray600 {
      gradientColors[0] = TwColors.warmGray.shade600;
      return _child;
  }
	T get toWarmGray600 {
      gradientColors[1] = TwColors.warmGray.shade600;
      return _child;
  }
	T get fromWarmGray700 {
      gradientColors[0] = TwColors.warmGray.shade700;
      return _child;
  }
	T get toWarmGray700 {
      gradientColors[1] = TwColors.warmGray.shade700;
      return _child;
  }
	T get fromWarmGray800 {
      gradientColors[0] = TwColors.warmGray.shade800;
      return _child;
  }
	T get toWarmGray800 {
      gradientColors[1] = TwColors.warmGray.shade800;
      return _child;
  }
	T get fromWarmGray900 {
      gradientColors[0] = TwColors.warmGray.shade900;
      return _child;
  }
	T get toWarmGray900 {
      gradientColors[1] = TwColors.warmGray.shade900;
      return _child;
  }
	T get fromRed {
      gradientColors[0] = TwColors.red;
      return _child;
  }
	T get toRed {
      gradientColors[1] = TwColors.red;
      return _child;
  }
	T get fromRed50 {
      gradientColors[0] = TwColors.red.shade50;
      return _child;
  }
	T get toRed50 {
      gradientColors[1] = TwColors.red.shade50;
      return _child;
  }
	T get fromRed100 {
      gradientColors[0] = TwColors.red.shade100;
      return _child;
  }
	T get toRed100 {
      gradientColors[1] = TwColors.red.shade100;
      return _child;
  }
	T get fromRed200 {
      gradientColors[0] = TwColors.red.shade200;
      return _child;
  }
	T get toRed200 {
      gradientColors[1] = TwColors.red.shade200;
      return _child;
  }
	T get fromRed300 {
      gradientColors[0] = TwColors.red.shade300;
      return _child;
  }
	T get toRed300 {
      gradientColors[1] = TwColors.red.shade300;
      return _child;
  }
	T get fromRed400 {
      gradientColors[0] = TwColors.red.shade400;
      return _child;
  }
	T get toRed400 {
      gradientColors[1] = TwColors.red.shade400;
      return _child;
  }
	T get fromRed500 {
      gradientColors[0] = TwColors.red.shade500;
      return _child;
  }
	T get toRed500 {
      gradientColors[1] = TwColors.red.shade500;
      return _child;
  }
	T get fromRed600 {
      gradientColors[0] = TwColors.red.shade600;
      return _child;
  }
	T get toRed600 {
      gradientColors[1] = TwColors.red.shade600;
      return _child;
  }
	T get fromRed700 {
      gradientColors[0] = TwColors.red.shade700;
      return _child;
  }
	T get toRed700 {
      gradientColors[1] = TwColors.red.shade700;
      return _child;
  }
	T get fromRed800 {
      gradientColors[0] = TwColors.red.shade800;
      return _child;
  }
	T get toRed800 {
      gradientColors[1] = TwColors.red.shade800;
      return _child;
  }
	T get fromRed900 {
      gradientColors[0] = TwColors.red.shade900;
      return _child;
  }
	T get toRed900 {
      gradientColors[1] = TwColors.red.shade900;
      return _child;
  }
	T get fromOrange {
      gradientColors[0] = TwColors.orange;
      return _child;
  }
	T get toOrange {
      gradientColors[1] = TwColors.orange;
      return _child;
  }
	T get fromOrange50 {
      gradientColors[0] = TwColors.orange.shade50;
      return _child;
  }
	T get toOrange50 {
      gradientColors[1] = TwColors.orange.shade50;
      return _child;
  }
	T get fromOrange100 {
      gradientColors[0] = TwColors.orange.shade100;
      return _child;
  }
	T get toOrange100 {
      gradientColors[1] = TwColors.orange.shade100;
      return _child;
  }
	T get fromOrange200 {
      gradientColors[0] = TwColors.orange.shade200;
      return _child;
  }
	T get toOrange200 {
      gradientColors[1] = TwColors.orange.shade200;
      return _child;
  }
	T get fromOrange300 {
      gradientColors[0] = TwColors.orange.shade300;
      return _child;
  }
	T get toOrange300 {
      gradientColors[1] = TwColors.orange.shade300;
      return _child;
  }
	T get fromOrange400 {
      gradientColors[0] = TwColors.orange.shade400;
      return _child;
  }
	T get toOrange400 {
      gradientColors[1] = TwColors.orange.shade400;
      return _child;
  }
	T get fromOrange500 {
      gradientColors[0] = TwColors.orange.shade500;
      return _child;
  }
	T get toOrange500 {
      gradientColors[1] = TwColors.orange.shade500;
      return _child;
  }
	T get fromOrange600 {
      gradientColors[0] = TwColors.orange.shade600;
      return _child;
  }
	T get toOrange600 {
      gradientColors[1] = TwColors.orange.shade600;
      return _child;
  }
	T get fromOrange700 {
      gradientColors[0] = TwColors.orange.shade700;
      return _child;
  }
	T get toOrange700 {
      gradientColors[1] = TwColors.orange.shade700;
      return _child;
  }
	T get fromOrange800 {
      gradientColors[0] = TwColors.orange.shade800;
      return _child;
  }
	T get toOrange800 {
      gradientColors[1] = TwColors.orange.shade800;
      return _child;
  }
	T get fromOrange900 {
      gradientColors[0] = TwColors.orange.shade900;
      return _child;
  }
	T get toOrange900 {
      gradientColors[1] = TwColors.orange.shade900;
      return _child;
  }
	T get fromAmber {
      gradientColors[0] = TwColors.amber;
      return _child;
  }
	T get toAmber {
      gradientColors[1] = TwColors.amber;
      return _child;
  }
	T get fromAmber50 {
      gradientColors[0] = TwColors.amber.shade50;
      return _child;
  }
	T get toAmber50 {
      gradientColors[1] = TwColors.amber.shade50;
      return _child;
  }
	T get fromAmber100 {
      gradientColors[0] = TwColors.amber.shade100;
      return _child;
  }
	T get toAmber100 {
      gradientColors[1] = TwColors.amber.shade100;
      return _child;
  }
	T get fromAmber200 {
      gradientColors[0] = TwColors.amber.shade200;
      return _child;
  }
	T get toAmber200 {
      gradientColors[1] = TwColors.amber.shade200;
      return _child;
  }
	T get fromAmber300 {
      gradientColors[0] = TwColors.amber.shade300;
      return _child;
  }
	T get toAmber300 {
      gradientColors[1] = TwColors.amber.shade300;
      return _child;
  }
	T get fromAmber400 {
      gradientColors[0] = TwColors.amber.shade400;
      return _child;
  }
	T get toAmber400 {
      gradientColors[1] = TwColors.amber.shade400;
      return _child;
  }
	T get fromAmber500 {
      gradientColors[0] = TwColors.amber.shade500;
      return _child;
  }
	T get toAmber500 {
      gradientColors[1] = TwColors.amber.shade500;
      return _child;
  }
	T get fromAmber600 {
      gradientColors[0] = TwColors.amber.shade600;
      return _child;
  }
	T get toAmber600 {
      gradientColors[1] = TwColors.amber.shade600;
      return _child;
  }
	T get fromAmber700 {
      gradientColors[0] = TwColors.amber.shade700;
      return _child;
  }
	T get toAmber700 {
      gradientColors[1] = TwColors.amber.shade700;
      return _child;
  }
	T get fromAmber800 {
      gradientColors[0] = TwColors.amber.shade800;
      return _child;
  }
	T get toAmber800 {
      gradientColors[1] = TwColors.amber.shade800;
      return _child;
  }
	T get fromAmber900 {
      gradientColors[0] = TwColors.amber.shade900;
      return _child;
  }
	T get toAmber900 {
      gradientColors[1] = TwColors.amber.shade900;
      return _child;
  }
	T get fromYellow {
      gradientColors[0] = TwColors.yellow;
      return _child;
  }
	T get toYellow {
      gradientColors[1] = TwColors.yellow;
      return _child;
  }
	T get fromYellow50 {
      gradientColors[0] = TwColors.yellow.shade50;
      return _child;
  }
	T get toYellow50 {
      gradientColors[1] = TwColors.yellow.shade50;
      return _child;
  }
	T get fromYellow100 {
      gradientColors[0] = TwColors.yellow.shade100;
      return _child;
  }
	T get toYellow100 {
      gradientColors[1] = TwColors.yellow.shade100;
      return _child;
  }
	T get fromYellow200 {
      gradientColors[0] = TwColors.yellow.shade200;
      return _child;
  }
	T get toYellow200 {
      gradientColors[1] = TwColors.yellow.shade200;
      return _child;
  }
	T get fromYellow300 {
      gradientColors[0] = TwColors.yellow.shade300;
      return _child;
  }
	T get toYellow300 {
      gradientColors[1] = TwColors.yellow.shade300;
      return _child;
  }
	T get fromYellow400 {
      gradientColors[0] = TwColors.yellow.shade400;
      return _child;
  }
	T get toYellow400 {
      gradientColors[1] = TwColors.yellow.shade400;
      return _child;
  }
	T get fromYellow500 {
      gradientColors[0] = TwColors.yellow.shade500;
      return _child;
  }
	T get toYellow500 {
      gradientColors[1] = TwColors.yellow.shade500;
      return _child;
  }
	T get fromYellow600 {
      gradientColors[0] = TwColors.yellow.shade600;
      return _child;
  }
	T get toYellow600 {
      gradientColors[1] = TwColors.yellow.shade600;
      return _child;
  }
	T get fromYellow700 {
      gradientColors[0] = TwColors.yellow.shade700;
      return _child;
  }
	T get toYellow700 {
      gradientColors[1] = TwColors.yellow.shade700;
      return _child;
  }
	T get fromYellow800 {
      gradientColors[0] = TwColors.yellow.shade800;
      return _child;
  }
	T get toYellow800 {
      gradientColors[1] = TwColors.yellow.shade800;
      return _child;
  }
	T get fromYellow900 {
      gradientColors[0] = TwColors.yellow.shade900;
      return _child;
  }
	T get toYellow900 {
      gradientColors[1] = TwColors.yellow.shade900;
      return _child;
  }
	T get fromLime {
      gradientColors[0] = TwColors.lime;
      return _child;
  }
	T get toLime {
      gradientColors[1] = TwColors.lime;
      return _child;
  }
	T get fromLime50 {
      gradientColors[0] = TwColors.lime.shade50;
      return _child;
  }
	T get toLime50 {
      gradientColors[1] = TwColors.lime.shade50;
      return _child;
  }
	T get fromLime100 {
      gradientColors[0] = TwColors.lime.shade100;
      return _child;
  }
	T get toLime100 {
      gradientColors[1] = TwColors.lime.shade100;
      return _child;
  }
	T get fromLime200 {
      gradientColors[0] = TwColors.lime.shade200;
      return _child;
  }
	T get toLime200 {
      gradientColors[1] = TwColors.lime.shade200;
      return _child;
  }
	T get fromLime300 {
      gradientColors[0] = TwColors.lime.shade300;
      return _child;
  }
	T get toLime300 {
      gradientColors[1] = TwColors.lime.shade300;
      return _child;
  }
	T get fromLime400 {
      gradientColors[0] = TwColors.lime.shade400;
      return _child;
  }
	T get toLime400 {
      gradientColors[1] = TwColors.lime.shade400;
      return _child;
  }
	T get fromLime500 {
      gradientColors[0] = TwColors.lime.shade500;
      return _child;
  }
	T get toLime500 {
      gradientColors[1] = TwColors.lime.shade500;
      return _child;
  }
	T get fromLime600 {
      gradientColors[0] = TwColors.lime.shade600;
      return _child;
  }
	T get toLime600 {
      gradientColors[1] = TwColors.lime.shade600;
      return _child;
  }
	T get fromLime700 {
      gradientColors[0] = TwColors.lime.shade700;
      return _child;
  }
	T get toLime700 {
      gradientColors[1] = TwColors.lime.shade700;
      return _child;
  }
	T get fromLime800 {
      gradientColors[0] = TwColors.lime.shade800;
      return _child;
  }
	T get toLime800 {
      gradientColors[1] = TwColors.lime.shade800;
      return _child;
  }
	T get fromLime900 {
      gradientColors[0] = TwColors.lime.shade900;
      return _child;
  }
	T get toLime900 {
      gradientColors[1] = TwColors.lime.shade900;
      return _child;
  }
	T get fromGreen {
      gradientColors[0] = TwColors.green;
      return _child;
  }
	T get toGreen {
      gradientColors[1] = TwColors.green;
      return _child;
  }
	T get fromGreen50 {
      gradientColors[0] = TwColors.green.shade50;
      return _child;
  }
	T get toGreen50 {
      gradientColors[1] = TwColors.green.shade50;
      return _child;
  }
	T get fromGreen100 {
      gradientColors[0] = TwColors.green.shade100;
      return _child;
  }
	T get toGreen100 {
      gradientColors[1] = TwColors.green.shade100;
      return _child;
  }
	T get fromGreen200 {
      gradientColors[0] = TwColors.green.shade200;
      return _child;
  }
	T get toGreen200 {
      gradientColors[1] = TwColors.green.shade200;
      return _child;
  }
	T get fromGreen300 {
      gradientColors[0] = TwColors.green.shade300;
      return _child;
  }
	T get toGreen300 {
      gradientColors[1] = TwColors.green.shade300;
      return _child;
  }
	T get fromGreen400 {
      gradientColors[0] = TwColors.green.shade400;
      return _child;
  }
	T get toGreen400 {
      gradientColors[1] = TwColors.green.shade400;
      return _child;
  }
	T get fromGreen500 {
      gradientColors[0] = TwColors.green.shade500;
      return _child;
  }
	T get toGreen500 {
      gradientColors[1] = TwColors.green.shade500;
      return _child;
  }
	T get fromGreen600 {
      gradientColors[0] = TwColors.green.shade600;
      return _child;
  }
	T get toGreen600 {
      gradientColors[1] = TwColors.green.shade600;
      return _child;
  }
	T get fromGreen700 {
      gradientColors[0] = TwColors.green.shade700;
      return _child;
  }
	T get toGreen700 {
      gradientColors[1] = TwColors.green.shade700;
      return _child;
  }
	T get fromGreen800 {
      gradientColors[0] = TwColors.green.shade800;
      return _child;
  }
	T get toGreen800 {
      gradientColors[1] = TwColors.green.shade800;
      return _child;
  }
	T get fromGreen900 {
      gradientColors[0] = TwColors.green.shade900;
      return _child;
  }
	T get toGreen900 {
      gradientColors[1] = TwColors.green.shade900;
      return _child;
  }
	T get fromEmerald {
      gradientColors[0] = TwColors.emerald;
      return _child;
  }
	T get toEmerald {
      gradientColors[1] = TwColors.emerald;
      return _child;
  }
	T get fromEmerald50 {
      gradientColors[0] = TwColors.emerald.shade50;
      return _child;
  }
	T get toEmerald50 {
      gradientColors[1] = TwColors.emerald.shade50;
      return _child;
  }
	T get fromEmerald100 {
      gradientColors[0] = TwColors.emerald.shade100;
      return _child;
  }
	T get toEmerald100 {
      gradientColors[1] = TwColors.emerald.shade100;
      return _child;
  }
	T get fromEmerald200 {
      gradientColors[0] = TwColors.emerald.shade200;
      return _child;
  }
	T get toEmerald200 {
      gradientColors[1] = TwColors.emerald.shade200;
      return _child;
  }
	T get fromEmerald300 {
      gradientColors[0] = TwColors.emerald.shade300;
      return _child;
  }
	T get toEmerald300 {
      gradientColors[1] = TwColors.emerald.shade300;
      return _child;
  }
	T get fromEmerald400 {
      gradientColors[0] = TwColors.emerald.shade400;
      return _child;
  }
	T get toEmerald400 {
      gradientColors[1] = TwColors.emerald.shade400;
      return _child;
  }
	T get fromEmerald500 {
      gradientColors[0] = TwColors.emerald.shade500;
      return _child;
  }
	T get toEmerald500 {
      gradientColors[1] = TwColors.emerald.shade500;
      return _child;
  }
	T get fromEmerald600 {
      gradientColors[0] = TwColors.emerald.shade600;
      return _child;
  }
	T get toEmerald600 {
      gradientColors[1] = TwColors.emerald.shade600;
      return _child;
  }
	T get fromEmerald700 {
      gradientColors[0] = TwColors.emerald.shade700;
      return _child;
  }
	T get toEmerald700 {
      gradientColors[1] = TwColors.emerald.shade700;
      return _child;
  }
	T get fromEmerald800 {
      gradientColors[0] = TwColors.emerald.shade800;
      return _child;
  }
	T get toEmerald800 {
      gradientColors[1] = TwColors.emerald.shade800;
      return _child;
  }
	T get fromEmerald900 {
      gradientColors[0] = TwColors.emerald.shade900;
      return _child;
  }
	T get toEmerald900 {
      gradientColors[1] = TwColors.emerald.shade900;
      return _child;
  }
	T get fromTeal {
      gradientColors[0] = TwColors.teal;
      return _child;
  }
	T get toTeal {
      gradientColors[1] = TwColors.teal;
      return _child;
  }
	T get fromTeal50 {
      gradientColors[0] = TwColors.teal.shade50;
      return _child;
  }
	T get toTeal50 {
      gradientColors[1] = TwColors.teal.shade50;
      return _child;
  }
	T get fromTeal100 {
      gradientColors[0] = TwColors.teal.shade100;
      return _child;
  }
	T get toTeal100 {
      gradientColors[1] = TwColors.teal.shade100;
      return _child;
  }
	T get fromTeal200 {
      gradientColors[0] = TwColors.teal.shade200;
      return _child;
  }
	T get toTeal200 {
      gradientColors[1] = TwColors.teal.shade200;
      return _child;
  }
	T get fromTeal300 {
      gradientColors[0] = TwColors.teal.shade300;
      return _child;
  }
	T get toTeal300 {
      gradientColors[1] = TwColors.teal.shade300;
      return _child;
  }
	T get fromTeal400 {
      gradientColors[0] = TwColors.teal.shade400;
      return _child;
  }
	T get toTeal400 {
      gradientColors[1] = TwColors.teal.shade400;
      return _child;
  }
	T get fromTeal500 {
      gradientColors[0] = TwColors.teal.shade500;
      return _child;
  }
	T get toTeal500 {
      gradientColors[1] = TwColors.teal.shade500;
      return _child;
  }
	T get fromTeal600 {
      gradientColors[0] = TwColors.teal.shade600;
      return _child;
  }
	T get toTeal600 {
      gradientColors[1] = TwColors.teal.shade600;
      return _child;
  }
	T get fromTeal700 {
      gradientColors[0] = TwColors.teal.shade700;
      return _child;
  }
	T get toTeal700 {
      gradientColors[1] = TwColors.teal.shade700;
      return _child;
  }
	T get fromTeal800 {
      gradientColors[0] = TwColors.teal.shade800;
      return _child;
  }
	T get toTeal800 {
      gradientColors[1] = TwColors.teal.shade800;
      return _child;
  }
	T get fromTeal900 {
      gradientColors[0] = TwColors.teal.shade900;
      return _child;
  }
	T get toTeal900 {
      gradientColors[1] = TwColors.teal.shade900;
      return _child;
  }
	T get fromCyan {
      gradientColors[0] = TwColors.cyan;
      return _child;
  }
	T get toCyan {
      gradientColors[1] = TwColors.cyan;
      return _child;
  }
	T get fromCyan50 {
      gradientColors[0] = TwColors.cyan.shade50;
      return _child;
  }
	T get toCyan50 {
      gradientColors[1] = TwColors.cyan.shade50;
      return _child;
  }
	T get fromCyan100 {
      gradientColors[0] = TwColors.cyan.shade100;
      return _child;
  }
	T get toCyan100 {
      gradientColors[1] = TwColors.cyan.shade100;
      return _child;
  }
	T get fromCyan200 {
      gradientColors[0] = TwColors.cyan.shade200;
      return _child;
  }
	T get toCyan200 {
      gradientColors[1] = TwColors.cyan.shade200;
      return _child;
  }
	T get fromCyan300 {
      gradientColors[0] = TwColors.cyan.shade300;
      return _child;
  }
	T get toCyan300 {
      gradientColors[1] = TwColors.cyan.shade300;
      return _child;
  }
	T get fromCyan400 {
      gradientColors[0] = TwColors.cyan.shade400;
      return _child;
  }
	T get toCyan400 {
      gradientColors[1] = TwColors.cyan.shade400;
      return _child;
  }
	T get fromCyan500 {
      gradientColors[0] = TwColors.cyan.shade500;
      return _child;
  }
	T get toCyan500 {
      gradientColors[1] = TwColors.cyan.shade500;
      return _child;
  }
	T get fromCyan600 {
      gradientColors[0] = TwColors.cyan.shade600;
      return _child;
  }
	T get toCyan600 {
      gradientColors[1] = TwColors.cyan.shade600;
      return _child;
  }
	T get fromCyan700 {
      gradientColors[0] = TwColors.cyan.shade700;
      return _child;
  }
	T get toCyan700 {
      gradientColors[1] = TwColors.cyan.shade700;
      return _child;
  }
	T get fromCyan800 {
      gradientColors[0] = TwColors.cyan.shade800;
      return _child;
  }
	T get toCyan800 {
      gradientColors[1] = TwColors.cyan.shade800;
      return _child;
  }
	T get fromCyan900 {
      gradientColors[0] = TwColors.cyan.shade900;
      return _child;
  }
	T get toCyan900 {
      gradientColors[1] = TwColors.cyan.shade900;
      return _child;
  }
	T get fromLightBlue {
      gradientColors[0] = TwColors.lightBlue;
      return _child;
  }
	T get toLightBlue {
      gradientColors[1] = TwColors.lightBlue;
      return _child;
  }
	T get fromLightBlue50 {
      gradientColors[0] = TwColors.lightBlue.shade50;
      return _child;
  }
	T get toLightBlue50 {
      gradientColors[1] = TwColors.lightBlue.shade50;
      return _child;
  }
	T get fromLightBlue100 {
      gradientColors[0] = TwColors.lightBlue.shade100;
      return _child;
  }
	T get toLightBlue100 {
      gradientColors[1] = TwColors.lightBlue.shade100;
      return _child;
  }
	T get fromLightBlue200 {
      gradientColors[0] = TwColors.lightBlue.shade200;
      return _child;
  }
	T get toLightBlue200 {
      gradientColors[1] = TwColors.lightBlue.shade200;
      return _child;
  }
	T get fromLightBlue300 {
      gradientColors[0] = TwColors.lightBlue.shade300;
      return _child;
  }
	T get toLightBlue300 {
      gradientColors[1] = TwColors.lightBlue.shade300;
      return _child;
  }
	T get fromLightBlue400 {
      gradientColors[0] = TwColors.lightBlue.shade400;
      return _child;
  }
	T get toLightBlue400 {
      gradientColors[1] = TwColors.lightBlue.shade400;
      return _child;
  }
	T get fromLightBlue500 {
      gradientColors[0] = TwColors.lightBlue.shade500;
      return _child;
  }
	T get toLightBlue500 {
      gradientColors[1] = TwColors.lightBlue.shade500;
      return _child;
  }
	T get fromLightBlue600 {
      gradientColors[0] = TwColors.lightBlue.shade600;
      return _child;
  }
	T get toLightBlue600 {
      gradientColors[1] = TwColors.lightBlue.shade600;
      return _child;
  }
	T get fromLightBlue700 {
      gradientColors[0] = TwColors.lightBlue.shade700;
      return _child;
  }
	T get toLightBlue700 {
      gradientColors[1] = TwColors.lightBlue.shade700;
      return _child;
  }
	T get fromLightBlue800 {
      gradientColors[0] = TwColors.lightBlue.shade800;
      return _child;
  }
	T get toLightBlue800 {
      gradientColors[1] = TwColors.lightBlue.shade800;
      return _child;
  }
	T get fromLightBlue900 {
      gradientColors[0] = TwColors.lightBlue.shade900;
      return _child;
  }
	T get toLightBlue900 {
      gradientColors[1] = TwColors.lightBlue.shade900;
      return _child;
  }
	T get fromBlue {
      gradientColors[0] = TwColors.blue;
      return _child;
  }
	T get toBlue {
      gradientColors[1] = TwColors.blue;
      return _child;
  }
	T get fromBlue50 {
      gradientColors[0] = TwColors.blue.shade50;
      return _child;
  }
	T get toBlue50 {
      gradientColors[1] = TwColors.blue.shade50;
      return _child;
  }
	T get fromBlue100 {
      gradientColors[0] = TwColors.blue.shade100;
      return _child;
  }
	T get toBlue100 {
      gradientColors[1] = TwColors.blue.shade100;
      return _child;
  }
	T get fromBlue200 {
      gradientColors[0] = TwColors.blue.shade200;
      return _child;
  }
	T get toBlue200 {
      gradientColors[1] = TwColors.blue.shade200;
      return _child;
  }
	T get fromBlue300 {
      gradientColors[0] = TwColors.blue.shade300;
      return _child;
  }
	T get toBlue300 {
      gradientColors[1] = TwColors.blue.shade300;
      return _child;
  }
	T get fromBlue400 {
      gradientColors[0] = TwColors.blue.shade400;
      return _child;
  }
	T get toBlue400 {
      gradientColors[1] = TwColors.blue.shade400;
      return _child;
  }
	T get fromBlue500 {
      gradientColors[0] = TwColors.blue.shade500;
      return _child;
  }
	T get toBlue500 {
      gradientColors[1] = TwColors.blue.shade500;
      return _child;
  }
	T get fromBlue600 {
      gradientColors[0] = TwColors.blue.shade600;
      return _child;
  }
	T get toBlue600 {
      gradientColors[1] = TwColors.blue.shade600;
      return _child;
  }
	T get fromBlue700 {
      gradientColors[0] = TwColors.blue.shade700;
      return _child;
  }
	T get toBlue700 {
      gradientColors[1] = TwColors.blue.shade700;
      return _child;
  }
	T get fromBlue800 {
      gradientColors[0] = TwColors.blue.shade800;
      return _child;
  }
	T get toBlue800 {
      gradientColors[1] = TwColors.blue.shade800;
      return _child;
  }
	T get fromBlue900 {
      gradientColors[0] = TwColors.blue.shade900;
      return _child;
  }
	T get toBlue900 {
      gradientColors[1] = TwColors.blue.shade900;
      return _child;
  }
	T get fromIndigo {
      gradientColors[0] = TwColors.indigo;
      return _child;
  }
	T get toIndigo {
      gradientColors[1] = TwColors.indigo;
      return _child;
  }
	T get fromIndigo50 {
      gradientColors[0] = TwColors.indigo.shade50;
      return _child;
  }
	T get toIndigo50 {
      gradientColors[1] = TwColors.indigo.shade50;
      return _child;
  }
	T get fromIndigo100 {
      gradientColors[0] = TwColors.indigo.shade100;
      return _child;
  }
	T get toIndigo100 {
      gradientColors[1] = TwColors.indigo.shade100;
      return _child;
  }
	T get fromIndigo200 {
      gradientColors[0] = TwColors.indigo.shade200;
      return _child;
  }
	T get toIndigo200 {
      gradientColors[1] = TwColors.indigo.shade200;
      return _child;
  }
	T get fromIndigo300 {
      gradientColors[0] = TwColors.indigo.shade300;
      return _child;
  }
	T get toIndigo300 {
      gradientColors[1] = TwColors.indigo.shade300;
      return _child;
  }
	T get fromIndigo400 {
      gradientColors[0] = TwColors.indigo.shade400;
      return _child;
  }
	T get toIndigo400 {
      gradientColors[1] = TwColors.indigo.shade400;
      return _child;
  }
	T get fromIndigo500 {
      gradientColors[0] = TwColors.indigo.shade500;
      return _child;
  }
	T get toIndigo500 {
      gradientColors[1] = TwColors.indigo.shade500;
      return _child;
  }
	T get fromIndigo600 {
      gradientColors[0] = TwColors.indigo.shade600;
      return _child;
  }
	T get toIndigo600 {
      gradientColors[1] = TwColors.indigo.shade600;
      return _child;
  }
	T get fromIndigo700 {
      gradientColors[0] = TwColors.indigo.shade700;
      return _child;
  }
	T get toIndigo700 {
      gradientColors[1] = TwColors.indigo.shade700;
      return _child;
  }
	T get fromIndigo800 {
      gradientColors[0] = TwColors.indigo.shade800;
      return _child;
  }
	T get toIndigo800 {
      gradientColors[1] = TwColors.indigo.shade800;
      return _child;
  }
	T get fromIndigo900 {
      gradientColors[0] = TwColors.indigo.shade900;
      return _child;
  }
	T get toIndigo900 {
      gradientColors[1] = TwColors.indigo.shade900;
      return _child;
  }
	T get fromViolet {
      gradientColors[0] = TwColors.violet;
      return _child;
  }
	T get toViolet {
      gradientColors[1] = TwColors.violet;
      return _child;
  }
	T get fromViolet50 {
      gradientColors[0] = TwColors.violet.shade50;
      return _child;
  }
	T get toViolet50 {
      gradientColors[1] = TwColors.violet.shade50;
      return _child;
  }
	T get fromViolet100 {
      gradientColors[0] = TwColors.violet.shade100;
      return _child;
  }
	T get toViolet100 {
      gradientColors[1] = TwColors.violet.shade100;
      return _child;
  }
	T get fromViolet200 {
      gradientColors[0] = TwColors.violet.shade200;
      return _child;
  }
	T get toViolet200 {
      gradientColors[1] = TwColors.violet.shade200;
      return _child;
  }
	T get fromViolet300 {
      gradientColors[0] = TwColors.violet.shade300;
      return _child;
  }
	T get toViolet300 {
      gradientColors[1] = TwColors.violet.shade300;
      return _child;
  }
	T get fromViolet400 {
      gradientColors[0] = TwColors.violet.shade400;
      return _child;
  }
	T get toViolet400 {
      gradientColors[1] = TwColors.violet.shade400;
      return _child;
  }
	T get fromViolet500 {
      gradientColors[0] = TwColors.violet.shade500;
      return _child;
  }
	T get toViolet500 {
      gradientColors[1] = TwColors.violet.shade500;
      return _child;
  }
	T get fromViolet600 {
      gradientColors[0] = TwColors.violet.shade600;
      return _child;
  }
	T get toViolet600 {
      gradientColors[1] = TwColors.violet.shade600;
      return _child;
  }
	T get fromViolet700 {
      gradientColors[0] = TwColors.violet.shade700;
      return _child;
  }
	T get toViolet700 {
      gradientColors[1] = TwColors.violet.shade700;
      return _child;
  }
	T get fromViolet800 {
      gradientColors[0] = TwColors.violet.shade800;
      return _child;
  }
	T get toViolet800 {
      gradientColors[1] = TwColors.violet.shade800;
      return _child;
  }
	T get fromViolet900 {
      gradientColors[0] = TwColors.violet.shade900;
      return _child;
  }
	T get toViolet900 {
      gradientColors[1] = TwColors.violet.shade900;
      return _child;
  }
	T get fromPurple {
      gradientColors[0] = TwColors.purple;
      return _child;
  }
	T get toPurple {
      gradientColors[1] = TwColors.purple;
      return _child;
  }
	T get fromPurple50 {
      gradientColors[0] = TwColors.purple.shade50;
      return _child;
  }
	T get toPurple50 {
      gradientColors[1] = TwColors.purple.shade50;
      return _child;
  }
	T get fromPurple100 {
      gradientColors[0] = TwColors.purple.shade100;
      return _child;
  }
	T get toPurple100 {
      gradientColors[1] = TwColors.purple.shade100;
      return _child;
  }
	T get fromPurple200 {
      gradientColors[0] = TwColors.purple.shade200;
      return _child;
  }
	T get toPurple200 {
      gradientColors[1] = TwColors.purple.shade200;
      return _child;
  }
	T get fromPurple300 {
      gradientColors[0] = TwColors.purple.shade300;
      return _child;
  }
	T get toPurple300 {
      gradientColors[1] = TwColors.purple.shade300;
      return _child;
  }
	T get fromPurple400 {
      gradientColors[0] = TwColors.purple.shade400;
      return _child;
  }
	T get toPurple400 {
      gradientColors[1] = TwColors.purple.shade400;
      return _child;
  }
	T get fromPurple500 {
      gradientColors[0] = TwColors.purple.shade500;
      return _child;
  }
	T get toPurple500 {
      gradientColors[1] = TwColors.purple.shade500;
      return _child;
  }
	T get fromPurple600 {
      gradientColors[0] = TwColors.purple.shade600;
      return _child;
  }
	T get toPurple600 {
      gradientColors[1] = TwColors.purple.shade600;
      return _child;
  }
	T get fromPurple700 {
      gradientColors[0] = TwColors.purple.shade700;
      return _child;
  }
	T get toPurple700 {
      gradientColors[1] = TwColors.purple.shade700;
      return _child;
  }
	T get fromPurple800 {
      gradientColors[0] = TwColors.purple.shade800;
      return _child;
  }
	T get toPurple800 {
      gradientColors[1] = TwColors.purple.shade800;
      return _child;
  }
	T get fromPurple900 {
      gradientColors[0] = TwColors.purple.shade900;
      return _child;
  }
	T get toPurple900 {
      gradientColors[1] = TwColors.purple.shade900;
      return _child;
  }
	T get fromFuchsia {
      gradientColors[0] = TwColors.fuchsia;
      return _child;
  }
	T get toFuchsia {
      gradientColors[1] = TwColors.fuchsia;
      return _child;
  }
	T get fromFuchsia50 {
      gradientColors[0] = TwColors.fuchsia.shade50;
      return _child;
  }
	T get toFuchsia50 {
      gradientColors[1] = TwColors.fuchsia.shade50;
      return _child;
  }
	T get fromFuchsia100 {
      gradientColors[0] = TwColors.fuchsia.shade100;
      return _child;
  }
	T get toFuchsia100 {
      gradientColors[1] = TwColors.fuchsia.shade100;
      return _child;
  }
	T get fromFuchsia200 {
      gradientColors[0] = TwColors.fuchsia.shade200;
      return _child;
  }
	T get toFuchsia200 {
      gradientColors[1] = TwColors.fuchsia.shade200;
      return _child;
  }
	T get fromFuchsia300 {
      gradientColors[0] = TwColors.fuchsia.shade300;
      return _child;
  }
	T get toFuchsia300 {
      gradientColors[1] = TwColors.fuchsia.shade300;
      return _child;
  }
	T get fromFuchsia400 {
      gradientColors[0] = TwColors.fuchsia.shade400;
      return _child;
  }
	T get toFuchsia400 {
      gradientColors[1] = TwColors.fuchsia.shade400;
      return _child;
  }
	T get fromFuchsia500 {
      gradientColors[0] = TwColors.fuchsia.shade500;
      return _child;
  }
	T get toFuchsia500 {
      gradientColors[1] = TwColors.fuchsia.shade500;
      return _child;
  }
	T get fromFuchsia600 {
      gradientColors[0] = TwColors.fuchsia.shade600;
      return _child;
  }
	T get toFuchsia600 {
      gradientColors[1] = TwColors.fuchsia.shade600;
      return _child;
  }
	T get fromFuchsia700 {
      gradientColors[0] = TwColors.fuchsia.shade700;
      return _child;
  }
	T get toFuchsia700 {
      gradientColors[1] = TwColors.fuchsia.shade700;
      return _child;
  }
	T get fromFuchsia800 {
      gradientColors[0] = TwColors.fuchsia.shade800;
      return _child;
  }
	T get toFuchsia800 {
      gradientColors[1] = TwColors.fuchsia.shade800;
      return _child;
  }
	T get fromFuchsia900 {
      gradientColors[0] = TwColors.fuchsia.shade900;
      return _child;
  }
	T get toFuchsia900 {
      gradientColors[1] = TwColors.fuchsia.shade900;
      return _child;
  }
	T get fromPink {
      gradientColors[0] = TwColors.pink;
      return _child;
  }
	T get toPink {
      gradientColors[1] = TwColors.pink;
      return _child;
  }
	T get fromPink50 {
      gradientColors[0] = TwColors.pink.shade50;
      return _child;
  }
	T get toPink50 {
      gradientColors[1] = TwColors.pink.shade50;
      return _child;
  }
	T get fromPink100 {
      gradientColors[0] = TwColors.pink.shade100;
      return _child;
  }
	T get toPink100 {
      gradientColors[1] = TwColors.pink.shade100;
      return _child;
  }
	T get fromPink200 {
      gradientColors[0] = TwColors.pink.shade200;
      return _child;
  }
	T get toPink200 {
      gradientColors[1] = TwColors.pink.shade200;
      return _child;
  }
	T get fromPink300 {
      gradientColors[0] = TwColors.pink.shade300;
      return _child;
  }
	T get toPink300 {
      gradientColors[1] = TwColors.pink.shade300;
      return _child;
  }
	T get fromPink400 {
      gradientColors[0] = TwColors.pink.shade400;
      return _child;
  }
	T get toPink400 {
      gradientColors[1] = TwColors.pink.shade400;
      return _child;
  }
	T get fromPink500 {
      gradientColors[0] = TwColors.pink.shade500;
      return _child;
  }
	T get toPink500 {
      gradientColors[1] = TwColors.pink.shade500;
      return _child;
  }
	T get fromPink600 {
      gradientColors[0] = TwColors.pink.shade600;
      return _child;
  }
	T get toPink600 {
      gradientColors[1] = TwColors.pink.shade600;
      return _child;
  }
	T get fromPink700 {
      gradientColors[0] = TwColors.pink.shade700;
      return _child;
  }
	T get toPink700 {
      gradientColors[1] = TwColors.pink.shade700;
      return _child;
  }
	T get fromPink800 {
      gradientColors[0] = TwColors.pink.shade800;
      return _child;
  }
	T get toPink800 {
      gradientColors[1] = TwColors.pink.shade800;
      return _child;
  }
	T get fromPink900 {
      gradientColors[0] = TwColors.pink.shade900;
      return _child;
  }
	T get toPink900 {
      gradientColors[1] = TwColors.pink.shade900;
      return _child;
  }
	T get fromRose {
      gradientColors[0] = TwColors.rose;
      return _child;
  }
	T get toRose {
      gradientColors[1] = TwColors.rose;
      return _child;
  }
	T get fromRose50 {
      gradientColors[0] = TwColors.rose.shade50;
      return _child;
  }
	T get toRose50 {
      gradientColors[1] = TwColors.rose.shade50;
      return _child;
  }
	T get fromRose100 {
      gradientColors[0] = TwColors.rose.shade100;
      return _child;
  }
	T get toRose100 {
      gradientColors[1] = TwColors.rose.shade100;
      return _child;
  }
	T get fromRose200 {
      gradientColors[0] = TwColors.rose.shade200;
      return _child;
  }
	T get toRose200 {
      gradientColors[1] = TwColors.rose.shade200;
      return _child;
  }
	T get fromRose300 {
      gradientColors[0] = TwColors.rose.shade300;
      return _child;
  }
	T get toRose300 {
      gradientColors[1] = TwColors.rose.shade300;
      return _child;
  }
	T get fromRose400 {
      gradientColors[0] = TwColors.rose.shade400;
      return _child;
  }
	T get toRose400 {
      gradientColors[1] = TwColors.rose.shade400;
      return _child;
  }
	T get fromRose500 {
      gradientColors[0] = TwColors.rose.shade500;
      return _child;
  }
	T get toRose500 {
      gradientColors[1] = TwColors.rose.shade500;
      return _child;
  }
	T get fromRose600 {
      gradientColors[0] = TwColors.rose.shade600;
      return _child;
  }
	T get toRose600 {
      gradientColors[1] = TwColors.rose.shade600;
      return _child;
  }
	T get fromRose700 {
      gradientColors[0] = TwColors.rose.shade700;
      return _child;
  }
	T get toRose700 {
      gradientColors[1] = TwColors.rose.shade700;
      return _child;
  }
	T get fromRose800 {
      gradientColors[0] = TwColors.rose.shade800;
      return _child;
  }
	T get toRose800 {
      gradientColors[1] = TwColors.rose.shade800;
      return _child;
  }
	T get fromRose900 {
      gradientColors[0] = TwColors.rose.shade900;
      return _child;
  }
	T get toRose900 {
      gradientColors[1] = TwColors.rose.shade900;
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

