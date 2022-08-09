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

  T get borderBase {
    twBorderWidth = TwSpacers.base; 
    return _child;
  }
	T get border0 {
    twBorderWidth = TwSpacers.sp0; 
    return _child;
  }
	T get border1 {
    twBorderWidth = TwSpacers.sp1; 
    return _child;
  }
	T get border2 {
    twBorderWidth = TwSpacers.sp2; 
    return _child;
  }
	T get border3 {
    twBorderWidth = TwSpacers.sp3; 
    return _child;
  }
	T get border4 {
    twBorderWidth = TwSpacers.sp4; 
    return _child;
  }
	T get border5 {
    twBorderWidth = TwSpacers.sp5; 
    return _child;
  }
	T get border6 {
    twBorderWidth = TwSpacers.sp6; 
    return _child;
  }
	T get border7 {
    twBorderWidth = TwSpacers.sp7; 
    return _child;
  }
	T get border8 {
    twBorderWidth = TwSpacers.sp8; 
    return _child;
  }
	T get border9 {
    twBorderWidth = TwSpacers.sp9; 
    return _child;
  }
	T get border10 {
    twBorderWidth = TwSpacers.sp10; 
    return _child;
  }
	T get border11 {
    twBorderWidth = TwSpacers.sp11; 
    return _child;
  }
	T get border12 {
    twBorderWidth = TwSpacers.sp12; 
    return _child;
  }
	T get border14 {
    twBorderWidth = TwSpacers.sp14; 
    return _child;
  }
	T get border16 {
    twBorderWidth = TwSpacers.sp16; 
    return _child;
  }
	T get border20 {
    twBorderWidth = TwSpacers.sp20; 
    return _child;
  }
	T get border24 {
    twBorderWidth = TwSpacers.sp24; 
    return _child;
  }
	T get border28 {
    twBorderWidth = TwSpacers.sp28; 
    return _child;
  }
	T get border32 {
    twBorderWidth = TwSpacers.sp32; 
    return _child;
  }
	T get border36 {
    twBorderWidth = TwSpacers.sp36; 
    return _child;
  }
	T get border40 {
    twBorderWidth = TwSpacers.sp40; 
    return _child;
  }
	T get border44 {
    twBorderWidth = TwSpacers.sp44; 
    return _child;
  }
	T get border48 {
    twBorderWidth = TwSpacers.sp48; 
    return _child;
  }
	T get border52 {
    twBorderWidth = TwSpacers.sp52; 
    return _child;
  }
	T get border56 {
    twBorderWidth = TwSpacers.sp56; 
    return _child;
  }
	T get border60 {
    twBorderWidth = TwSpacers.sp60; 
    return _child;
  }
	T get border64 {
    twBorderWidth = TwSpacers.sp64; 
    return _child;
  }
	

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

  T get borderBlack {
      twBorderColor = TwColors.black;
      return _child;
  }
	T get borderWhite {
      twBorderColor = TwColors.white;
      return _child;
  }
	T get borderTransparent {
      twBorderColor = TwColors.transparent;
      return _child;
  }
	T get borderGray50 {
      twBorderColor = TwColors.gray50;
      return _child;
  }
	T get borderGray100 {
      twBorderColor = TwColors.gray100;
      return _child;
  }
	T get borderGray200 {
      twBorderColor = TwColors.gray200;
      return _child;
  }
	T get borderGray300 {
      twBorderColor = TwColors.gray300;
      return _child;
  }
	T get borderGray400 {
      twBorderColor = TwColors.gray400;
      return _child;
  }
	T get borderGray500 {
      twBorderColor = TwColors.gray500;
      return _child;
  }
	T get borderGray600 {
      twBorderColor = TwColors.gray600;
      return _child;
  }
	T get borderGray700 {
      twBorderColor = TwColors.gray700;
      return _child;
  }
	T get borderGray800 {
      twBorderColor = TwColors.gray800;
      return _child;
  }
	T get borderGray900 {
      twBorderColor = TwColors.gray900;
      return _child;
  }
	T get borderBlueGray50 {
      twBorderColor = TwColors.blueGray50;
      return _child;
  }
	T get borderBlueGray100 {
      twBorderColor = TwColors.blueGray100;
      return _child;
  }
	T get borderBlueGray200 {
      twBorderColor = TwColors.blueGray200;
      return _child;
  }
	T get borderBlueGray300 {
      twBorderColor = TwColors.blueGray300;
      return _child;
  }
	T get borderBlueGray400 {
      twBorderColor = TwColors.blueGray400;
      return _child;
  }
	T get borderBlueGray500 {
      twBorderColor = TwColors.blueGray500;
      return _child;
  }
	T get borderBlueGray600 {
      twBorderColor = TwColors.blueGray600;
      return _child;
  }
	T get borderBlueGray700 {
      twBorderColor = TwColors.blueGray700;
      return _child;
  }
	T get borderBlueGray800 {
      twBorderColor = TwColors.blueGray800;
      return _child;
  }
	T get borderBlueGray900 {
      twBorderColor = TwColors.blueGray900;
      return _child;
  }
	T get borderCoolGray50 {
      twBorderColor = TwColors.coolGray50;
      return _child;
  }
	T get borderCoolGray100 {
      twBorderColor = TwColors.coolGray100;
      return _child;
  }
	T get borderCoolGray200 {
      twBorderColor = TwColors.coolGray200;
      return _child;
  }
	T get borderCoolGray300 {
      twBorderColor = TwColors.coolGray300;
      return _child;
  }
	T get borderCoolGray400 {
      twBorderColor = TwColors.coolGray400;
      return _child;
  }
	T get borderCoolGray500 {
      twBorderColor = TwColors.coolGray500;
      return _child;
  }
	T get borderCoolGray600 {
      twBorderColor = TwColors.coolGray600;
      return _child;
  }
	T get borderCoolGray700 {
      twBorderColor = TwColors.coolGray700;
      return _child;
  }
	T get borderCoolGray800 {
      twBorderColor = TwColors.coolGray800;
      return _child;
  }
	T get borderCoolGray900 {
      twBorderColor = TwColors.coolGray900;
      return _child;
  }
	T get borderTrueGray50 {
      twBorderColor = TwColors.trueGray50;
      return _child;
  }
	T get borderTrueGray100 {
      twBorderColor = TwColors.trueGray100;
      return _child;
  }
	T get borderTrueGray200 {
      twBorderColor = TwColors.trueGray200;
      return _child;
  }
	T get borderTrueGray300 {
      twBorderColor = TwColors.trueGray300;
      return _child;
  }
	T get borderTrueGray400 {
      twBorderColor = TwColors.trueGray400;
      return _child;
  }
	T get borderTrueGray500 {
      twBorderColor = TwColors.trueGray500;
      return _child;
  }
	T get borderTrueGray600 {
      twBorderColor = TwColors.trueGray600;
      return _child;
  }
	T get borderTrueGray700 {
      twBorderColor = TwColors.trueGray700;
      return _child;
  }
	T get borderTrueGray800 {
      twBorderColor = TwColors.trueGray800;
      return _child;
  }
	T get borderTrueGray900 {
      twBorderColor = TwColors.trueGray900;
      return _child;
  }
	T get borderWarmGray50 {
      twBorderColor = TwColors.warmGray50;
      return _child;
  }
	T get borderWarmGray100 {
      twBorderColor = TwColors.warmGray100;
      return _child;
  }
	T get borderWarmGray200 {
      twBorderColor = TwColors.warmGray200;
      return _child;
  }
	T get borderWarmGray300 {
      twBorderColor = TwColors.warmGray300;
      return _child;
  }
	T get borderWarmGray400 {
      twBorderColor = TwColors.warmGray400;
      return _child;
  }
	T get borderWarmGray500 {
      twBorderColor = TwColors.warmGray500;
      return _child;
  }
	T get borderWarmGray600 {
      twBorderColor = TwColors.warmGray600;
      return _child;
  }
	T get borderWarmGray700 {
      twBorderColor = TwColors.warmGray700;
      return _child;
  }
	T get borderWarmGray800 {
      twBorderColor = TwColors.warmGray800;
      return _child;
  }
	T get borderWarmGray900 {
      twBorderColor = TwColors.warmGray900;
      return _child;
  }
	T get borderRed50 {
      twBorderColor = TwColors.red50;
      return _child;
  }
	T get borderRed100 {
      twBorderColor = TwColors.red100;
      return _child;
  }
	T get borderRed200 {
      twBorderColor = TwColors.red200;
      return _child;
  }
	T get borderRed300 {
      twBorderColor = TwColors.red300;
      return _child;
  }
	T get borderRed400 {
      twBorderColor = TwColors.red400;
      return _child;
  }
	T get borderRed500 {
      twBorderColor = TwColors.red500;
      return _child;
  }
	T get borderRed600 {
      twBorderColor = TwColors.red600;
      return _child;
  }
	T get borderRed700 {
      twBorderColor = TwColors.red700;
      return _child;
  }
	T get borderRed800 {
      twBorderColor = TwColors.red800;
      return _child;
  }
	T get borderRed900 {
      twBorderColor = TwColors.red900;
      return _child;
  }
	T get borderOrange50 {
      twBorderColor = TwColors.orange50;
      return _child;
  }
	T get borderOrange100 {
      twBorderColor = TwColors.orange100;
      return _child;
  }
	T get borderOrange200 {
      twBorderColor = TwColors.orange200;
      return _child;
  }
	T get borderOrange300 {
      twBorderColor = TwColors.orange300;
      return _child;
  }
	T get borderOrange400 {
      twBorderColor = TwColors.orange400;
      return _child;
  }
	T get borderOrange500 {
      twBorderColor = TwColors.orange500;
      return _child;
  }
	T get borderOrange600 {
      twBorderColor = TwColors.orange600;
      return _child;
  }
	T get borderOrange700 {
      twBorderColor = TwColors.orange700;
      return _child;
  }
	T get borderOrange800 {
      twBorderColor = TwColors.orange800;
      return _child;
  }
	T get borderOrange900 {
      twBorderColor = TwColors.orange900;
      return _child;
  }
	T get borderAmber50 {
      twBorderColor = TwColors.amber50;
      return _child;
  }
	T get borderAmber100 {
      twBorderColor = TwColors.amber100;
      return _child;
  }
	T get borderAmber200 {
      twBorderColor = TwColors.amber200;
      return _child;
  }
	T get borderAmber300 {
      twBorderColor = TwColors.amber300;
      return _child;
  }
	T get borderAmber400 {
      twBorderColor = TwColors.amber400;
      return _child;
  }
	T get borderAmber500 {
      twBorderColor = TwColors.amber500;
      return _child;
  }
	T get borderAmber600 {
      twBorderColor = TwColors.amber600;
      return _child;
  }
	T get borderAmber700 {
      twBorderColor = TwColors.amber700;
      return _child;
  }
	T get borderAmber800 {
      twBorderColor = TwColors.amber800;
      return _child;
  }
	T get borderAmber900 {
      twBorderColor = TwColors.amber900;
      return _child;
  }
	T get borderYellow50 {
      twBorderColor = TwColors.yellow50;
      return _child;
  }
	T get borderYellow100 {
      twBorderColor = TwColors.yellow100;
      return _child;
  }
	T get borderYellow200 {
      twBorderColor = TwColors.yellow200;
      return _child;
  }
	T get borderYellow300 {
      twBorderColor = TwColors.yellow300;
      return _child;
  }
	T get borderYellow400 {
      twBorderColor = TwColors.yellow400;
      return _child;
  }
	T get borderYellow500 {
      twBorderColor = TwColors.yellow500;
      return _child;
  }
	T get borderYellow600 {
      twBorderColor = TwColors.yellow600;
      return _child;
  }
	T get borderYellow700 {
      twBorderColor = TwColors.yellow700;
      return _child;
  }
	T get borderYellow800 {
      twBorderColor = TwColors.yellow800;
      return _child;
  }
	T get borderYellow900 {
      twBorderColor = TwColors.yellow900;
      return _child;
  }
	T get borderLime50 {
      twBorderColor = TwColors.lime50;
      return _child;
  }
	T get borderLime100 {
      twBorderColor = TwColors.lime100;
      return _child;
  }
	T get borderLime200 {
      twBorderColor = TwColors.lime200;
      return _child;
  }
	T get borderLime300 {
      twBorderColor = TwColors.lime300;
      return _child;
  }
	T get borderLime400 {
      twBorderColor = TwColors.lime400;
      return _child;
  }
	T get borderLime500 {
      twBorderColor = TwColors.lime500;
      return _child;
  }
	T get borderLime600 {
      twBorderColor = TwColors.lime600;
      return _child;
  }
	T get borderLime700 {
      twBorderColor = TwColors.lime700;
      return _child;
  }
	T get borderLime800 {
      twBorderColor = TwColors.lime800;
      return _child;
  }
	T get borderLime900 {
      twBorderColor = TwColors.lime900;
      return _child;
  }
	T get borderGreen50 {
      twBorderColor = TwColors.green50;
      return _child;
  }
	T get borderGreen100 {
      twBorderColor = TwColors.green100;
      return _child;
  }
	T get borderGreen200 {
      twBorderColor = TwColors.green200;
      return _child;
  }
	T get borderGreen300 {
      twBorderColor = TwColors.green300;
      return _child;
  }
	T get borderGreen400 {
      twBorderColor = TwColors.green400;
      return _child;
  }
	T get borderGreen500 {
      twBorderColor = TwColors.green500;
      return _child;
  }
	T get borderGreen600 {
      twBorderColor = TwColors.green600;
      return _child;
  }
	T get borderGreen700 {
      twBorderColor = TwColors.green700;
      return _child;
  }
	T get borderGreen800 {
      twBorderColor = TwColors.green800;
      return _child;
  }
	T get borderGreen900 {
      twBorderColor = TwColors.green900;
      return _child;
  }
	T get borderEmerald50 {
      twBorderColor = TwColors.emerald50;
      return _child;
  }
	T get borderEmerald100 {
      twBorderColor = TwColors.emerald100;
      return _child;
  }
	T get borderEmerald200 {
      twBorderColor = TwColors.emerald200;
      return _child;
  }
	T get borderEmerald300 {
      twBorderColor = TwColors.emerald300;
      return _child;
  }
	T get borderEmerald400 {
      twBorderColor = TwColors.emerald400;
      return _child;
  }
	T get borderEmerald500 {
      twBorderColor = TwColors.emerald500;
      return _child;
  }
	T get borderEmerald600 {
      twBorderColor = TwColors.emerald600;
      return _child;
  }
	T get borderEmerald700 {
      twBorderColor = TwColors.emerald700;
      return _child;
  }
	T get borderEmerald800 {
      twBorderColor = TwColors.emerald800;
      return _child;
  }
	T get borderEmerald900 {
      twBorderColor = TwColors.emerald900;
      return _child;
  }
	T get borderTeal50 {
      twBorderColor = TwColors.teal50;
      return _child;
  }
	T get borderTeal100 {
      twBorderColor = TwColors.teal100;
      return _child;
  }
	T get borderTeal200 {
      twBorderColor = TwColors.teal200;
      return _child;
  }
	T get borderTeal300 {
      twBorderColor = TwColors.teal300;
      return _child;
  }
	T get borderTeal400 {
      twBorderColor = TwColors.teal400;
      return _child;
  }
	T get borderTeal500 {
      twBorderColor = TwColors.teal500;
      return _child;
  }
	T get borderTeal600 {
      twBorderColor = TwColors.teal600;
      return _child;
  }
	T get borderTeal700 {
      twBorderColor = TwColors.teal700;
      return _child;
  }
	T get borderTeal800 {
      twBorderColor = TwColors.teal800;
      return _child;
  }
	T get borderTeal900 {
      twBorderColor = TwColors.teal900;
      return _child;
  }
	T get borderCyan50 {
      twBorderColor = TwColors.cyan50;
      return _child;
  }
	T get borderCyan100 {
      twBorderColor = TwColors.cyan100;
      return _child;
  }
	T get borderCyan200 {
      twBorderColor = TwColors.cyan200;
      return _child;
  }
	T get borderCyan300 {
      twBorderColor = TwColors.cyan300;
      return _child;
  }
	T get borderCyan400 {
      twBorderColor = TwColors.cyan400;
      return _child;
  }
	T get borderCyan500 {
      twBorderColor = TwColors.cyan500;
      return _child;
  }
	T get borderCyan600 {
      twBorderColor = TwColors.cyan600;
      return _child;
  }
	T get borderCyan700 {
      twBorderColor = TwColors.cyan700;
      return _child;
  }
	T get borderCyan800 {
      twBorderColor = TwColors.cyan800;
      return _child;
  }
	T get borderCyan900 {
      twBorderColor = TwColors.cyan900;
      return _child;
  }
	T get borderLightBlue50 {
      twBorderColor = TwColors.lightBlue50;
      return _child;
  }
	T get borderLightBlue100 {
      twBorderColor = TwColors.lightBlue100;
      return _child;
  }
	T get borderLightBlue200 {
      twBorderColor = TwColors.lightBlue200;
      return _child;
  }
	T get borderLightBlue300 {
      twBorderColor = TwColors.lightBlue300;
      return _child;
  }
	T get borderLightBlue400 {
      twBorderColor = TwColors.lightBlue400;
      return _child;
  }
	T get borderLightBlue500 {
      twBorderColor = TwColors.lightBlue500;
      return _child;
  }
	T get borderLightBlue600 {
      twBorderColor = TwColors.lightBlue600;
      return _child;
  }
	T get borderLightBlue700 {
      twBorderColor = TwColors.lightBlue700;
      return _child;
  }
	T get borderLightBlue800 {
      twBorderColor = TwColors.lightBlue800;
      return _child;
  }
	T get borderLightBlue900 {
      twBorderColor = TwColors.lightBlue900;
      return _child;
  }
	T get borderBlue50 {
      twBorderColor = TwColors.blue50;
      return _child;
  }
	T get borderBlue100 {
      twBorderColor = TwColors.blue100;
      return _child;
  }
	T get borderBlue200 {
      twBorderColor = TwColors.blue200;
      return _child;
  }
	T get borderBlue300 {
      twBorderColor = TwColors.blue300;
      return _child;
  }
	T get borderBlue400 {
      twBorderColor = TwColors.blue400;
      return _child;
  }
	T get borderBlue500 {
      twBorderColor = TwColors.blue500;
      return _child;
  }
	T get borderBlue600 {
      twBorderColor = TwColors.blue600;
      return _child;
  }
	T get borderBlue700 {
      twBorderColor = TwColors.blue700;
      return _child;
  }
	T get borderBlue800 {
      twBorderColor = TwColors.blue800;
      return _child;
  }
	T get borderBlue900 {
      twBorderColor = TwColors.blue900;
      return _child;
  }
	T get borderIndigo50 {
      twBorderColor = TwColors.indigo50;
      return _child;
  }
	T get borderIndigo100 {
      twBorderColor = TwColors.indigo100;
      return _child;
  }
	T get borderIndigo200 {
      twBorderColor = TwColors.indigo200;
      return _child;
  }
	T get borderIndigo300 {
      twBorderColor = TwColors.indigo300;
      return _child;
  }
	T get borderIndigo400 {
      twBorderColor = TwColors.indigo400;
      return _child;
  }
	T get borderIndigo500 {
      twBorderColor = TwColors.indigo500;
      return _child;
  }
	T get borderIndigo600 {
      twBorderColor = TwColors.indigo600;
      return _child;
  }
	T get borderIndigo700 {
      twBorderColor = TwColors.indigo700;
      return _child;
  }
	T get borderIndigo800 {
      twBorderColor = TwColors.indigo800;
      return _child;
  }
	T get borderIndigo900 {
      twBorderColor = TwColors.indigo900;
      return _child;
  }
	T get borderViolet50 {
      twBorderColor = TwColors.violet50;
      return _child;
  }
	T get borderViolet100 {
      twBorderColor = TwColors.violet100;
      return _child;
  }
	T get borderViolet200 {
      twBorderColor = TwColors.violet200;
      return _child;
  }
	T get borderViolet300 {
      twBorderColor = TwColors.violet300;
      return _child;
  }
	T get borderViolet400 {
      twBorderColor = TwColors.violet400;
      return _child;
  }
	T get borderViolet500 {
      twBorderColor = TwColors.violet500;
      return _child;
  }
	T get borderViolet600 {
      twBorderColor = TwColors.violet600;
      return _child;
  }
	T get borderViolet700 {
      twBorderColor = TwColors.violet700;
      return _child;
  }
	T get borderViolet800 {
      twBorderColor = TwColors.violet800;
      return _child;
  }
	T get borderViolet900 {
      twBorderColor = TwColors.violet900;
      return _child;
  }
	T get borderPurple50 {
      twBorderColor = TwColors.purple50;
      return _child;
  }
	T get borderPurple100 {
      twBorderColor = TwColors.purple100;
      return _child;
  }
	T get borderPurple200 {
      twBorderColor = TwColors.purple200;
      return _child;
  }
	T get borderPurple300 {
      twBorderColor = TwColors.purple300;
      return _child;
  }
	T get borderPurple400 {
      twBorderColor = TwColors.purple400;
      return _child;
  }
	T get borderPurple500 {
      twBorderColor = TwColors.purple500;
      return _child;
  }
	T get borderPurple600 {
      twBorderColor = TwColors.purple600;
      return _child;
  }
	T get borderPurple700 {
      twBorderColor = TwColors.purple700;
      return _child;
  }
	T get borderPurple800 {
      twBorderColor = TwColors.purple800;
      return _child;
  }
	T get borderPurple900 {
      twBorderColor = TwColors.purple900;
      return _child;
  }
	T get borderFuchsia50 {
      twBorderColor = TwColors.fuchsia50;
      return _child;
  }
	T get borderFuchsia100 {
      twBorderColor = TwColors.fuchsia100;
      return _child;
  }
	T get borderFuchsia200 {
      twBorderColor = TwColors.fuchsia200;
      return _child;
  }
	T get borderFuchsia300 {
      twBorderColor = TwColors.fuchsia300;
      return _child;
  }
	T get borderFuchsia400 {
      twBorderColor = TwColors.fuchsia400;
      return _child;
  }
	T get borderFuchsia500 {
      twBorderColor = TwColors.fuchsia500;
      return _child;
  }
	T get borderFuchsia600 {
      twBorderColor = TwColors.fuchsia600;
      return _child;
  }
	T get borderFuchsia700 {
      twBorderColor = TwColors.fuchsia700;
      return _child;
  }
	T get borderFuchsia800 {
      twBorderColor = TwColors.fuchsia800;
      return _child;
  }
	T get borderFuchsia900 {
      twBorderColor = TwColors.fuchsia900;
      return _child;
  }
	T get borderPink50 {
      twBorderColor = TwColors.pink50;
      return _child;
  }
	T get borderPink100 {
      twBorderColor = TwColors.pink100;
      return _child;
  }
	T get borderPink200 {
      twBorderColor = TwColors.pink200;
      return _child;
  }
	T get borderPink300 {
      twBorderColor = TwColors.pink300;
      return _child;
  }
	T get borderPink400 {
      twBorderColor = TwColors.pink400;
      return _child;
  }
	T get borderPink500 {
      twBorderColor = TwColors.pink500;
      return _child;
  }
	T get borderPink600 {
      twBorderColor = TwColors.pink600;
      return _child;
  }
	T get borderPink700 {
      twBorderColor = TwColors.pink700;
      return _child;
  }
	T get borderPink800 {
      twBorderColor = TwColors.pink800;
      return _child;
  }
	T get borderPink900 {
      twBorderColor = TwColors.pink900;
      return _child;
  }
	T get borderRose50 {
      twBorderColor = TwColors.rose50;
      return _child;
  }
	T get borderRose100 {
      twBorderColor = TwColors.rose100;
      return _child;
  }
	T get borderRose200 {
      twBorderColor = TwColors.rose200;
      return _child;
  }
	T get borderRose300 {
      twBorderColor = TwColors.rose300;
      return _child;
  }
	T get borderRose400 {
      twBorderColor = TwColors.rose400;
      return _child;
  }
	T get borderRose500 {
      twBorderColor = TwColors.rose500;
      return _child;
  }
	T get borderRose600 {
      twBorderColor = TwColors.rose600;
      return _child;
  }
	T get borderRose700 {
      twBorderColor = TwColors.rose700;
      return _child;
  }
	T get borderRose800 {
      twBorderColor = TwColors.rose800;
      return _child;
  }
	T get borderRose900 {
      twBorderColor = TwColors.rose900;
      return _child;
  }
	T get borderPrimary {
      twBorderColor = TwColors.primary;
      return _child;
  }
	
}


