const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/ColorMixin.dart";

const String stub = """
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwColorMixin<T> {
  late T _child;

  @protected
  Color? twColor;

  @protected
  void setChildForColoring(T child) {
    _child = child;
  }
  
  /// Flutter Theme Colors
  T get primaryColor {
    twColor = TwColors.primaryColor(Get.context!);
    return _child;
  }
  
  T get primaryColorLight {
    twColor = TwColors.primaryColorLight(Get.context!);
    return _child;
  }

  T get primaryColorDark {
    twColor = TwColors.primaryColorDark(Get.context!);
    return _child;
  }

  T get secondaryColor {
    twColor = TwColors.secondary(Get.context!);
    return _child;
  }

  T get backgroundColor {
    twColor = TwColors.backgroundColor(Get.context!);
    return _child;
  }

  T get scaffoldBackgroundColor {
    twColor = TwColors.scaffoldBackgroundColor(Get.context!);
    return _child;
  }

  T get cardColor {
    twColor = TwColors.cardColor(Get.context!);
    return _child;
  }
 
  //colorGetters
}
""";
