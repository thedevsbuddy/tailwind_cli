const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/GradientMixin.dart";

const String stub = """
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

  //gradientColors
}
""";
