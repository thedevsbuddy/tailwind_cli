const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/ColorMixin.dart";

const String stub = """
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
  T primaryColor(BuildContext context) {
    twColor = Theme.of(context).primaryColor;
    return _child;
  }
  
  T primaryColorLight(BuildContext context) {
    twColor = Theme.of(context).primaryColorLight;
    return _child;
  }

  T primaryColorDark(BuildContext context) {
    twColor = Theme.of(context).primaryColorDark;
    return _child;
  }

  T accentColor(BuildContext context) {
    twColor = Theme.of(context).accentColor;
    return _child;
  }

  T backgroundColor(BuildContext context) {
    twColor = Theme.of(context).backgroundColor;
    return _child;
  }

  T scaffoldBackgroundColor(BuildContext context) {
    twColor = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }

  T buttonColor(BuildContext context) {
    twColor = Theme.of(context).buttonColor;
    return _child;
  }

  T cardColor(BuildContext context) {
    twColor = Theme.of(context).cardColor;
    return _child;
  }
 
  //colorGetters
}
""";
