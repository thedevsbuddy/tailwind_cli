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
	T get gray50 {
      twColor = TwColors.gray50;
      return _child;
  }
	T get gray100 {
      twColor = TwColors.gray100;
      return _child;
  }
	T get gray200 {
      twColor = TwColors.gray200;
      return _child;
  }
	T get gray300 {
      twColor = TwColors.gray300;
      return _child;
  }
	T get gray400 {
      twColor = TwColors.gray400;
      return _child;
  }
	T get gray500 {
      twColor = TwColors.gray500;
      return _child;
  }
	T get gray600 {
      twColor = TwColors.gray600;
      return _child;
  }
	T get gray700 {
      twColor = TwColors.gray700;
      return _child;
  }
	T get gray800 {
      twColor = TwColors.gray800;
      return _child;
  }
	T get gray900 {
      twColor = TwColors.gray900;
      return _child;
  }
	T get blueGray50 {
      twColor = TwColors.blueGray50;
      return _child;
  }
	T get blueGray100 {
      twColor = TwColors.blueGray100;
      return _child;
  }
	T get blueGray200 {
      twColor = TwColors.blueGray200;
      return _child;
  }
	T get blueGray300 {
      twColor = TwColors.blueGray300;
      return _child;
  }
	T get blueGray400 {
      twColor = TwColors.blueGray400;
      return _child;
  }
	T get blueGray500 {
      twColor = TwColors.blueGray500;
      return _child;
  }
	T get blueGray600 {
      twColor = TwColors.blueGray600;
      return _child;
  }
	T get blueGray700 {
      twColor = TwColors.blueGray700;
      return _child;
  }
	T get blueGray800 {
      twColor = TwColors.blueGray800;
      return _child;
  }
	T get blueGray900 {
      twColor = TwColors.blueGray900;
      return _child;
  }
	T get coolGray50 {
      twColor = TwColors.coolGray50;
      return _child;
  }
	T get coolGray100 {
      twColor = TwColors.coolGray100;
      return _child;
  }
	T get coolGray200 {
      twColor = TwColors.coolGray200;
      return _child;
  }
	T get coolGray300 {
      twColor = TwColors.coolGray300;
      return _child;
  }
	T get coolGray400 {
      twColor = TwColors.coolGray400;
      return _child;
  }
	T get coolGray500 {
      twColor = TwColors.coolGray500;
      return _child;
  }
	T get coolGray600 {
      twColor = TwColors.coolGray600;
      return _child;
  }
	T get coolGray700 {
      twColor = TwColors.coolGray700;
      return _child;
  }
	T get coolGray800 {
      twColor = TwColors.coolGray800;
      return _child;
  }
	T get coolGray900 {
      twColor = TwColors.coolGray900;
      return _child;
  }
	T get trueGray50 {
      twColor = TwColors.trueGray50;
      return _child;
  }
	T get trueGray100 {
      twColor = TwColors.trueGray100;
      return _child;
  }
	T get trueGray200 {
      twColor = TwColors.trueGray200;
      return _child;
  }
	T get trueGray300 {
      twColor = TwColors.trueGray300;
      return _child;
  }
	T get trueGray400 {
      twColor = TwColors.trueGray400;
      return _child;
  }
	T get trueGray500 {
      twColor = TwColors.trueGray500;
      return _child;
  }
	T get trueGray600 {
      twColor = TwColors.trueGray600;
      return _child;
  }
	T get trueGray700 {
      twColor = TwColors.trueGray700;
      return _child;
  }
	T get trueGray800 {
      twColor = TwColors.trueGray800;
      return _child;
  }
	T get trueGray900 {
      twColor = TwColors.trueGray900;
      return _child;
  }
	T get warmGray50 {
      twColor = TwColors.warmGray50;
      return _child;
  }
	T get warmGray100 {
      twColor = TwColors.warmGray100;
      return _child;
  }
	T get warmGray200 {
      twColor = TwColors.warmGray200;
      return _child;
  }
	T get warmGray300 {
      twColor = TwColors.warmGray300;
      return _child;
  }
	T get warmGray400 {
      twColor = TwColors.warmGray400;
      return _child;
  }
	T get warmGray500 {
      twColor = TwColors.warmGray500;
      return _child;
  }
	T get warmGray600 {
      twColor = TwColors.warmGray600;
      return _child;
  }
	T get warmGray700 {
      twColor = TwColors.warmGray700;
      return _child;
  }
	T get warmGray800 {
      twColor = TwColors.warmGray800;
      return _child;
  }
	T get warmGray900 {
      twColor = TwColors.warmGray900;
      return _child;
  }
	T get red50 {
      twColor = TwColors.red50;
      return _child;
  }
	T get red100 {
      twColor = TwColors.red100;
      return _child;
  }
	T get red200 {
      twColor = TwColors.red200;
      return _child;
  }
	T get red300 {
      twColor = TwColors.red300;
      return _child;
  }
	T get red400 {
      twColor = TwColors.red400;
      return _child;
  }
	T get red500 {
      twColor = TwColors.red500;
      return _child;
  }
	T get red600 {
      twColor = TwColors.red600;
      return _child;
  }
	T get red700 {
      twColor = TwColors.red700;
      return _child;
  }
	T get red800 {
      twColor = TwColors.red800;
      return _child;
  }
	T get red900 {
      twColor = TwColors.red900;
      return _child;
  }
	T get orange50 {
      twColor = TwColors.orange50;
      return _child;
  }
	T get orange100 {
      twColor = TwColors.orange100;
      return _child;
  }
	T get orange200 {
      twColor = TwColors.orange200;
      return _child;
  }
	T get orange300 {
      twColor = TwColors.orange300;
      return _child;
  }
	T get orange400 {
      twColor = TwColors.orange400;
      return _child;
  }
	T get orange500 {
      twColor = TwColors.orange500;
      return _child;
  }
	T get orange600 {
      twColor = TwColors.orange600;
      return _child;
  }
	T get orange700 {
      twColor = TwColors.orange700;
      return _child;
  }
	T get orange800 {
      twColor = TwColors.orange800;
      return _child;
  }
	T get orange900 {
      twColor = TwColors.orange900;
      return _child;
  }
	T get amber50 {
      twColor = TwColors.amber50;
      return _child;
  }
	T get amber100 {
      twColor = TwColors.amber100;
      return _child;
  }
	T get amber200 {
      twColor = TwColors.amber200;
      return _child;
  }
	T get amber300 {
      twColor = TwColors.amber300;
      return _child;
  }
	T get amber400 {
      twColor = TwColors.amber400;
      return _child;
  }
	T get amber500 {
      twColor = TwColors.amber500;
      return _child;
  }
	T get amber600 {
      twColor = TwColors.amber600;
      return _child;
  }
	T get amber700 {
      twColor = TwColors.amber700;
      return _child;
  }
	T get amber800 {
      twColor = TwColors.amber800;
      return _child;
  }
	T get amber900 {
      twColor = TwColors.amber900;
      return _child;
  }
	T get yellow50 {
      twColor = TwColors.yellow50;
      return _child;
  }
	T get yellow100 {
      twColor = TwColors.yellow100;
      return _child;
  }
	T get yellow200 {
      twColor = TwColors.yellow200;
      return _child;
  }
	T get yellow300 {
      twColor = TwColors.yellow300;
      return _child;
  }
	T get yellow400 {
      twColor = TwColors.yellow400;
      return _child;
  }
	T get yellow500 {
      twColor = TwColors.yellow500;
      return _child;
  }
	T get yellow600 {
      twColor = TwColors.yellow600;
      return _child;
  }
	T get yellow700 {
      twColor = TwColors.yellow700;
      return _child;
  }
	T get yellow800 {
      twColor = TwColors.yellow800;
      return _child;
  }
	T get yellow900 {
      twColor = TwColors.yellow900;
      return _child;
  }
	T get lime50 {
      twColor = TwColors.lime50;
      return _child;
  }
	T get lime100 {
      twColor = TwColors.lime100;
      return _child;
  }
	T get lime200 {
      twColor = TwColors.lime200;
      return _child;
  }
	T get lime300 {
      twColor = TwColors.lime300;
      return _child;
  }
	T get lime400 {
      twColor = TwColors.lime400;
      return _child;
  }
	T get lime500 {
      twColor = TwColors.lime500;
      return _child;
  }
	T get lime600 {
      twColor = TwColors.lime600;
      return _child;
  }
	T get lime700 {
      twColor = TwColors.lime700;
      return _child;
  }
	T get lime800 {
      twColor = TwColors.lime800;
      return _child;
  }
	T get lime900 {
      twColor = TwColors.lime900;
      return _child;
  }
	T get green50 {
      twColor = TwColors.green50;
      return _child;
  }
	T get green100 {
      twColor = TwColors.green100;
      return _child;
  }
	T get green200 {
      twColor = TwColors.green200;
      return _child;
  }
	T get green300 {
      twColor = TwColors.green300;
      return _child;
  }
	T get green400 {
      twColor = TwColors.green400;
      return _child;
  }
	T get green500 {
      twColor = TwColors.green500;
      return _child;
  }
	T get green600 {
      twColor = TwColors.green600;
      return _child;
  }
	T get green700 {
      twColor = TwColors.green700;
      return _child;
  }
	T get green800 {
      twColor = TwColors.green800;
      return _child;
  }
	T get green900 {
      twColor = TwColors.green900;
      return _child;
  }
	T get emerald50 {
      twColor = TwColors.emerald50;
      return _child;
  }
	T get emerald100 {
      twColor = TwColors.emerald100;
      return _child;
  }
	T get emerald200 {
      twColor = TwColors.emerald200;
      return _child;
  }
	T get emerald300 {
      twColor = TwColors.emerald300;
      return _child;
  }
	T get emerald400 {
      twColor = TwColors.emerald400;
      return _child;
  }
	T get emerald500 {
      twColor = TwColors.emerald500;
      return _child;
  }
	T get emerald600 {
      twColor = TwColors.emerald600;
      return _child;
  }
	T get emerald700 {
      twColor = TwColors.emerald700;
      return _child;
  }
	T get emerald800 {
      twColor = TwColors.emerald800;
      return _child;
  }
	T get emerald900 {
      twColor = TwColors.emerald900;
      return _child;
  }
	T get teal50 {
      twColor = TwColors.teal50;
      return _child;
  }
	T get teal100 {
      twColor = TwColors.teal100;
      return _child;
  }
	T get teal200 {
      twColor = TwColors.teal200;
      return _child;
  }
	T get teal300 {
      twColor = TwColors.teal300;
      return _child;
  }
	T get teal400 {
      twColor = TwColors.teal400;
      return _child;
  }
	T get teal500 {
      twColor = TwColors.teal500;
      return _child;
  }
	T get teal600 {
      twColor = TwColors.teal600;
      return _child;
  }
	T get teal700 {
      twColor = TwColors.teal700;
      return _child;
  }
	T get teal800 {
      twColor = TwColors.teal800;
      return _child;
  }
	T get teal900 {
      twColor = TwColors.teal900;
      return _child;
  }
	T get cyan50 {
      twColor = TwColors.cyan50;
      return _child;
  }
	T get cyan100 {
      twColor = TwColors.cyan100;
      return _child;
  }
	T get cyan200 {
      twColor = TwColors.cyan200;
      return _child;
  }
	T get cyan300 {
      twColor = TwColors.cyan300;
      return _child;
  }
	T get cyan400 {
      twColor = TwColors.cyan400;
      return _child;
  }
	T get cyan500 {
      twColor = TwColors.cyan500;
      return _child;
  }
	T get cyan600 {
      twColor = TwColors.cyan600;
      return _child;
  }
	T get cyan700 {
      twColor = TwColors.cyan700;
      return _child;
  }
	T get cyan800 {
      twColor = TwColors.cyan800;
      return _child;
  }
	T get cyan900 {
      twColor = TwColors.cyan900;
      return _child;
  }
	T get lightBlue50 {
      twColor = TwColors.lightBlue50;
      return _child;
  }
	T get lightBlue100 {
      twColor = TwColors.lightBlue100;
      return _child;
  }
	T get lightBlue200 {
      twColor = TwColors.lightBlue200;
      return _child;
  }
	T get lightBlue300 {
      twColor = TwColors.lightBlue300;
      return _child;
  }
	T get lightBlue400 {
      twColor = TwColors.lightBlue400;
      return _child;
  }
	T get lightBlue500 {
      twColor = TwColors.lightBlue500;
      return _child;
  }
	T get lightBlue600 {
      twColor = TwColors.lightBlue600;
      return _child;
  }
	T get lightBlue700 {
      twColor = TwColors.lightBlue700;
      return _child;
  }
	T get lightBlue800 {
      twColor = TwColors.lightBlue800;
      return _child;
  }
	T get lightBlue900 {
      twColor = TwColors.lightBlue900;
      return _child;
  }
	T get blue50 {
      twColor = TwColors.blue50;
      return _child;
  }
	T get blue100 {
      twColor = TwColors.blue100;
      return _child;
  }
	T get blue200 {
      twColor = TwColors.blue200;
      return _child;
  }
	T get blue300 {
      twColor = TwColors.blue300;
      return _child;
  }
	T get blue400 {
      twColor = TwColors.blue400;
      return _child;
  }
	T get blue500 {
      twColor = TwColors.blue500;
      return _child;
  }
	T get blue600 {
      twColor = TwColors.blue600;
      return _child;
  }
	T get blue700 {
      twColor = TwColors.blue700;
      return _child;
  }
	T get blue800 {
      twColor = TwColors.blue800;
      return _child;
  }
	T get blue900 {
      twColor = TwColors.blue900;
      return _child;
  }
	T get indigo50 {
      twColor = TwColors.indigo50;
      return _child;
  }
	T get indigo100 {
      twColor = TwColors.indigo100;
      return _child;
  }
	T get indigo200 {
      twColor = TwColors.indigo200;
      return _child;
  }
	T get indigo300 {
      twColor = TwColors.indigo300;
      return _child;
  }
	T get indigo400 {
      twColor = TwColors.indigo400;
      return _child;
  }
	T get indigo500 {
      twColor = TwColors.indigo500;
      return _child;
  }
	T get indigo600 {
      twColor = TwColors.indigo600;
      return _child;
  }
	T get indigo700 {
      twColor = TwColors.indigo700;
      return _child;
  }
	T get indigo800 {
      twColor = TwColors.indigo800;
      return _child;
  }
	T get indigo900 {
      twColor = TwColors.indigo900;
      return _child;
  }
	T get violet50 {
      twColor = TwColors.violet50;
      return _child;
  }
	T get violet100 {
      twColor = TwColors.violet100;
      return _child;
  }
	T get violet200 {
      twColor = TwColors.violet200;
      return _child;
  }
	T get violet300 {
      twColor = TwColors.violet300;
      return _child;
  }
	T get violet400 {
      twColor = TwColors.violet400;
      return _child;
  }
	T get violet500 {
      twColor = TwColors.violet500;
      return _child;
  }
	T get violet600 {
      twColor = TwColors.violet600;
      return _child;
  }
	T get violet700 {
      twColor = TwColors.violet700;
      return _child;
  }
	T get violet800 {
      twColor = TwColors.violet800;
      return _child;
  }
	T get violet900 {
      twColor = TwColors.violet900;
      return _child;
  }
	T get purple50 {
      twColor = TwColors.purple50;
      return _child;
  }
	T get purple100 {
      twColor = TwColors.purple100;
      return _child;
  }
	T get purple200 {
      twColor = TwColors.purple200;
      return _child;
  }
	T get purple300 {
      twColor = TwColors.purple300;
      return _child;
  }
	T get purple400 {
      twColor = TwColors.purple400;
      return _child;
  }
	T get purple500 {
      twColor = TwColors.purple500;
      return _child;
  }
	T get purple600 {
      twColor = TwColors.purple600;
      return _child;
  }
	T get purple700 {
      twColor = TwColors.purple700;
      return _child;
  }
	T get purple800 {
      twColor = TwColors.purple800;
      return _child;
  }
	T get purple900 {
      twColor = TwColors.purple900;
      return _child;
  }
	T get fuchsia50 {
      twColor = TwColors.fuchsia50;
      return _child;
  }
	T get fuchsia100 {
      twColor = TwColors.fuchsia100;
      return _child;
  }
	T get fuchsia200 {
      twColor = TwColors.fuchsia200;
      return _child;
  }
	T get fuchsia300 {
      twColor = TwColors.fuchsia300;
      return _child;
  }
	T get fuchsia400 {
      twColor = TwColors.fuchsia400;
      return _child;
  }
	T get fuchsia500 {
      twColor = TwColors.fuchsia500;
      return _child;
  }
	T get fuchsia600 {
      twColor = TwColors.fuchsia600;
      return _child;
  }
	T get fuchsia700 {
      twColor = TwColors.fuchsia700;
      return _child;
  }
	T get fuchsia800 {
      twColor = TwColors.fuchsia800;
      return _child;
  }
	T get fuchsia900 {
      twColor = TwColors.fuchsia900;
      return _child;
  }
	T get pink50 {
      twColor = TwColors.pink50;
      return _child;
  }
	T get pink100 {
      twColor = TwColors.pink100;
      return _child;
  }
	T get pink200 {
      twColor = TwColors.pink200;
      return _child;
  }
	T get pink300 {
      twColor = TwColors.pink300;
      return _child;
  }
	T get pink400 {
      twColor = TwColors.pink400;
      return _child;
  }
	T get pink500 {
      twColor = TwColors.pink500;
      return _child;
  }
	T get pink600 {
      twColor = TwColors.pink600;
      return _child;
  }
	T get pink700 {
      twColor = TwColors.pink700;
      return _child;
  }
	T get pink800 {
      twColor = TwColors.pink800;
      return _child;
  }
	T get pink900 {
      twColor = TwColors.pink900;
      return _child;
  }
	T get rose50 {
      twColor = TwColors.rose50;
      return _child;
  }
	T get rose100 {
      twColor = TwColors.rose100;
      return _child;
  }
	T get rose200 {
      twColor = TwColors.rose200;
      return _child;
  }
	T get rose300 {
      twColor = TwColors.rose300;
      return _child;
  }
	T get rose400 {
      twColor = TwColors.rose400;
      return _child;
  }
	T get rose500 {
      twColor = TwColors.rose500;
      return _child;
  }
	T get rose600 {
      twColor = TwColors.rose600;
      return _child;
  }
	T get rose700 {
      twColor = TwColors.rose700;
      return _child;
  }
	T get rose800 {
      twColor = TwColors.rose800;
      return _child;
  }
	T get rose900 {
      twColor = TwColors.rose900;
      return _child;
  }
	T get primary {
      twColor = TwColors.primary;
      return _child;
  }
	
}

