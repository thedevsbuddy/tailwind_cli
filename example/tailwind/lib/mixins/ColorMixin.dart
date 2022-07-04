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

  T get accentColor {
    twColor = Theme.of(Get.context!).accentColor;
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

  T get buttonColor {
    twColor = Theme.of(Get.context!).buttonColor;
    return _child;
  }

  T get cardColor {
    twColor = Theme.of(Get.context!).cardColor;
    return _child;
  }
 
  T get black {
      twColor = Tw.black;
      return _child;
  }
	T get white {
      twColor = Tw.white;
      return _child;
  }
	T get transparent {
      twColor = Tw.transparent;
      return _child;
  }
	T get gray50 {
      twColor = Tw.gray50;
      return _child;
  }
	T get gray100 {
      twColor = Tw.gray100;
      return _child;
  }
	T get gray200 {
      twColor = Tw.gray200;
      return _child;
  }
	T get gray300 {
      twColor = Tw.gray300;
      return _child;
  }
	T get gray400 {
      twColor = Tw.gray400;
      return _child;
  }
	T get gray500 {
      twColor = Tw.gray500;
      return _child;
  }
	T get gray600 {
      twColor = Tw.gray600;
      return _child;
  }
	T get gray700 {
      twColor = Tw.gray700;
      return _child;
  }
	T get gray800 {
      twColor = Tw.gray800;
      return _child;
  }
	T get gray900 {
      twColor = Tw.gray900;
      return _child;
  }
	T get blueGray50 {
      twColor = Tw.blueGray50;
      return _child;
  }
	T get blueGray100 {
      twColor = Tw.blueGray100;
      return _child;
  }
	T get blueGray200 {
      twColor = Tw.blueGray200;
      return _child;
  }
	T get blueGray300 {
      twColor = Tw.blueGray300;
      return _child;
  }
	T get blueGray400 {
      twColor = Tw.blueGray400;
      return _child;
  }
	T get blueGray500 {
      twColor = Tw.blueGray500;
      return _child;
  }
	T get blueGray600 {
      twColor = Tw.blueGray600;
      return _child;
  }
	T get blueGray700 {
      twColor = Tw.blueGray700;
      return _child;
  }
	T get blueGray800 {
      twColor = Tw.blueGray800;
      return _child;
  }
	T get blueGray900 {
      twColor = Tw.blueGray900;
      return _child;
  }
	T get coolGray50 {
      twColor = Tw.coolGray50;
      return _child;
  }
	T get coolGray100 {
      twColor = Tw.coolGray100;
      return _child;
  }
	T get coolGray200 {
      twColor = Tw.coolGray200;
      return _child;
  }
	T get coolGray300 {
      twColor = Tw.coolGray300;
      return _child;
  }
	T get coolGray400 {
      twColor = Tw.coolGray400;
      return _child;
  }
	T get coolGray500 {
      twColor = Tw.coolGray500;
      return _child;
  }
	T get coolGray600 {
      twColor = Tw.coolGray600;
      return _child;
  }
	T get coolGray700 {
      twColor = Tw.coolGray700;
      return _child;
  }
	T get coolGray800 {
      twColor = Tw.coolGray800;
      return _child;
  }
	T get coolGray900 {
      twColor = Tw.coolGray900;
      return _child;
  }
	T get trueGray50 {
      twColor = Tw.trueGray50;
      return _child;
  }
	T get trueGray100 {
      twColor = Tw.trueGray100;
      return _child;
  }
	T get trueGray200 {
      twColor = Tw.trueGray200;
      return _child;
  }
	T get trueGray300 {
      twColor = Tw.trueGray300;
      return _child;
  }
	T get trueGray400 {
      twColor = Tw.trueGray400;
      return _child;
  }
	T get trueGray500 {
      twColor = Tw.trueGray500;
      return _child;
  }
	T get trueGray600 {
      twColor = Tw.trueGray600;
      return _child;
  }
	T get trueGray700 {
      twColor = Tw.trueGray700;
      return _child;
  }
	T get trueGray800 {
      twColor = Tw.trueGray800;
      return _child;
  }
	T get trueGray900 {
      twColor = Tw.trueGray900;
      return _child;
  }
	T get warmGray50 {
      twColor = Tw.warmGray50;
      return _child;
  }
	T get warmGray100 {
      twColor = Tw.warmGray100;
      return _child;
  }
	T get warmGray200 {
      twColor = Tw.warmGray200;
      return _child;
  }
	T get warmGray300 {
      twColor = Tw.warmGray300;
      return _child;
  }
	T get warmGray400 {
      twColor = Tw.warmGray400;
      return _child;
  }
	T get warmGray500 {
      twColor = Tw.warmGray500;
      return _child;
  }
	T get warmGray600 {
      twColor = Tw.warmGray600;
      return _child;
  }
	T get warmGray700 {
      twColor = Tw.warmGray700;
      return _child;
  }
	T get warmGray800 {
      twColor = Tw.warmGray800;
      return _child;
  }
	T get warmGray900 {
      twColor = Tw.warmGray900;
      return _child;
  }
	T get red50 {
      twColor = Tw.red50;
      return _child;
  }
	T get red100 {
      twColor = Tw.red100;
      return _child;
  }
	T get red200 {
      twColor = Tw.red200;
      return _child;
  }
	T get red300 {
      twColor = Tw.red300;
      return _child;
  }
	T get red400 {
      twColor = Tw.red400;
      return _child;
  }
	T get red500 {
      twColor = Tw.red500;
      return _child;
  }
	T get red600 {
      twColor = Tw.red600;
      return _child;
  }
	T get red700 {
      twColor = Tw.red700;
      return _child;
  }
	T get red800 {
      twColor = Tw.red800;
      return _child;
  }
	T get red900 {
      twColor = Tw.red900;
      return _child;
  }
	T get orange50 {
      twColor = Tw.orange50;
      return _child;
  }
	T get orange100 {
      twColor = Tw.orange100;
      return _child;
  }
	T get orange200 {
      twColor = Tw.orange200;
      return _child;
  }
	T get orange300 {
      twColor = Tw.orange300;
      return _child;
  }
	T get orange400 {
      twColor = Tw.orange400;
      return _child;
  }
	T get orange500 {
      twColor = Tw.orange500;
      return _child;
  }
	T get orange600 {
      twColor = Tw.orange600;
      return _child;
  }
	T get orange700 {
      twColor = Tw.orange700;
      return _child;
  }
	T get orange800 {
      twColor = Tw.orange800;
      return _child;
  }
	T get orange900 {
      twColor = Tw.orange900;
      return _child;
  }
	T get amber50 {
      twColor = Tw.amber50;
      return _child;
  }
	T get amber100 {
      twColor = Tw.amber100;
      return _child;
  }
	T get amber200 {
      twColor = Tw.amber200;
      return _child;
  }
	T get amber300 {
      twColor = Tw.amber300;
      return _child;
  }
	T get amber400 {
      twColor = Tw.amber400;
      return _child;
  }
	T get amber500 {
      twColor = Tw.amber500;
      return _child;
  }
	T get amber600 {
      twColor = Tw.amber600;
      return _child;
  }
	T get amber700 {
      twColor = Tw.amber700;
      return _child;
  }
	T get amber800 {
      twColor = Tw.amber800;
      return _child;
  }
	T get amber900 {
      twColor = Tw.amber900;
      return _child;
  }
	T get yellow50 {
      twColor = Tw.yellow50;
      return _child;
  }
	T get yellow100 {
      twColor = Tw.yellow100;
      return _child;
  }
	T get yellow200 {
      twColor = Tw.yellow200;
      return _child;
  }
	T get yellow300 {
      twColor = Tw.yellow300;
      return _child;
  }
	T get yellow400 {
      twColor = Tw.yellow400;
      return _child;
  }
	T get yellow500 {
      twColor = Tw.yellow500;
      return _child;
  }
	T get yellow600 {
      twColor = Tw.yellow600;
      return _child;
  }
	T get yellow700 {
      twColor = Tw.yellow700;
      return _child;
  }
	T get yellow800 {
      twColor = Tw.yellow800;
      return _child;
  }
	T get yellow900 {
      twColor = Tw.yellow900;
      return _child;
  }
	T get lime50 {
      twColor = Tw.lime50;
      return _child;
  }
	T get lime100 {
      twColor = Tw.lime100;
      return _child;
  }
	T get lime200 {
      twColor = Tw.lime200;
      return _child;
  }
	T get lime300 {
      twColor = Tw.lime300;
      return _child;
  }
	T get lime400 {
      twColor = Tw.lime400;
      return _child;
  }
	T get lime500 {
      twColor = Tw.lime500;
      return _child;
  }
	T get lime600 {
      twColor = Tw.lime600;
      return _child;
  }
	T get lime700 {
      twColor = Tw.lime700;
      return _child;
  }
	T get lime800 {
      twColor = Tw.lime800;
      return _child;
  }
	T get lime900 {
      twColor = Tw.lime900;
      return _child;
  }
	T get green50 {
      twColor = Tw.green50;
      return _child;
  }
	T get green100 {
      twColor = Tw.green100;
      return _child;
  }
	T get green200 {
      twColor = Tw.green200;
      return _child;
  }
	T get green300 {
      twColor = Tw.green300;
      return _child;
  }
	T get green400 {
      twColor = Tw.green400;
      return _child;
  }
	T get green500 {
      twColor = Tw.green500;
      return _child;
  }
	T get green600 {
      twColor = Tw.green600;
      return _child;
  }
	T get green700 {
      twColor = Tw.green700;
      return _child;
  }
	T get green800 {
      twColor = Tw.green800;
      return _child;
  }
	T get green900 {
      twColor = Tw.green900;
      return _child;
  }
	T get emerald50 {
      twColor = Tw.emerald50;
      return _child;
  }
	T get emerald100 {
      twColor = Tw.emerald100;
      return _child;
  }
	T get emerald200 {
      twColor = Tw.emerald200;
      return _child;
  }
	T get emerald300 {
      twColor = Tw.emerald300;
      return _child;
  }
	T get emerald400 {
      twColor = Tw.emerald400;
      return _child;
  }
	T get emerald500 {
      twColor = Tw.emerald500;
      return _child;
  }
	T get emerald600 {
      twColor = Tw.emerald600;
      return _child;
  }
	T get emerald700 {
      twColor = Tw.emerald700;
      return _child;
  }
	T get emerald800 {
      twColor = Tw.emerald800;
      return _child;
  }
	T get emerald900 {
      twColor = Tw.emerald900;
      return _child;
  }
	T get teal50 {
      twColor = Tw.teal50;
      return _child;
  }
	T get teal100 {
      twColor = Tw.teal100;
      return _child;
  }
	T get teal200 {
      twColor = Tw.teal200;
      return _child;
  }
	T get teal300 {
      twColor = Tw.teal300;
      return _child;
  }
	T get teal400 {
      twColor = Tw.teal400;
      return _child;
  }
	T get teal500 {
      twColor = Tw.teal500;
      return _child;
  }
	T get teal600 {
      twColor = Tw.teal600;
      return _child;
  }
	T get teal700 {
      twColor = Tw.teal700;
      return _child;
  }
	T get teal800 {
      twColor = Tw.teal800;
      return _child;
  }
	T get teal900 {
      twColor = Tw.teal900;
      return _child;
  }
	T get cyan50 {
      twColor = Tw.cyan50;
      return _child;
  }
	T get cyan100 {
      twColor = Tw.cyan100;
      return _child;
  }
	T get cyan200 {
      twColor = Tw.cyan200;
      return _child;
  }
	T get cyan300 {
      twColor = Tw.cyan300;
      return _child;
  }
	T get cyan400 {
      twColor = Tw.cyan400;
      return _child;
  }
	T get cyan500 {
      twColor = Tw.cyan500;
      return _child;
  }
	T get cyan600 {
      twColor = Tw.cyan600;
      return _child;
  }
	T get cyan700 {
      twColor = Tw.cyan700;
      return _child;
  }
	T get cyan800 {
      twColor = Tw.cyan800;
      return _child;
  }
	T get cyan900 {
      twColor = Tw.cyan900;
      return _child;
  }
	T get lightBlue50 {
      twColor = Tw.lightBlue50;
      return _child;
  }
	T get lightBlue100 {
      twColor = Tw.lightBlue100;
      return _child;
  }
	T get lightBlue200 {
      twColor = Tw.lightBlue200;
      return _child;
  }
	T get lightBlue300 {
      twColor = Tw.lightBlue300;
      return _child;
  }
	T get lightBlue400 {
      twColor = Tw.lightBlue400;
      return _child;
  }
	T get lightBlue500 {
      twColor = Tw.lightBlue500;
      return _child;
  }
	T get lightBlue600 {
      twColor = Tw.lightBlue600;
      return _child;
  }
	T get lightBlue700 {
      twColor = Tw.lightBlue700;
      return _child;
  }
	T get lightBlue800 {
      twColor = Tw.lightBlue800;
      return _child;
  }
	T get lightBlue900 {
      twColor = Tw.lightBlue900;
      return _child;
  }
	T get blue50 {
      twColor = Tw.blue50;
      return _child;
  }
	T get blue100 {
      twColor = Tw.blue100;
      return _child;
  }
	T get blue200 {
      twColor = Tw.blue200;
      return _child;
  }
	T get blue300 {
      twColor = Tw.blue300;
      return _child;
  }
	T get blue400 {
      twColor = Tw.blue400;
      return _child;
  }
	T get blue500 {
      twColor = Tw.blue500;
      return _child;
  }
	T get blue600 {
      twColor = Tw.blue600;
      return _child;
  }
	T get blue700 {
      twColor = Tw.blue700;
      return _child;
  }
	T get blue800 {
      twColor = Tw.blue800;
      return _child;
  }
	T get blue900 {
      twColor = Tw.blue900;
      return _child;
  }
	T get indigo50 {
      twColor = Tw.indigo50;
      return _child;
  }
	T get indigo100 {
      twColor = Tw.indigo100;
      return _child;
  }
	T get indigo200 {
      twColor = Tw.indigo200;
      return _child;
  }
	T get indigo300 {
      twColor = Tw.indigo300;
      return _child;
  }
	T get indigo400 {
      twColor = Tw.indigo400;
      return _child;
  }
	T get indigo500 {
      twColor = Tw.indigo500;
      return _child;
  }
	T get indigo600 {
      twColor = Tw.indigo600;
      return _child;
  }
	T get indigo700 {
      twColor = Tw.indigo700;
      return _child;
  }
	T get indigo800 {
      twColor = Tw.indigo800;
      return _child;
  }
	T get indigo900 {
      twColor = Tw.indigo900;
      return _child;
  }
	T get violet50 {
      twColor = Tw.violet50;
      return _child;
  }
	T get violet100 {
      twColor = Tw.violet100;
      return _child;
  }
	T get violet200 {
      twColor = Tw.violet200;
      return _child;
  }
	T get violet300 {
      twColor = Tw.violet300;
      return _child;
  }
	T get violet400 {
      twColor = Tw.violet400;
      return _child;
  }
	T get violet500 {
      twColor = Tw.violet500;
      return _child;
  }
	T get violet600 {
      twColor = Tw.violet600;
      return _child;
  }
	T get violet700 {
      twColor = Tw.violet700;
      return _child;
  }
	T get violet800 {
      twColor = Tw.violet800;
      return _child;
  }
	T get violet900 {
      twColor = Tw.violet900;
      return _child;
  }
	T get purple50 {
      twColor = Tw.purple50;
      return _child;
  }
	T get purple100 {
      twColor = Tw.purple100;
      return _child;
  }
	T get purple200 {
      twColor = Tw.purple200;
      return _child;
  }
	T get purple300 {
      twColor = Tw.purple300;
      return _child;
  }
	T get purple400 {
      twColor = Tw.purple400;
      return _child;
  }
	T get purple500 {
      twColor = Tw.purple500;
      return _child;
  }
	T get purple600 {
      twColor = Tw.purple600;
      return _child;
  }
	T get purple700 {
      twColor = Tw.purple700;
      return _child;
  }
	T get purple800 {
      twColor = Tw.purple800;
      return _child;
  }
	T get purple900 {
      twColor = Tw.purple900;
      return _child;
  }
	T get fuchsia50 {
      twColor = Tw.fuchsia50;
      return _child;
  }
	T get fuchsia100 {
      twColor = Tw.fuchsia100;
      return _child;
  }
	T get fuchsia200 {
      twColor = Tw.fuchsia200;
      return _child;
  }
	T get fuchsia300 {
      twColor = Tw.fuchsia300;
      return _child;
  }
	T get fuchsia400 {
      twColor = Tw.fuchsia400;
      return _child;
  }
	T get fuchsia500 {
      twColor = Tw.fuchsia500;
      return _child;
  }
	T get fuchsia600 {
      twColor = Tw.fuchsia600;
      return _child;
  }
	T get fuchsia700 {
      twColor = Tw.fuchsia700;
      return _child;
  }
	T get fuchsia800 {
      twColor = Tw.fuchsia800;
      return _child;
  }
	T get fuchsia900 {
      twColor = Tw.fuchsia900;
      return _child;
  }
	T get pink50 {
      twColor = Tw.pink50;
      return _child;
  }
	T get pink100 {
      twColor = Tw.pink100;
      return _child;
  }
	T get pink200 {
      twColor = Tw.pink200;
      return _child;
  }
	T get pink300 {
      twColor = Tw.pink300;
      return _child;
  }
	T get pink400 {
      twColor = Tw.pink400;
      return _child;
  }
	T get pink500 {
      twColor = Tw.pink500;
      return _child;
  }
	T get pink600 {
      twColor = Tw.pink600;
      return _child;
  }
	T get pink700 {
      twColor = Tw.pink700;
      return _child;
  }
	T get pink800 {
      twColor = Tw.pink800;
      return _child;
  }
	T get pink900 {
      twColor = Tw.pink900;
      return _child;
  }
	T get rose50 {
      twColor = Tw.rose50;
      return _child;
  }
	T get rose100 {
      twColor = Tw.rose100;
      return _child;
  }
	T get rose200 {
      twColor = Tw.rose200;
      return _child;
  }
	T get rose300 {
      twColor = Tw.rose300;
      return _child;
  }
	T get rose400 {
      twColor = Tw.rose400;
      return _child;
  }
	T get rose500 {
      twColor = Tw.rose500;
      return _child;
  }
	T get rose600 {
      twColor = Tw.rose600;
      return _child;
  }
	T get rose700 {
      twColor = Tw.rose700;
      return _child;
  }
	T get rose800 {
      twColor = Tw.rose800;
      return _child;
  }
	T get rose900 {
      twColor = Tw.rose900;
      return _child;
  }
	T get primary {
      twColor = Tw.primary;
      return _child;
  }
	
}

