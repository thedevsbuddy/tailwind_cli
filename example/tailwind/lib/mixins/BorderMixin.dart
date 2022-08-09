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
    twBorderWidth = spacer; 
    return _child;
  }
	T get border0 {
    twBorderWidth = spacer0; 
    return _child;
  }
	T get border1 {
    twBorderWidth = spacer1; 
    return _child;
  }
	T get border2 {
    twBorderWidth = spacer2; 
    return _child;
  }
	T get border3 {
    twBorderWidth = spacer3; 
    return _child;
  }
	T get border4 {
    twBorderWidth = spacer4; 
    return _child;
  }
	T get border5 {
    twBorderWidth = spacer5; 
    return _child;
  }
	T get border6 {
    twBorderWidth = spacer6; 
    return _child;
  }
	T get border7 {
    twBorderWidth = spacer7; 
    return _child;
  }
	T get border8 {
    twBorderWidth = spacer8; 
    return _child;
  }
	T get border9 {
    twBorderWidth = spacer9; 
    return _child;
  }
	T get border10 {
    twBorderWidth = spacer10; 
    return _child;
  }
	T get border11 {
    twBorderWidth = spacer11; 
    return _child;
  }
	T get border12 {
    twBorderWidth = spacer12; 
    return _child;
  }
	T get border14 {
    twBorderWidth = spacer14; 
    return _child;
  }
	T get border16 {
    twBorderWidth = spacer16; 
    return _child;
  }
	T get border20 {
    twBorderWidth = spacer20; 
    return _child;
  }
	T get border24 {
    twBorderWidth = spacer24; 
    return _child;
  }
	T get border28 {
    twBorderWidth = spacer28; 
    return _child;
  }
	T get border32 {
    twBorderWidth = spacer32; 
    return _child;
  }
	T get border36 {
    twBorderWidth = spacer36; 
    return _child;
  }
	T get border40 {
    twBorderWidth = spacer40; 
    return _child;
  }
	T get border44 {
    twBorderWidth = spacer44; 
    return _child;
  }
	T get border48 {
    twBorderWidth = spacer48; 
    return _child;
  }
	T get border52 {
    twBorderWidth = spacer52; 
    return _child;
  }
	T get border56 {
    twBorderWidth = spacer56; 
    return _child;
  }
	T get border60 {
    twBorderWidth = spacer60; 
    return _child;
  }
	T get border64 {
    twBorderWidth = spacer64; 
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
    twBorderColor = Theme.of(Get.context!).primaryColor;
    return _child;
  }

  T get borderPrimaryDarkColor {
    twBorderColor = Theme.of(Get.context!).primaryColorDark;
    return _child;
  }

  T get borderAccentColor {
    twBorderColor = Theme.of(Get.context!).colorScheme.secondary;
    return _child;
  }

  T get borderBackgroundColor {
    twBorderColor = Theme.of(Get.context!).backgroundColor;
    return _child;
  }

  T get borderScaffoldBackgroundColor {
    twBorderColor = Theme.of(Get.context!).scaffoldBackgroundColor;
    return _child;
  }

  T get borderCardColor {
    twBorderColor = Theme.of(Get.context!).cardColor;
    return _child;
  }

  T get borderBlack {
      twBorderColor = twBlack;
      return _child;
  }
	T get borderWhite {
      twBorderColor = twWhite;
      return _child;
  }
	T get borderTransparent {
      twBorderColor = twTransparent;
      return _child;
  }
	T get borderGray50 {
      twBorderColor = twGray50;
      return _child;
  }
	T get borderGray100 {
      twBorderColor = twGray100;
      return _child;
  }
	T get borderGray200 {
      twBorderColor = twGray200;
      return _child;
  }
	T get borderGray300 {
      twBorderColor = twGray300;
      return _child;
  }
	T get borderGray400 {
      twBorderColor = twGray400;
      return _child;
  }
	T get borderGray500 {
      twBorderColor = twGray500;
      return _child;
  }
	T get borderGray600 {
      twBorderColor = twGray600;
      return _child;
  }
	T get borderGray700 {
      twBorderColor = twGray700;
      return _child;
  }
	T get borderGray800 {
      twBorderColor = twGray800;
      return _child;
  }
	T get borderGray900 {
      twBorderColor = twGray900;
      return _child;
  }
	T get borderBlueGray50 {
      twBorderColor = twBlueGray50;
      return _child;
  }
	T get borderBlueGray100 {
      twBorderColor = twBlueGray100;
      return _child;
  }
	T get borderBlueGray200 {
      twBorderColor = twBlueGray200;
      return _child;
  }
	T get borderBlueGray300 {
      twBorderColor = twBlueGray300;
      return _child;
  }
	T get borderBlueGray400 {
      twBorderColor = twBlueGray400;
      return _child;
  }
	T get borderBlueGray500 {
      twBorderColor = twBlueGray500;
      return _child;
  }
	T get borderBlueGray600 {
      twBorderColor = twBlueGray600;
      return _child;
  }
	T get borderBlueGray700 {
      twBorderColor = twBlueGray700;
      return _child;
  }
	T get borderBlueGray800 {
      twBorderColor = twBlueGray800;
      return _child;
  }
	T get borderBlueGray900 {
      twBorderColor = twBlueGray900;
      return _child;
  }
	T get borderCoolGray50 {
      twBorderColor = twCoolGray50;
      return _child;
  }
	T get borderCoolGray100 {
      twBorderColor = twCoolGray100;
      return _child;
  }
	T get borderCoolGray200 {
      twBorderColor = twCoolGray200;
      return _child;
  }
	T get borderCoolGray300 {
      twBorderColor = twCoolGray300;
      return _child;
  }
	T get borderCoolGray400 {
      twBorderColor = twCoolGray400;
      return _child;
  }
	T get borderCoolGray500 {
      twBorderColor = twCoolGray500;
      return _child;
  }
	T get borderCoolGray600 {
      twBorderColor = twCoolGray600;
      return _child;
  }
	T get borderCoolGray700 {
      twBorderColor = twCoolGray700;
      return _child;
  }
	T get borderCoolGray800 {
      twBorderColor = twCoolGray800;
      return _child;
  }
	T get borderCoolGray900 {
      twBorderColor = twCoolGray900;
      return _child;
  }
	T get borderTrueGray50 {
      twBorderColor = twTrueGray50;
      return _child;
  }
	T get borderTrueGray100 {
      twBorderColor = twTrueGray100;
      return _child;
  }
	T get borderTrueGray200 {
      twBorderColor = twTrueGray200;
      return _child;
  }
	T get borderTrueGray300 {
      twBorderColor = twTrueGray300;
      return _child;
  }
	T get borderTrueGray400 {
      twBorderColor = twTrueGray400;
      return _child;
  }
	T get borderTrueGray500 {
      twBorderColor = twTrueGray500;
      return _child;
  }
	T get borderTrueGray600 {
      twBorderColor = twTrueGray600;
      return _child;
  }
	T get borderTrueGray700 {
      twBorderColor = twTrueGray700;
      return _child;
  }
	T get borderTrueGray800 {
      twBorderColor = twTrueGray800;
      return _child;
  }
	T get borderTrueGray900 {
      twBorderColor = twTrueGray900;
      return _child;
  }
	T get borderWarmGray50 {
      twBorderColor = twWarmGray50;
      return _child;
  }
	T get borderWarmGray100 {
      twBorderColor = twWarmGray100;
      return _child;
  }
	T get borderWarmGray200 {
      twBorderColor = twWarmGray200;
      return _child;
  }
	T get borderWarmGray300 {
      twBorderColor = twWarmGray300;
      return _child;
  }
	T get borderWarmGray400 {
      twBorderColor = twWarmGray400;
      return _child;
  }
	T get borderWarmGray500 {
      twBorderColor = twWarmGray500;
      return _child;
  }
	T get borderWarmGray600 {
      twBorderColor = twWarmGray600;
      return _child;
  }
	T get borderWarmGray700 {
      twBorderColor = twWarmGray700;
      return _child;
  }
	T get borderWarmGray800 {
      twBorderColor = twWarmGray800;
      return _child;
  }
	T get borderWarmGray900 {
      twBorderColor = twWarmGray900;
      return _child;
  }
	T get borderRed50 {
      twBorderColor = twRed50;
      return _child;
  }
	T get borderRed100 {
      twBorderColor = twRed100;
      return _child;
  }
	T get borderRed200 {
      twBorderColor = twRed200;
      return _child;
  }
	T get borderRed300 {
      twBorderColor = twRed300;
      return _child;
  }
	T get borderRed400 {
      twBorderColor = twRed400;
      return _child;
  }
	T get borderRed500 {
      twBorderColor = twRed500;
      return _child;
  }
	T get borderRed600 {
      twBorderColor = twRed600;
      return _child;
  }
	T get borderRed700 {
      twBorderColor = twRed700;
      return _child;
  }
	T get borderRed800 {
      twBorderColor = twRed800;
      return _child;
  }
	T get borderRed900 {
      twBorderColor = twRed900;
      return _child;
  }
	T get borderOrange50 {
      twBorderColor = twOrange50;
      return _child;
  }
	T get borderOrange100 {
      twBorderColor = twOrange100;
      return _child;
  }
	T get borderOrange200 {
      twBorderColor = twOrange200;
      return _child;
  }
	T get borderOrange300 {
      twBorderColor = twOrange300;
      return _child;
  }
	T get borderOrange400 {
      twBorderColor = twOrange400;
      return _child;
  }
	T get borderOrange500 {
      twBorderColor = twOrange500;
      return _child;
  }
	T get borderOrange600 {
      twBorderColor = twOrange600;
      return _child;
  }
	T get borderOrange700 {
      twBorderColor = twOrange700;
      return _child;
  }
	T get borderOrange800 {
      twBorderColor = twOrange800;
      return _child;
  }
	T get borderOrange900 {
      twBorderColor = twOrange900;
      return _child;
  }
	T get borderAmber50 {
      twBorderColor = twAmber50;
      return _child;
  }
	T get borderAmber100 {
      twBorderColor = twAmber100;
      return _child;
  }
	T get borderAmber200 {
      twBorderColor = twAmber200;
      return _child;
  }
	T get borderAmber300 {
      twBorderColor = twAmber300;
      return _child;
  }
	T get borderAmber400 {
      twBorderColor = twAmber400;
      return _child;
  }
	T get borderAmber500 {
      twBorderColor = twAmber500;
      return _child;
  }
	T get borderAmber600 {
      twBorderColor = twAmber600;
      return _child;
  }
	T get borderAmber700 {
      twBorderColor = twAmber700;
      return _child;
  }
	T get borderAmber800 {
      twBorderColor = twAmber800;
      return _child;
  }
	T get borderAmber900 {
      twBorderColor = twAmber900;
      return _child;
  }
	T get borderYellow50 {
      twBorderColor = twYellow50;
      return _child;
  }
	T get borderYellow100 {
      twBorderColor = twYellow100;
      return _child;
  }
	T get borderYellow200 {
      twBorderColor = twYellow200;
      return _child;
  }
	T get borderYellow300 {
      twBorderColor = twYellow300;
      return _child;
  }
	T get borderYellow400 {
      twBorderColor = twYellow400;
      return _child;
  }
	T get borderYellow500 {
      twBorderColor = twYellow500;
      return _child;
  }
	T get borderYellow600 {
      twBorderColor = twYellow600;
      return _child;
  }
	T get borderYellow700 {
      twBorderColor = twYellow700;
      return _child;
  }
	T get borderYellow800 {
      twBorderColor = twYellow800;
      return _child;
  }
	T get borderYellow900 {
      twBorderColor = twYellow900;
      return _child;
  }
	T get borderLime50 {
      twBorderColor = twLime50;
      return _child;
  }
	T get borderLime100 {
      twBorderColor = twLime100;
      return _child;
  }
	T get borderLime200 {
      twBorderColor = twLime200;
      return _child;
  }
	T get borderLime300 {
      twBorderColor = twLime300;
      return _child;
  }
	T get borderLime400 {
      twBorderColor = twLime400;
      return _child;
  }
	T get borderLime500 {
      twBorderColor = twLime500;
      return _child;
  }
	T get borderLime600 {
      twBorderColor = twLime600;
      return _child;
  }
	T get borderLime700 {
      twBorderColor = twLime700;
      return _child;
  }
	T get borderLime800 {
      twBorderColor = twLime800;
      return _child;
  }
	T get borderLime900 {
      twBorderColor = twLime900;
      return _child;
  }
	T get borderGreen50 {
      twBorderColor = twGreen50;
      return _child;
  }
	T get borderGreen100 {
      twBorderColor = twGreen100;
      return _child;
  }
	T get borderGreen200 {
      twBorderColor = twGreen200;
      return _child;
  }
	T get borderGreen300 {
      twBorderColor = twGreen300;
      return _child;
  }
	T get borderGreen400 {
      twBorderColor = twGreen400;
      return _child;
  }
	T get borderGreen500 {
      twBorderColor = twGreen500;
      return _child;
  }
	T get borderGreen600 {
      twBorderColor = twGreen600;
      return _child;
  }
	T get borderGreen700 {
      twBorderColor = twGreen700;
      return _child;
  }
	T get borderGreen800 {
      twBorderColor = twGreen800;
      return _child;
  }
	T get borderGreen900 {
      twBorderColor = twGreen900;
      return _child;
  }
	T get borderEmerald50 {
      twBorderColor = twEmerald50;
      return _child;
  }
	T get borderEmerald100 {
      twBorderColor = twEmerald100;
      return _child;
  }
	T get borderEmerald200 {
      twBorderColor = twEmerald200;
      return _child;
  }
	T get borderEmerald300 {
      twBorderColor = twEmerald300;
      return _child;
  }
	T get borderEmerald400 {
      twBorderColor = twEmerald400;
      return _child;
  }
	T get borderEmerald500 {
      twBorderColor = twEmerald500;
      return _child;
  }
	T get borderEmerald600 {
      twBorderColor = twEmerald600;
      return _child;
  }
	T get borderEmerald700 {
      twBorderColor = twEmerald700;
      return _child;
  }
	T get borderEmerald800 {
      twBorderColor = twEmerald800;
      return _child;
  }
	T get borderEmerald900 {
      twBorderColor = twEmerald900;
      return _child;
  }
	T get borderTeal50 {
      twBorderColor = twTeal50;
      return _child;
  }
	T get borderTeal100 {
      twBorderColor = twTeal100;
      return _child;
  }
	T get borderTeal200 {
      twBorderColor = twTeal200;
      return _child;
  }
	T get borderTeal300 {
      twBorderColor = twTeal300;
      return _child;
  }
	T get borderTeal400 {
      twBorderColor = twTeal400;
      return _child;
  }
	T get borderTeal500 {
      twBorderColor = twTeal500;
      return _child;
  }
	T get borderTeal600 {
      twBorderColor = twTeal600;
      return _child;
  }
	T get borderTeal700 {
      twBorderColor = twTeal700;
      return _child;
  }
	T get borderTeal800 {
      twBorderColor = twTeal800;
      return _child;
  }
	T get borderTeal900 {
      twBorderColor = twTeal900;
      return _child;
  }
	T get borderCyan50 {
      twBorderColor = twCyan50;
      return _child;
  }
	T get borderCyan100 {
      twBorderColor = twCyan100;
      return _child;
  }
	T get borderCyan200 {
      twBorderColor = twCyan200;
      return _child;
  }
	T get borderCyan300 {
      twBorderColor = twCyan300;
      return _child;
  }
	T get borderCyan400 {
      twBorderColor = twCyan400;
      return _child;
  }
	T get borderCyan500 {
      twBorderColor = twCyan500;
      return _child;
  }
	T get borderCyan600 {
      twBorderColor = twCyan600;
      return _child;
  }
	T get borderCyan700 {
      twBorderColor = twCyan700;
      return _child;
  }
	T get borderCyan800 {
      twBorderColor = twCyan800;
      return _child;
  }
	T get borderCyan900 {
      twBorderColor = twCyan900;
      return _child;
  }
	T get borderLightBlue50 {
      twBorderColor = twLightBlue50;
      return _child;
  }
	T get borderLightBlue100 {
      twBorderColor = twLightBlue100;
      return _child;
  }
	T get borderLightBlue200 {
      twBorderColor = twLightBlue200;
      return _child;
  }
	T get borderLightBlue300 {
      twBorderColor = twLightBlue300;
      return _child;
  }
	T get borderLightBlue400 {
      twBorderColor = twLightBlue400;
      return _child;
  }
	T get borderLightBlue500 {
      twBorderColor = twLightBlue500;
      return _child;
  }
	T get borderLightBlue600 {
      twBorderColor = twLightBlue600;
      return _child;
  }
	T get borderLightBlue700 {
      twBorderColor = twLightBlue700;
      return _child;
  }
	T get borderLightBlue800 {
      twBorderColor = twLightBlue800;
      return _child;
  }
	T get borderLightBlue900 {
      twBorderColor = twLightBlue900;
      return _child;
  }
	T get borderBlue50 {
      twBorderColor = twBlue50;
      return _child;
  }
	T get borderBlue100 {
      twBorderColor = twBlue100;
      return _child;
  }
	T get borderBlue200 {
      twBorderColor = twBlue200;
      return _child;
  }
	T get borderBlue300 {
      twBorderColor = twBlue300;
      return _child;
  }
	T get borderBlue400 {
      twBorderColor = twBlue400;
      return _child;
  }
	T get borderBlue500 {
      twBorderColor = twBlue500;
      return _child;
  }
	T get borderBlue600 {
      twBorderColor = twBlue600;
      return _child;
  }
	T get borderBlue700 {
      twBorderColor = twBlue700;
      return _child;
  }
	T get borderBlue800 {
      twBorderColor = twBlue800;
      return _child;
  }
	T get borderBlue900 {
      twBorderColor = twBlue900;
      return _child;
  }
	T get borderIndigo50 {
      twBorderColor = twIndigo50;
      return _child;
  }
	T get borderIndigo100 {
      twBorderColor = twIndigo100;
      return _child;
  }
	T get borderIndigo200 {
      twBorderColor = twIndigo200;
      return _child;
  }
	T get borderIndigo300 {
      twBorderColor = twIndigo300;
      return _child;
  }
	T get borderIndigo400 {
      twBorderColor = twIndigo400;
      return _child;
  }
	T get borderIndigo500 {
      twBorderColor = twIndigo500;
      return _child;
  }
	T get borderIndigo600 {
      twBorderColor = twIndigo600;
      return _child;
  }
	T get borderIndigo700 {
      twBorderColor = twIndigo700;
      return _child;
  }
	T get borderIndigo800 {
      twBorderColor = twIndigo800;
      return _child;
  }
	T get borderIndigo900 {
      twBorderColor = twIndigo900;
      return _child;
  }
	T get borderViolet50 {
      twBorderColor = twViolet50;
      return _child;
  }
	T get borderViolet100 {
      twBorderColor = twViolet100;
      return _child;
  }
	T get borderViolet200 {
      twBorderColor = twViolet200;
      return _child;
  }
	T get borderViolet300 {
      twBorderColor = twViolet300;
      return _child;
  }
	T get borderViolet400 {
      twBorderColor = twViolet400;
      return _child;
  }
	T get borderViolet500 {
      twBorderColor = twViolet500;
      return _child;
  }
	T get borderViolet600 {
      twBorderColor = twViolet600;
      return _child;
  }
	T get borderViolet700 {
      twBorderColor = twViolet700;
      return _child;
  }
	T get borderViolet800 {
      twBorderColor = twViolet800;
      return _child;
  }
	T get borderViolet900 {
      twBorderColor = twViolet900;
      return _child;
  }
	T get borderPurple50 {
      twBorderColor = twPurple50;
      return _child;
  }
	T get borderPurple100 {
      twBorderColor = twPurple100;
      return _child;
  }
	T get borderPurple200 {
      twBorderColor = twPurple200;
      return _child;
  }
	T get borderPurple300 {
      twBorderColor = twPurple300;
      return _child;
  }
	T get borderPurple400 {
      twBorderColor = twPurple400;
      return _child;
  }
	T get borderPurple500 {
      twBorderColor = twPurple500;
      return _child;
  }
	T get borderPurple600 {
      twBorderColor = twPurple600;
      return _child;
  }
	T get borderPurple700 {
      twBorderColor = twPurple700;
      return _child;
  }
	T get borderPurple800 {
      twBorderColor = twPurple800;
      return _child;
  }
	T get borderPurple900 {
      twBorderColor = twPurple900;
      return _child;
  }
	T get borderFuchsia50 {
      twBorderColor = twFuchsia50;
      return _child;
  }
	T get borderFuchsia100 {
      twBorderColor = twFuchsia100;
      return _child;
  }
	T get borderFuchsia200 {
      twBorderColor = twFuchsia200;
      return _child;
  }
	T get borderFuchsia300 {
      twBorderColor = twFuchsia300;
      return _child;
  }
	T get borderFuchsia400 {
      twBorderColor = twFuchsia400;
      return _child;
  }
	T get borderFuchsia500 {
      twBorderColor = twFuchsia500;
      return _child;
  }
	T get borderFuchsia600 {
      twBorderColor = twFuchsia600;
      return _child;
  }
	T get borderFuchsia700 {
      twBorderColor = twFuchsia700;
      return _child;
  }
	T get borderFuchsia800 {
      twBorderColor = twFuchsia800;
      return _child;
  }
	T get borderFuchsia900 {
      twBorderColor = twFuchsia900;
      return _child;
  }
	T get borderPink50 {
      twBorderColor = twPink50;
      return _child;
  }
	T get borderPink100 {
      twBorderColor = twPink100;
      return _child;
  }
	T get borderPink200 {
      twBorderColor = twPink200;
      return _child;
  }
	T get borderPink300 {
      twBorderColor = twPink300;
      return _child;
  }
	T get borderPink400 {
      twBorderColor = twPink400;
      return _child;
  }
	T get borderPink500 {
      twBorderColor = twPink500;
      return _child;
  }
	T get borderPink600 {
      twBorderColor = twPink600;
      return _child;
  }
	T get borderPink700 {
      twBorderColor = twPink700;
      return _child;
  }
	T get borderPink800 {
      twBorderColor = twPink800;
      return _child;
  }
	T get borderPink900 {
      twBorderColor = twPink900;
      return _child;
  }
	T get borderRose50 {
      twBorderColor = twRose50;
      return _child;
  }
	T get borderRose100 {
      twBorderColor = twRose100;
      return _child;
  }
	T get borderRose200 {
      twBorderColor = twRose200;
      return _child;
  }
	T get borderRose300 {
      twBorderColor = twRose300;
      return _child;
  }
	T get borderRose400 {
      twBorderColor = twRose400;
      return _child;
  }
	T get borderRose500 {
      twBorderColor = twRose500;
      return _child;
  }
	T get borderRose600 {
      twBorderColor = twRose600;
      return _child;
  }
	T get borderRose700 {
      twBorderColor = twRose700;
      return _child;
  }
	T get borderRose800 {
      twBorderColor = twRose800;
      return _child;
  }
	T get borderRose900 {
      twBorderColor = twRose900;
      return _child;
  }
	T get borderPrimary {
      twBorderColor = twPrimary;
      return _child;
  }
	
}


