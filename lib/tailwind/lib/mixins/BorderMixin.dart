const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/BorderMixin.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';
import 'package:get/get.dart';

mixin TwBorderMixin<T> {
  late T _child;

  @protected
  bool hasBorder = false;
  Color? twBorderColor = Colors.grey[500];
  BorderStyle? twBorderStyle = BorderStyle.solid;
  double twBorderWidth = 1;

  @protected
  void setChildForBorder(T child) {
    _child = child;
  }

  T get border {
    hasBorder = true;
    return _child;
  }

  T get borderSolid {
    twBorderStyle = BorderStyle.solid;
    return _child;
  }

  T get borderNone {
    hasBorder = false;
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

  //borderWidths

  Border getBorder() {
    if (hasBorder) {
      return Border.all(color: twBorderColor!, width: twBorderWidth);
    } else {
      return Border.all(color: Colors.transparent, width: 0);
    }
  }

  /// Flutter Theme Colors
  T borderColor(Color color) {
    twBorderColor = color;
    return _child;
  }
  
  T get borderPrimaryColor {
    twBorderColor = TwColors.primaryColor(Get.context!);
    return _child;
  }

  T get borderPrimaryDarkColor {
    twBorderColor = TwColors.primaryColorDark(Get.context!);
    return _child;
  }

  T get borderAccentColor {
    twBorderColor = TwColors.secondary(Get.context!);
    return _child;
  }

  T get borderBackgroundColor {
    twBorderColor = TwColors.backgroundColor(Get.context!);
    return _child;
  }

  T get borderScaffoldBackgroundColor {
    twBorderColor = TwColors.scaffoldBackgroundColor(Get.context!);
    return _child;
  }

  T get borderCardColor {
    twBorderColor = TwColors.cardColor(Get.context!);
    return _child;
  }

  //borderColors
}

""";
