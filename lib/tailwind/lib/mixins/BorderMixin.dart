const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/BorderMixin.dart";

const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

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
  T borderPrimaryColor(BuildContext context) {
    twBorderColor = Theme.of(context).primaryColor;
    return _child;
  }

  T borderPrimaryDarkColor(BuildContext context) {
    twBorderColor = Theme.of(context).primaryColorDark;
    return _child;
  }

  T borderAccentColor(BuildContext context) {
    twBorderColor = Theme.of(context).accentColor;
    return _child;
  }

  T borderBackgroundColor(BuildContext context) {
    twBorderColor = Theme.of(context).backgroundColor;
    return _child;
  }

  T borderScaffoldBackgroundColor(BuildContext context) {
    twBorderColor = Theme.of(context).scaffoldBackgroundColor;
    return _child;
  }

  T borderButtonColor(BuildContext context) {
    twBorderColor = Theme.of(context).buttonColor;
    return _child;
  }

  T borderCardColor(BuildContext context) {
    twBorderColor = Theme.of(context).cardColor;
    return _child;
  }

  //borderColors
}

""";
