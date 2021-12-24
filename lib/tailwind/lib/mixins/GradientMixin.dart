const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/GradientMixin.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

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
  T fromPrimaryColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).primaryColor;
    return _child;
  }
  T toPrimaryColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).primaryColor;
    return _child;
  }

  T fromPrimaryColorDark(BuildContext context) {
    gradientColors[0] = Theme.of(context).primaryColorDark;
    return _child;
  }

  T fromAccentColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).accentColor;
    return _child;
  }
  T toAccentColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).accentColor;
    return _child;
  }

  T fromBackgroundColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).backgroundColor;
    return _child;
  }
  T toBackgroundColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).backgroundColor;
    return _child;
  }

  T fromScaffoldBackgroundColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }
  T toScaffoldBackgroundColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }

  T fromButtonColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).buttonColor;
    return _child;
  }
  T toButtonColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).buttonColor;
    return _child;
  }

  T fromCardColor(BuildContext context) {
    gradientColors[0] = Theme.of(context).cardColor;
    return _child;
  }
  T toCardColor(BuildContext context) {
    gradientColors[1] = Theme.of(context).cardColor;
    return _child;
  }

  //gradientColors
}
""";
