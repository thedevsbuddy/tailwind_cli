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
 
  T get black {
      twColor = TwColors.black;
      return _child;
  }
	T get white {
      twColor = TwColors.white;
      return _child;
  }
	T get transparent {
      twColor = TwColors.transparent;
      return _child;
  }
	T get gray {
      twColor = TwColors.gray;
      return _child;
  }
	T get gray50 {
      twColor = TwColors.gray.shade50;
      return _child;
  }
	T get gray100 {
      twColor = TwColors.gray.shade100;
      return _child;
  }
	T get gray200 {
      twColor = TwColors.gray.shade200;
      return _child;
  }
	T get gray300 {
      twColor = TwColors.gray.shade300;
      return _child;
  }
	T get gray400 {
      twColor = TwColors.gray.shade400;
      return _child;
  }
	T get gray500 {
      twColor = TwColors.gray.shade500;
      return _child;
  }
	T get gray600 {
      twColor = TwColors.gray.shade600;
      return _child;
  }
	T get gray700 {
      twColor = TwColors.gray.shade700;
      return _child;
  }
	T get gray800 {
      twColor = TwColors.gray.shade800;
      return _child;
  }
	T get gray900 {
      twColor = TwColors.gray.shade900;
      return _child;
  }
	T get blueGray {
      twColor = TwColors.blueGray;
      return _child;
  }
	T get blueGray50 {
      twColor = TwColors.blueGray.shade50;
      return _child;
  }
	T get blueGray100 {
      twColor = TwColors.blueGray.shade100;
      return _child;
  }
	T get blueGray200 {
      twColor = TwColors.blueGray.shade200;
      return _child;
  }
	T get blueGray300 {
      twColor = TwColors.blueGray.shade300;
      return _child;
  }
	T get blueGray400 {
      twColor = TwColors.blueGray.shade400;
      return _child;
  }
	T get blueGray500 {
      twColor = TwColors.blueGray.shade500;
      return _child;
  }
	T get blueGray600 {
      twColor = TwColors.blueGray.shade600;
      return _child;
  }
	T get blueGray700 {
      twColor = TwColors.blueGray.shade700;
      return _child;
  }
	T get blueGray800 {
      twColor = TwColors.blueGray.shade800;
      return _child;
  }
	T get blueGray900 {
      twColor = TwColors.blueGray.shade900;
      return _child;
  }
	T get coolGray {
      twColor = TwColors.coolGray;
      return _child;
  }
	T get coolGray50 {
      twColor = TwColors.coolGray.shade50;
      return _child;
  }
	T get coolGray100 {
      twColor = TwColors.coolGray.shade100;
      return _child;
  }
	T get coolGray200 {
      twColor = TwColors.coolGray.shade200;
      return _child;
  }
	T get coolGray300 {
      twColor = TwColors.coolGray.shade300;
      return _child;
  }
	T get coolGray400 {
      twColor = TwColors.coolGray.shade400;
      return _child;
  }
	T get coolGray500 {
      twColor = TwColors.coolGray.shade500;
      return _child;
  }
	T get coolGray600 {
      twColor = TwColors.coolGray.shade600;
      return _child;
  }
	T get coolGray700 {
      twColor = TwColors.coolGray.shade700;
      return _child;
  }
	T get coolGray800 {
      twColor = TwColors.coolGray.shade800;
      return _child;
  }
	T get coolGray900 {
      twColor = TwColors.coolGray.shade900;
      return _child;
  }
	T get trueGray {
      twColor = TwColors.trueGray;
      return _child;
  }
	T get trueGray50 {
      twColor = TwColors.trueGray.shade50;
      return _child;
  }
	T get trueGray100 {
      twColor = TwColors.trueGray.shade100;
      return _child;
  }
	T get trueGray200 {
      twColor = TwColors.trueGray.shade200;
      return _child;
  }
	T get trueGray300 {
      twColor = TwColors.trueGray.shade300;
      return _child;
  }
	T get trueGray400 {
      twColor = TwColors.trueGray.shade400;
      return _child;
  }
	T get trueGray500 {
      twColor = TwColors.trueGray.shade500;
      return _child;
  }
	T get trueGray600 {
      twColor = TwColors.trueGray.shade600;
      return _child;
  }
	T get trueGray700 {
      twColor = TwColors.trueGray.shade700;
      return _child;
  }
	T get trueGray800 {
      twColor = TwColors.trueGray.shade800;
      return _child;
  }
	T get trueGray900 {
      twColor = TwColors.trueGray.shade900;
      return _child;
  }
	T get warmGray {
      twColor = TwColors.warmGray;
      return _child;
  }
	T get warmGray50 {
      twColor = TwColors.warmGray.shade50;
      return _child;
  }
	T get warmGray100 {
      twColor = TwColors.warmGray.shade100;
      return _child;
  }
	T get warmGray200 {
      twColor = TwColors.warmGray.shade200;
      return _child;
  }
	T get warmGray300 {
      twColor = TwColors.warmGray.shade300;
      return _child;
  }
	T get warmGray400 {
      twColor = TwColors.warmGray.shade400;
      return _child;
  }
	T get warmGray500 {
      twColor = TwColors.warmGray.shade500;
      return _child;
  }
	T get warmGray600 {
      twColor = TwColors.warmGray.shade600;
      return _child;
  }
	T get warmGray700 {
      twColor = TwColors.warmGray.shade700;
      return _child;
  }
	T get warmGray800 {
      twColor = TwColors.warmGray.shade800;
      return _child;
  }
	T get warmGray900 {
      twColor = TwColors.warmGray.shade900;
      return _child;
  }
	T get red {
      twColor = TwColors.red;
      return _child;
  }
	T get red50 {
      twColor = TwColors.red.shade50;
      return _child;
  }
	T get red100 {
      twColor = TwColors.red.shade100;
      return _child;
  }
	T get red200 {
      twColor = TwColors.red.shade200;
      return _child;
  }
	T get red300 {
      twColor = TwColors.red.shade300;
      return _child;
  }
	T get red400 {
      twColor = TwColors.red.shade400;
      return _child;
  }
	T get red500 {
      twColor = TwColors.red.shade500;
      return _child;
  }
	T get red600 {
      twColor = TwColors.red.shade600;
      return _child;
  }
	T get red700 {
      twColor = TwColors.red.shade700;
      return _child;
  }
	T get red800 {
      twColor = TwColors.red.shade800;
      return _child;
  }
	T get red900 {
      twColor = TwColors.red.shade900;
      return _child;
  }
	T get orange {
      twColor = TwColors.orange;
      return _child;
  }
	T get orange50 {
      twColor = TwColors.orange.shade50;
      return _child;
  }
	T get orange100 {
      twColor = TwColors.orange.shade100;
      return _child;
  }
	T get orange200 {
      twColor = TwColors.orange.shade200;
      return _child;
  }
	T get orange300 {
      twColor = TwColors.orange.shade300;
      return _child;
  }
	T get orange400 {
      twColor = TwColors.orange.shade400;
      return _child;
  }
	T get orange500 {
      twColor = TwColors.orange.shade500;
      return _child;
  }
	T get orange600 {
      twColor = TwColors.orange.shade600;
      return _child;
  }
	T get orange700 {
      twColor = TwColors.orange.shade700;
      return _child;
  }
	T get orange800 {
      twColor = TwColors.orange.shade800;
      return _child;
  }
	T get orange900 {
      twColor = TwColors.orange.shade900;
      return _child;
  }
	T get amber {
      twColor = TwColors.amber;
      return _child;
  }
	T get amber50 {
      twColor = TwColors.amber.shade50;
      return _child;
  }
	T get amber100 {
      twColor = TwColors.amber.shade100;
      return _child;
  }
	T get amber200 {
      twColor = TwColors.amber.shade200;
      return _child;
  }
	T get amber300 {
      twColor = TwColors.amber.shade300;
      return _child;
  }
	T get amber400 {
      twColor = TwColors.amber.shade400;
      return _child;
  }
	T get amber500 {
      twColor = TwColors.amber.shade500;
      return _child;
  }
	T get amber600 {
      twColor = TwColors.amber.shade600;
      return _child;
  }
	T get amber700 {
      twColor = TwColors.amber.shade700;
      return _child;
  }
	T get amber800 {
      twColor = TwColors.amber.shade800;
      return _child;
  }
	T get amber900 {
      twColor = TwColors.amber.shade900;
      return _child;
  }
	T get yellow {
      twColor = TwColors.yellow;
      return _child;
  }
	T get yellow50 {
      twColor = TwColors.yellow.shade50;
      return _child;
  }
	T get yellow100 {
      twColor = TwColors.yellow.shade100;
      return _child;
  }
	T get yellow200 {
      twColor = TwColors.yellow.shade200;
      return _child;
  }
	T get yellow300 {
      twColor = TwColors.yellow.shade300;
      return _child;
  }
	T get yellow400 {
      twColor = TwColors.yellow.shade400;
      return _child;
  }
	T get yellow500 {
      twColor = TwColors.yellow.shade500;
      return _child;
  }
	T get yellow600 {
      twColor = TwColors.yellow.shade600;
      return _child;
  }
	T get yellow700 {
      twColor = TwColors.yellow.shade700;
      return _child;
  }
	T get yellow800 {
      twColor = TwColors.yellow.shade800;
      return _child;
  }
	T get yellow900 {
      twColor = TwColors.yellow.shade900;
      return _child;
  }
	T get lime {
      twColor = TwColors.lime;
      return _child;
  }
	T get lime50 {
      twColor = TwColors.lime.shade50;
      return _child;
  }
	T get lime100 {
      twColor = TwColors.lime.shade100;
      return _child;
  }
	T get lime200 {
      twColor = TwColors.lime.shade200;
      return _child;
  }
	T get lime300 {
      twColor = TwColors.lime.shade300;
      return _child;
  }
	T get lime400 {
      twColor = TwColors.lime.shade400;
      return _child;
  }
	T get lime500 {
      twColor = TwColors.lime.shade500;
      return _child;
  }
	T get lime600 {
      twColor = TwColors.lime.shade600;
      return _child;
  }
	T get lime700 {
      twColor = TwColors.lime.shade700;
      return _child;
  }
	T get lime800 {
      twColor = TwColors.lime.shade800;
      return _child;
  }
	T get lime900 {
      twColor = TwColors.lime.shade900;
      return _child;
  }
	T get green {
      twColor = TwColors.green;
      return _child;
  }
	T get green50 {
      twColor = TwColors.green.shade50;
      return _child;
  }
	T get green100 {
      twColor = TwColors.green.shade100;
      return _child;
  }
	T get green200 {
      twColor = TwColors.green.shade200;
      return _child;
  }
	T get green300 {
      twColor = TwColors.green.shade300;
      return _child;
  }
	T get green400 {
      twColor = TwColors.green.shade400;
      return _child;
  }
	T get green500 {
      twColor = TwColors.green.shade500;
      return _child;
  }
	T get green600 {
      twColor = TwColors.green.shade600;
      return _child;
  }
	T get green700 {
      twColor = TwColors.green.shade700;
      return _child;
  }
	T get green800 {
      twColor = TwColors.green.shade800;
      return _child;
  }
	T get green900 {
      twColor = TwColors.green.shade900;
      return _child;
  }
	T get emerald {
      twColor = TwColors.emerald;
      return _child;
  }
	T get emerald50 {
      twColor = TwColors.emerald.shade50;
      return _child;
  }
	T get emerald100 {
      twColor = TwColors.emerald.shade100;
      return _child;
  }
	T get emerald200 {
      twColor = TwColors.emerald.shade200;
      return _child;
  }
	T get emerald300 {
      twColor = TwColors.emerald.shade300;
      return _child;
  }
	T get emerald400 {
      twColor = TwColors.emerald.shade400;
      return _child;
  }
	T get emerald500 {
      twColor = TwColors.emerald.shade500;
      return _child;
  }
	T get emerald600 {
      twColor = TwColors.emerald.shade600;
      return _child;
  }
	T get emerald700 {
      twColor = TwColors.emerald.shade700;
      return _child;
  }
	T get emerald800 {
      twColor = TwColors.emerald.shade800;
      return _child;
  }
	T get emerald900 {
      twColor = TwColors.emerald.shade900;
      return _child;
  }
	T get teal {
      twColor = TwColors.teal;
      return _child;
  }
	T get teal50 {
      twColor = TwColors.teal.shade50;
      return _child;
  }
	T get teal100 {
      twColor = TwColors.teal.shade100;
      return _child;
  }
	T get teal200 {
      twColor = TwColors.teal.shade200;
      return _child;
  }
	T get teal300 {
      twColor = TwColors.teal.shade300;
      return _child;
  }
	T get teal400 {
      twColor = TwColors.teal.shade400;
      return _child;
  }
	T get teal500 {
      twColor = TwColors.teal.shade500;
      return _child;
  }
	T get teal600 {
      twColor = TwColors.teal.shade600;
      return _child;
  }
	T get teal700 {
      twColor = TwColors.teal.shade700;
      return _child;
  }
	T get teal800 {
      twColor = TwColors.teal.shade800;
      return _child;
  }
	T get teal900 {
      twColor = TwColors.teal.shade900;
      return _child;
  }
	T get cyan {
      twColor = TwColors.cyan;
      return _child;
  }
	T get cyan50 {
      twColor = TwColors.cyan.shade50;
      return _child;
  }
	T get cyan100 {
      twColor = TwColors.cyan.shade100;
      return _child;
  }
	T get cyan200 {
      twColor = TwColors.cyan.shade200;
      return _child;
  }
	T get cyan300 {
      twColor = TwColors.cyan.shade300;
      return _child;
  }
	T get cyan400 {
      twColor = TwColors.cyan.shade400;
      return _child;
  }
	T get cyan500 {
      twColor = TwColors.cyan.shade500;
      return _child;
  }
	T get cyan600 {
      twColor = TwColors.cyan.shade600;
      return _child;
  }
	T get cyan700 {
      twColor = TwColors.cyan.shade700;
      return _child;
  }
	T get cyan800 {
      twColor = TwColors.cyan.shade800;
      return _child;
  }
	T get cyan900 {
      twColor = TwColors.cyan.shade900;
      return _child;
  }
	T get lightBlue {
      twColor = TwColors.lightBlue;
      return _child;
  }
	T get lightBlue50 {
      twColor = TwColors.lightBlue.shade50;
      return _child;
  }
	T get lightBlue100 {
      twColor = TwColors.lightBlue.shade100;
      return _child;
  }
	T get lightBlue200 {
      twColor = TwColors.lightBlue.shade200;
      return _child;
  }
	T get lightBlue300 {
      twColor = TwColors.lightBlue.shade300;
      return _child;
  }
	T get lightBlue400 {
      twColor = TwColors.lightBlue.shade400;
      return _child;
  }
	T get lightBlue500 {
      twColor = TwColors.lightBlue.shade500;
      return _child;
  }
	T get lightBlue600 {
      twColor = TwColors.lightBlue.shade600;
      return _child;
  }
	T get lightBlue700 {
      twColor = TwColors.lightBlue.shade700;
      return _child;
  }
	T get lightBlue800 {
      twColor = TwColors.lightBlue.shade800;
      return _child;
  }
	T get lightBlue900 {
      twColor = TwColors.lightBlue.shade900;
      return _child;
  }
	T get blue {
      twColor = TwColors.blue;
      return _child;
  }
	T get blue50 {
      twColor = TwColors.blue.shade50;
      return _child;
  }
	T get blue100 {
      twColor = TwColors.blue.shade100;
      return _child;
  }
	T get blue200 {
      twColor = TwColors.blue.shade200;
      return _child;
  }
	T get blue300 {
      twColor = TwColors.blue.shade300;
      return _child;
  }
	T get blue400 {
      twColor = TwColors.blue.shade400;
      return _child;
  }
	T get blue500 {
      twColor = TwColors.blue.shade500;
      return _child;
  }
	T get blue600 {
      twColor = TwColors.blue.shade600;
      return _child;
  }
	T get blue700 {
      twColor = TwColors.blue.shade700;
      return _child;
  }
	T get blue800 {
      twColor = TwColors.blue.shade800;
      return _child;
  }
	T get blue900 {
      twColor = TwColors.blue.shade900;
      return _child;
  }
	T get indigo {
      twColor = TwColors.indigo;
      return _child;
  }
	T get indigo50 {
      twColor = TwColors.indigo.shade50;
      return _child;
  }
	T get indigo100 {
      twColor = TwColors.indigo.shade100;
      return _child;
  }
	T get indigo200 {
      twColor = TwColors.indigo.shade200;
      return _child;
  }
	T get indigo300 {
      twColor = TwColors.indigo.shade300;
      return _child;
  }
	T get indigo400 {
      twColor = TwColors.indigo.shade400;
      return _child;
  }
	T get indigo500 {
      twColor = TwColors.indigo.shade500;
      return _child;
  }
	T get indigo600 {
      twColor = TwColors.indigo.shade600;
      return _child;
  }
	T get indigo700 {
      twColor = TwColors.indigo.shade700;
      return _child;
  }
	T get indigo800 {
      twColor = TwColors.indigo.shade800;
      return _child;
  }
	T get indigo900 {
      twColor = TwColors.indigo.shade900;
      return _child;
  }
	T get violet {
      twColor = TwColors.violet;
      return _child;
  }
	T get violet50 {
      twColor = TwColors.violet.shade50;
      return _child;
  }
	T get violet100 {
      twColor = TwColors.violet.shade100;
      return _child;
  }
	T get violet200 {
      twColor = TwColors.violet.shade200;
      return _child;
  }
	T get violet300 {
      twColor = TwColors.violet.shade300;
      return _child;
  }
	T get violet400 {
      twColor = TwColors.violet.shade400;
      return _child;
  }
	T get violet500 {
      twColor = TwColors.violet.shade500;
      return _child;
  }
	T get violet600 {
      twColor = TwColors.violet.shade600;
      return _child;
  }
	T get violet700 {
      twColor = TwColors.violet.shade700;
      return _child;
  }
	T get violet800 {
      twColor = TwColors.violet.shade800;
      return _child;
  }
	T get violet900 {
      twColor = TwColors.violet.shade900;
      return _child;
  }
	T get purple {
      twColor = TwColors.purple;
      return _child;
  }
	T get purple50 {
      twColor = TwColors.purple.shade50;
      return _child;
  }
	T get purple100 {
      twColor = TwColors.purple.shade100;
      return _child;
  }
	T get purple200 {
      twColor = TwColors.purple.shade200;
      return _child;
  }
	T get purple300 {
      twColor = TwColors.purple.shade300;
      return _child;
  }
	T get purple400 {
      twColor = TwColors.purple.shade400;
      return _child;
  }
	T get purple500 {
      twColor = TwColors.purple.shade500;
      return _child;
  }
	T get purple600 {
      twColor = TwColors.purple.shade600;
      return _child;
  }
	T get purple700 {
      twColor = TwColors.purple.shade700;
      return _child;
  }
	T get purple800 {
      twColor = TwColors.purple.shade800;
      return _child;
  }
	T get purple900 {
      twColor = TwColors.purple.shade900;
      return _child;
  }
	T get fuchsia {
      twColor = TwColors.fuchsia;
      return _child;
  }
	T get fuchsia50 {
      twColor = TwColors.fuchsia.shade50;
      return _child;
  }
	T get fuchsia100 {
      twColor = TwColors.fuchsia.shade100;
      return _child;
  }
	T get fuchsia200 {
      twColor = TwColors.fuchsia.shade200;
      return _child;
  }
	T get fuchsia300 {
      twColor = TwColors.fuchsia.shade300;
      return _child;
  }
	T get fuchsia400 {
      twColor = TwColors.fuchsia.shade400;
      return _child;
  }
	T get fuchsia500 {
      twColor = TwColors.fuchsia.shade500;
      return _child;
  }
	T get fuchsia600 {
      twColor = TwColors.fuchsia.shade600;
      return _child;
  }
	T get fuchsia700 {
      twColor = TwColors.fuchsia.shade700;
      return _child;
  }
	T get fuchsia800 {
      twColor = TwColors.fuchsia.shade800;
      return _child;
  }
	T get fuchsia900 {
      twColor = TwColors.fuchsia.shade900;
      return _child;
  }
	T get pink {
      twColor = TwColors.pink;
      return _child;
  }
	T get pink50 {
      twColor = TwColors.pink.shade50;
      return _child;
  }
	T get pink100 {
      twColor = TwColors.pink.shade100;
      return _child;
  }
	T get pink200 {
      twColor = TwColors.pink.shade200;
      return _child;
  }
	T get pink300 {
      twColor = TwColors.pink.shade300;
      return _child;
  }
	T get pink400 {
      twColor = TwColors.pink.shade400;
      return _child;
  }
	T get pink500 {
      twColor = TwColors.pink.shade500;
      return _child;
  }
	T get pink600 {
      twColor = TwColors.pink.shade600;
      return _child;
  }
	T get pink700 {
      twColor = TwColors.pink.shade700;
      return _child;
  }
	T get pink800 {
      twColor = TwColors.pink.shade800;
      return _child;
  }
	T get pink900 {
      twColor = TwColors.pink.shade900;
      return _child;
  }
	T get rose {
      twColor = TwColors.rose;
      return _child;
  }
	T get rose50 {
      twColor = TwColors.rose.shade50;
      return _child;
  }
	T get rose100 {
      twColor = TwColors.rose.shade100;
      return _child;
  }
	T get rose200 {
      twColor = TwColors.rose.shade200;
      return _child;
  }
	T get rose300 {
      twColor = TwColors.rose.shade300;
      return _child;
  }
	T get rose400 {
      twColor = TwColors.rose.shade400;
      return _child;
  }
	T get rose500 {
      twColor = TwColors.rose.shade500;
      return _child;
  }
	T get rose600 {
      twColor = TwColors.rose.shade600;
      return _child;
  }
	T get rose700 {
      twColor = TwColors.rose.shade700;
      return _child;
  }
	T get rose800 {
      twColor = TwColors.rose.shade800;
      return _child;
  }
	T get rose900 {
      twColor = TwColors.rose.shade900;
      return _child;
  }
	T get primary {
      twColor = TwColors.primary;
      return _child;
  }
	
}

