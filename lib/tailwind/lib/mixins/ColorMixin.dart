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
  T get primaryColor(BuildContext context) {
    twColor = TwColors.primaryColor(context);
    return _child;
  }
  
  T get primaryColorLight(BuildContext context) {
    twColor = TwColors.primaryColorLight(context);
    return _child;
  }

  T get primaryColorDark(BuildContext context) {
    twColor = TwColors.primaryColorDark(context);
    return _child;
  }

  T get secondaryColor(BuildContext context) {
    twColor = TwColors.secondary(context);
    return _child;
  }

  T get backgroundColor(BuildContext context) {
    twColor = TwColors.backgroundColor(context);
    return _child;
  }

  T get scaffoldBackgroundColor(BuildContext context) {
    twColor = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T get cardColor(BuildContext context) {
    twColor = TwColors.cardColor(context);
    return _child;
  }
 
  //colorGetters
}
""";
