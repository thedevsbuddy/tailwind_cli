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
 
  T get black {
      twColor = twBlack;
      return _child;
  }
	T get white {
      twColor = twWhite;
      return _child;
  }
	T get transparent {
      twColor = twTransparent;
      return _child;
  }
	T get gray50 {
      twColor = twGray50;
      return _child;
  }
	T get gray100 {
      twColor = twGray100;
      return _child;
  }
	T get gray200 {
      twColor = twGray200;
      return _child;
  }
	T get gray300 {
      twColor = twGray300;
      return _child;
  }
	T get gray400 {
      twColor = twGray400;
      return _child;
  }
	T get gray500 {
      twColor = twGray500;
      return _child;
  }
	T get gray600 {
      twColor = twGray600;
      return _child;
  }
	T get gray700 {
      twColor = twGray700;
      return _child;
  }
	T get gray800 {
      twColor = twGray800;
      return _child;
  }
	T get gray900 {
      twColor = twGray900;
      return _child;
  }
	T get blueGray50 {
      twColor = twBlueGray50;
      return _child;
  }
	T get blueGray100 {
      twColor = twBlueGray100;
      return _child;
  }
	T get blueGray200 {
      twColor = twBlueGray200;
      return _child;
  }
	T get blueGray300 {
      twColor = twBlueGray300;
      return _child;
  }
	T get blueGray400 {
      twColor = twBlueGray400;
      return _child;
  }
	T get blueGray500 {
      twColor = twBlueGray500;
      return _child;
  }
	T get blueGray600 {
      twColor = twBlueGray600;
      return _child;
  }
	T get blueGray700 {
      twColor = twBlueGray700;
      return _child;
  }
	T get blueGray800 {
      twColor = twBlueGray800;
      return _child;
  }
	T get blueGray900 {
      twColor = twBlueGray900;
      return _child;
  }
	T get coolGray50 {
      twColor = twCoolGray50;
      return _child;
  }
	T get coolGray100 {
      twColor = twCoolGray100;
      return _child;
  }
	T get coolGray200 {
      twColor = twCoolGray200;
      return _child;
  }
	T get coolGray300 {
      twColor = twCoolGray300;
      return _child;
  }
	T get coolGray400 {
      twColor = twCoolGray400;
      return _child;
  }
	T get coolGray500 {
      twColor = twCoolGray500;
      return _child;
  }
	T get coolGray600 {
      twColor = twCoolGray600;
      return _child;
  }
	T get coolGray700 {
      twColor = twCoolGray700;
      return _child;
  }
	T get coolGray800 {
      twColor = twCoolGray800;
      return _child;
  }
	T get coolGray900 {
      twColor = twCoolGray900;
      return _child;
  }
	T get trueGray50 {
      twColor = twTrueGray50;
      return _child;
  }
	T get trueGray100 {
      twColor = twTrueGray100;
      return _child;
  }
	T get trueGray200 {
      twColor = twTrueGray200;
      return _child;
  }
	T get trueGray300 {
      twColor = twTrueGray300;
      return _child;
  }
	T get trueGray400 {
      twColor = twTrueGray400;
      return _child;
  }
	T get trueGray500 {
      twColor = twTrueGray500;
      return _child;
  }
	T get trueGray600 {
      twColor = twTrueGray600;
      return _child;
  }
	T get trueGray700 {
      twColor = twTrueGray700;
      return _child;
  }
	T get trueGray800 {
      twColor = twTrueGray800;
      return _child;
  }
	T get trueGray900 {
      twColor = twTrueGray900;
      return _child;
  }
	T get warmGray50 {
      twColor = twWarmGray50;
      return _child;
  }
	T get warmGray100 {
      twColor = twWarmGray100;
      return _child;
  }
	T get warmGray200 {
      twColor = twWarmGray200;
      return _child;
  }
	T get warmGray300 {
      twColor = twWarmGray300;
      return _child;
  }
	T get warmGray400 {
      twColor = twWarmGray400;
      return _child;
  }
	T get warmGray500 {
      twColor = twWarmGray500;
      return _child;
  }
	T get warmGray600 {
      twColor = twWarmGray600;
      return _child;
  }
	T get warmGray700 {
      twColor = twWarmGray700;
      return _child;
  }
	T get warmGray800 {
      twColor = twWarmGray800;
      return _child;
  }
	T get warmGray900 {
      twColor = twWarmGray900;
      return _child;
  }
	T get red50 {
      twColor = twRed50;
      return _child;
  }
	T get red100 {
      twColor = twRed100;
      return _child;
  }
	T get red200 {
      twColor = twRed200;
      return _child;
  }
	T get red300 {
      twColor = twRed300;
      return _child;
  }
	T get red400 {
      twColor = twRed400;
      return _child;
  }
	T get red500 {
      twColor = twRed500;
      return _child;
  }
	T get red600 {
      twColor = twRed600;
      return _child;
  }
	T get red700 {
      twColor = twRed700;
      return _child;
  }
	T get red800 {
      twColor = twRed800;
      return _child;
  }
	T get red900 {
      twColor = twRed900;
      return _child;
  }
	T get orange50 {
      twColor = twOrange50;
      return _child;
  }
	T get orange100 {
      twColor = twOrange100;
      return _child;
  }
	T get orange200 {
      twColor = twOrange200;
      return _child;
  }
	T get orange300 {
      twColor = twOrange300;
      return _child;
  }
	T get orange400 {
      twColor = twOrange400;
      return _child;
  }
	T get orange500 {
      twColor = twOrange500;
      return _child;
  }
	T get orange600 {
      twColor = twOrange600;
      return _child;
  }
	T get orange700 {
      twColor = twOrange700;
      return _child;
  }
	T get orange800 {
      twColor = twOrange800;
      return _child;
  }
	T get orange900 {
      twColor = twOrange900;
      return _child;
  }
	T get amber50 {
      twColor = twAmber50;
      return _child;
  }
	T get amber100 {
      twColor = twAmber100;
      return _child;
  }
	T get amber200 {
      twColor = twAmber200;
      return _child;
  }
	T get amber300 {
      twColor = twAmber300;
      return _child;
  }
	T get amber400 {
      twColor = twAmber400;
      return _child;
  }
	T get amber500 {
      twColor = twAmber500;
      return _child;
  }
	T get amber600 {
      twColor = twAmber600;
      return _child;
  }
	T get amber700 {
      twColor = twAmber700;
      return _child;
  }
	T get amber800 {
      twColor = twAmber800;
      return _child;
  }
	T get amber900 {
      twColor = twAmber900;
      return _child;
  }
	T get yellow50 {
      twColor = twYellow50;
      return _child;
  }
	T get yellow100 {
      twColor = twYellow100;
      return _child;
  }
	T get yellow200 {
      twColor = twYellow200;
      return _child;
  }
	T get yellow300 {
      twColor = twYellow300;
      return _child;
  }
	T get yellow400 {
      twColor = twYellow400;
      return _child;
  }
	T get yellow500 {
      twColor = twYellow500;
      return _child;
  }
	T get yellow600 {
      twColor = twYellow600;
      return _child;
  }
	T get yellow700 {
      twColor = twYellow700;
      return _child;
  }
	T get yellow800 {
      twColor = twYellow800;
      return _child;
  }
	T get yellow900 {
      twColor = twYellow900;
      return _child;
  }
	T get lime50 {
      twColor = twLime50;
      return _child;
  }
	T get lime100 {
      twColor = twLime100;
      return _child;
  }
	T get lime200 {
      twColor = twLime200;
      return _child;
  }
	T get lime300 {
      twColor = twLime300;
      return _child;
  }
	T get lime400 {
      twColor = twLime400;
      return _child;
  }
	T get lime500 {
      twColor = twLime500;
      return _child;
  }
	T get lime600 {
      twColor = twLime600;
      return _child;
  }
	T get lime700 {
      twColor = twLime700;
      return _child;
  }
	T get lime800 {
      twColor = twLime800;
      return _child;
  }
	T get lime900 {
      twColor = twLime900;
      return _child;
  }
	T get green50 {
      twColor = twGreen50;
      return _child;
  }
	T get green100 {
      twColor = twGreen100;
      return _child;
  }
	T get green200 {
      twColor = twGreen200;
      return _child;
  }
	T get green300 {
      twColor = twGreen300;
      return _child;
  }
	T get green400 {
      twColor = twGreen400;
      return _child;
  }
	T get green500 {
      twColor = twGreen500;
      return _child;
  }
	T get green600 {
      twColor = twGreen600;
      return _child;
  }
	T get green700 {
      twColor = twGreen700;
      return _child;
  }
	T get green800 {
      twColor = twGreen800;
      return _child;
  }
	T get green900 {
      twColor = twGreen900;
      return _child;
  }
	T get emerald50 {
      twColor = twEmerald50;
      return _child;
  }
	T get emerald100 {
      twColor = twEmerald100;
      return _child;
  }
	T get emerald200 {
      twColor = twEmerald200;
      return _child;
  }
	T get emerald300 {
      twColor = twEmerald300;
      return _child;
  }
	T get emerald400 {
      twColor = twEmerald400;
      return _child;
  }
	T get emerald500 {
      twColor = twEmerald500;
      return _child;
  }
	T get emerald600 {
      twColor = twEmerald600;
      return _child;
  }
	T get emerald700 {
      twColor = twEmerald700;
      return _child;
  }
	T get emerald800 {
      twColor = twEmerald800;
      return _child;
  }
	T get emerald900 {
      twColor = twEmerald900;
      return _child;
  }
	T get teal50 {
      twColor = twTeal50;
      return _child;
  }
	T get teal100 {
      twColor = twTeal100;
      return _child;
  }
	T get teal200 {
      twColor = twTeal200;
      return _child;
  }
	T get teal300 {
      twColor = twTeal300;
      return _child;
  }
	T get teal400 {
      twColor = twTeal400;
      return _child;
  }
	T get teal500 {
      twColor = twTeal500;
      return _child;
  }
	T get teal600 {
      twColor = twTeal600;
      return _child;
  }
	T get teal700 {
      twColor = twTeal700;
      return _child;
  }
	T get teal800 {
      twColor = twTeal800;
      return _child;
  }
	T get teal900 {
      twColor = twTeal900;
      return _child;
  }
	T get cyan50 {
      twColor = twCyan50;
      return _child;
  }
	T get cyan100 {
      twColor = twCyan100;
      return _child;
  }
	T get cyan200 {
      twColor = twCyan200;
      return _child;
  }
	T get cyan300 {
      twColor = twCyan300;
      return _child;
  }
	T get cyan400 {
      twColor = twCyan400;
      return _child;
  }
	T get cyan500 {
      twColor = twCyan500;
      return _child;
  }
	T get cyan600 {
      twColor = twCyan600;
      return _child;
  }
	T get cyan700 {
      twColor = twCyan700;
      return _child;
  }
	T get cyan800 {
      twColor = twCyan800;
      return _child;
  }
	T get cyan900 {
      twColor = twCyan900;
      return _child;
  }
	T get lightBlue50 {
      twColor = twLightBlue50;
      return _child;
  }
	T get lightBlue100 {
      twColor = twLightBlue100;
      return _child;
  }
	T get lightBlue200 {
      twColor = twLightBlue200;
      return _child;
  }
	T get lightBlue300 {
      twColor = twLightBlue300;
      return _child;
  }
	T get lightBlue400 {
      twColor = twLightBlue400;
      return _child;
  }
	T get lightBlue500 {
      twColor = twLightBlue500;
      return _child;
  }
	T get lightBlue600 {
      twColor = twLightBlue600;
      return _child;
  }
	T get lightBlue700 {
      twColor = twLightBlue700;
      return _child;
  }
	T get lightBlue800 {
      twColor = twLightBlue800;
      return _child;
  }
	T get lightBlue900 {
      twColor = twLightBlue900;
      return _child;
  }
	T get blue50 {
      twColor = twBlue50;
      return _child;
  }
	T get blue100 {
      twColor = twBlue100;
      return _child;
  }
	T get blue200 {
      twColor = twBlue200;
      return _child;
  }
	T get blue300 {
      twColor = twBlue300;
      return _child;
  }
	T get blue400 {
      twColor = twBlue400;
      return _child;
  }
	T get blue500 {
      twColor = twBlue500;
      return _child;
  }
	T get blue600 {
      twColor = twBlue600;
      return _child;
  }
	T get blue700 {
      twColor = twBlue700;
      return _child;
  }
	T get blue800 {
      twColor = twBlue800;
      return _child;
  }
	T get blue900 {
      twColor = twBlue900;
      return _child;
  }
	T get indigo50 {
      twColor = twIndigo50;
      return _child;
  }
	T get indigo100 {
      twColor = twIndigo100;
      return _child;
  }
	T get indigo200 {
      twColor = twIndigo200;
      return _child;
  }
	T get indigo300 {
      twColor = twIndigo300;
      return _child;
  }
	T get indigo400 {
      twColor = twIndigo400;
      return _child;
  }
	T get indigo500 {
      twColor = twIndigo500;
      return _child;
  }
	T get indigo600 {
      twColor = twIndigo600;
      return _child;
  }
	T get indigo700 {
      twColor = twIndigo700;
      return _child;
  }
	T get indigo800 {
      twColor = twIndigo800;
      return _child;
  }
	T get indigo900 {
      twColor = twIndigo900;
      return _child;
  }
	T get violet50 {
      twColor = twViolet50;
      return _child;
  }
	T get violet100 {
      twColor = twViolet100;
      return _child;
  }
	T get violet200 {
      twColor = twViolet200;
      return _child;
  }
	T get violet300 {
      twColor = twViolet300;
      return _child;
  }
	T get violet400 {
      twColor = twViolet400;
      return _child;
  }
	T get violet500 {
      twColor = twViolet500;
      return _child;
  }
	T get violet600 {
      twColor = twViolet600;
      return _child;
  }
	T get violet700 {
      twColor = twViolet700;
      return _child;
  }
	T get violet800 {
      twColor = twViolet800;
      return _child;
  }
	T get violet900 {
      twColor = twViolet900;
      return _child;
  }
	T get purple50 {
      twColor = twPurple50;
      return _child;
  }
	T get purple100 {
      twColor = twPurple100;
      return _child;
  }
	T get purple200 {
      twColor = twPurple200;
      return _child;
  }
	T get purple300 {
      twColor = twPurple300;
      return _child;
  }
	T get purple400 {
      twColor = twPurple400;
      return _child;
  }
	T get purple500 {
      twColor = twPurple500;
      return _child;
  }
	T get purple600 {
      twColor = twPurple600;
      return _child;
  }
	T get purple700 {
      twColor = twPurple700;
      return _child;
  }
	T get purple800 {
      twColor = twPurple800;
      return _child;
  }
	T get purple900 {
      twColor = twPurple900;
      return _child;
  }
	T get fuchsia50 {
      twColor = twFuchsia50;
      return _child;
  }
	T get fuchsia100 {
      twColor = twFuchsia100;
      return _child;
  }
	T get fuchsia200 {
      twColor = twFuchsia200;
      return _child;
  }
	T get fuchsia300 {
      twColor = twFuchsia300;
      return _child;
  }
	T get fuchsia400 {
      twColor = twFuchsia400;
      return _child;
  }
	T get fuchsia500 {
      twColor = twFuchsia500;
      return _child;
  }
	T get fuchsia600 {
      twColor = twFuchsia600;
      return _child;
  }
	T get fuchsia700 {
      twColor = twFuchsia700;
      return _child;
  }
	T get fuchsia800 {
      twColor = twFuchsia800;
      return _child;
  }
	T get fuchsia900 {
      twColor = twFuchsia900;
      return _child;
  }
	T get pink50 {
      twColor = twPink50;
      return _child;
  }
	T get pink100 {
      twColor = twPink100;
      return _child;
  }
	T get pink200 {
      twColor = twPink200;
      return _child;
  }
	T get pink300 {
      twColor = twPink300;
      return _child;
  }
	T get pink400 {
      twColor = twPink400;
      return _child;
  }
	T get pink500 {
      twColor = twPink500;
      return _child;
  }
	T get pink600 {
      twColor = twPink600;
      return _child;
  }
	T get pink700 {
      twColor = twPink700;
      return _child;
  }
	T get pink800 {
      twColor = twPink800;
      return _child;
  }
	T get pink900 {
      twColor = twPink900;
      return _child;
  }
	T get rose50 {
      twColor = twRose50;
      return _child;
  }
	T get rose100 {
      twColor = twRose100;
      return _child;
  }
	T get rose200 {
      twColor = twRose200;
      return _child;
  }
	T get rose300 {
      twColor = twRose300;
      return _child;
  }
	T get rose400 {
      twColor = twRose400;
      return _child;
  }
	T get rose500 {
      twColor = twRose500;
      return _child;
  }
	T get rose600 {
      twColor = twRose600;
      return _child;
  }
	T get rose700 {
      twColor = twRose700;
      return _child;
  }
	T get rose800 {
      twColor = twRose800;
      return _child;
  }
	T get rose900 {
      twColor = twRose900;
      return _child;
  }
	T get primary {
      twColor = twPrimary;
      return _child;
  }
	
}

