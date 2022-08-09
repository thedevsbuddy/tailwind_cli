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
    twColor = Theme.of(Get.context!).primaryColor;
    return _child;
  }
  
  T get primaryColorLight {
    twColor = Theme.of(Get.context!).primaryColorLight;
    return _child;
  }

  T get primaryColorDark {
    twColor = Theme.of(Get.context!).primaryColorDark;
    return _child;
  }

  T get secondaryColor {
    twColor = Theme.of(Get.context!).colorScheme.secondary;
    return _child;
  }

  T get backgroundColor {
    twColor = Theme.of(Get.context!).backgroundColor;
    return _child;
  }

  T get scaffoldBackgroundColor {
    twColor = Theme.of(Get.context!).scaffoldBackgroundColor;
    return _child;
  }

  T get cardColor {
    twColor = Theme.of(Get.context!).cardColor;
    return _child;
  }
 
  //colorGetters
}
""";
