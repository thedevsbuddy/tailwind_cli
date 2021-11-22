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
 
  //colorGetters
}
""";
