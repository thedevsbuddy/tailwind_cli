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
    twBorderWidth = TwSizes.spacer; 
    return _child;
  }
	T get border0 {
    twBorderWidth = TwSizes.spacer0; 
    return _child;
  }
	T get border1 {
    twBorderWidth = TwSizes.spacer1; 
    return _child;
  }
	T get border2 {
    twBorderWidth = TwSizes.spacer2; 
    return _child;
  }
	T get border3 {
    twBorderWidth = TwSizes.spacer3; 
    return _child;
  }
	T get border4 {
    twBorderWidth = TwSizes.spacer4; 
    return _child;
  }
	T get border5 {
    twBorderWidth = TwSizes.spacer5; 
    return _child;
  }
	T get border6 {
    twBorderWidth = TwSizes.spacer6; 
    return _child;
  }
	T get border7 {
    twBorderWidth = TwSizes.spacer7; 
    return _child;
  }
	T get border8 {
    twBorderWidth = TwSizes.spacer8; 
    return _child;
  }
	T get border9 {
    twBorderWidth = TwSizes.spacer9; 
    return _child;
  }
	T get border10 {
    twBorderWidth = TwSizes.spacer10; 
    return _child;
  }
	T get border11 {
    twBorderWidth = TwSizes.spacer11; 
    return _child;
  }
	T get border12 {
    twBorderWidth = TwSizes.spacer12; 
    return _child;
  }
	T get border14 {
    twBorderWidth = TwSizes.spacer14; 
    return _child;
  }
	T get border16 {
    twBorderWidth = TwSizes.spacer16; 
    return _child;
  }
	T get border20 {
    twBorderWidth = TwSizes.spacer20; 
    return _child;
  }
	T get border24 {
    twBorderWidth = TwSizes.spacer24; 
    return _child;
  }
	T get border28 {
    twBorderWidth = TwSizes.spacer28; 
    return _child;
  }
	T get border32 {
    twBorderWidth = TwSizes.spacer32; 
    return _child;
  }
	T get border36 {
    twBorderWidth = TwSizes.spacer36; 
    return _child;
  }
	T get border40 {
    twBorderWidth = TwSizes.spacer40; 
    return _child;
  }
	T get border44 {
    twBorderWidth = TwSizes.spacer44; 
    return _child;
  }
	T get border48 {
    twBorderWidth = TwSizes.spacer48; 
    return _child;
  }
	T get border52 {
    twBorderWidth = TwSizes.spacer52; 
    return _child;
  }
	T get border56 {
    twBorderWidth = TwSizes.spacer56; 
    return _child;
  }
	T get border60 {
    twBorderWidth = TwSizes.spacer60; 
    return _child;
  }
	T get border64 {
    twBorderWidth = TwSizes.spacer64; 
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
	T get borderGray {
      twBorderColor = TwColors.gray;
      return _child;
  }
	T get borderGray50 {
      twBorderColor = TwColors.gray.shade50;
      return _child;
  }
	T get borderGray100 {
      twBorderColor = TwColors.gray.shade100;
      return _child;
  }
	T get borderGray200 {
      twBorderColor = TwColors.gray.shade200;
      return _child;
  }
	T get borderGray300 {
      twBorderColor = TwColors.gray.shade300;
      return _child;
  }
	T get borderGray400 {
      twBorderColor = TwColors.gray.shade400;
      return _child;
  }
	T get borderGray500 {
      twBorderColor = TwColors.gray.shade500;
      return _child;
  }
	T get borderGray600 {
      twBorderColor = TwColors.gray.shade600;
      return _child;
  }
	T get borderGray700 {
      twBorderColor = TwColors.gray.shade700;
      return _child;
  }
	T get borderGray800 {
      twBorderColor = TwColors.gray.shade800;
      return _child;
  }
	T get borderGray900 {
      twBorderColor = TwColors.gray.shade900;
      return _child;
  }
	T get borderBlueGray {
      twBorderColor = TwColors.blueGray;
      return _child;
  }
	T get borderBlueGray50 {
      twBorderColor = TwColors.blueGray.shade50;
      return _child;
  }
	T get borderBlueGray100 {
      twBorderColor = TwColors.blueGray.shade100;
      return _child;
  }
	T get borderBlueGray200 {
      twBorderColor = TwColors.blueGray.shade200;
      return _child;
  }
	T get borderBlueGray300 {
      twBorderColor = TwColors.blueGray.shade300;
      return _child;
  }
	T get borderBlueGray400 {
      twBorderColor = TwColors.blueGray.shade400;
      return _child;
  }
	T get borderBlueGray500 {
      twBorderColor = TwColors.blueGray.shade500;
      return _child;
  }
	T get borderBlueGray600 {
      twBorderColor = TwColors.blueGray.shade600;
      return _child;
  }
	T get borderBlueGray700 {
      twBorderColor = TwColors.blueGray.shade700;
      return _child;
  }
	T get borderBlueGray800 {
      twBorderColor = TwColors.blueGray.shade800;
      return _child;
  }
	T get borderBlueGray900 {
      twBorderColor = TwColors.blueGray.shade900;
      return _child;
  }
	T get borderCoolGray {
      twBorderColor = TwColors.coolGray;
      return _child;
  }
	T get borderCoolGray50 {
      twBorderColor = TwColors.coolGray.shade50;
      return _child;
  }
	T get borderCoolGray100 {
      twBorderColor = TwColors.coolGray.shade100;
      return _child;
  }
	T get borderCoolGray200 {
      twBorderColor = TwColors.coolGray.shade200;
      return _child;
  }
	T get borderCoolGray300 {
      twBorderColor = TwColors.coolGray.shade300;
      return _child;
  }
	T get borderCoolGray400 {
      twBorderColor = TwColors.coolGray.shade400;
      return _child;
  }
	T get borderCoolGray500 {
      twBorderColor = TwColors.coolGray.shade500;
      return _child;
  }
	T get borderCoolGray600 {
      twBorderColor = TwColors.coolGray.shade600;
      return _child;
  }
	T get borderCoolGray700 {
      twBorderColor = TwColors.coolGray.shade700;
      return _child;
  }
	T get borderCoolGray800 {
      twBorderColor = TwColors.coolGray.shade800;
      return _child;
  }
	T get borderCoolGray900 {
      twBorderColor = TwColors.coolGray.shade900;
      return _child;
  }
	T get borderTrueGray {
      twBorderColor = TwColors.trueGray;
      return _child;
  }
	T get borderTrueGray50 {
      twBorderColor = TwColors.trueGray.shade50;
      return _child;
  }
	T get borderTrueGray100 {
      twBorderColor = TwColors.trueGray.shade100;
      return _child;
  }
	T get borderTrueGray200 {
      twBorderColor = TwColors.trueGray.shade200;
      return _child;
  }
	T get borderTrueGray300 {
      twBorderColor = TwColors.trueGray.shade300;
      return _child;
  }
	T get borderTrueGray400 {
      twBorderColor = TwColors.trueGray.shade400;
      return _child;
  }
	T get borderTrueGray500 {
      twBorderColor = TwColors.trueGray.shade500;
      return _child;
  }
	T get borderTrueGray600 {
      twBorderColor = TwColors.trueGray.shade600;
      return _child;
  }
	T get borderTrueGray700 {
      twBorderColor = TwColors.trueGray.shade700;
      return _child;
  }
	T get borderTrueGray800 {
      twBorderColor = TwColors.trueGray.shade800;
      return _child;
  }
	T get borderTrueGray900 {
      twBorderColor = TwColors.trueGray.shade900;
      return _child;
  }
	T get borderWarmGray {
      twBorderColor = TwColors.warmGray;
      return _child;
  }
	T get borderWarmGray50 {
      twBorderColor = TwColors.warmGray.shade50;
      return _child;
  }
	T get borderWarmGray100 {
      twBorderColor = TwColors.warmGray.shade100;
      return _child;
  }
	T get borderWarmGray200 {
      twBorderColor = TwColors.warmGray.shade200;
      return _child;
  }
	T get borderWarmGray300 {
      twBorderColor = TwColors.warmGray.shade300;
      return _child;
  }
	T get borderWarmGray400 {
      twBorderColor = TwColors.warmGray.shade400;
      return _child;
  }
	T get borderWarmGray500 {
      twBorderColor = TwColors.warmGray.shade500;
      return _child;
  }
	T get borderWarmGray600 {
      twBorderColor = TwColors.warmGray.shade600;
      return _child;
  }
	T get borderWarmGray700 {
      twBorderColor = TwColors.warmGray.shade700;
      return _child;
  }
	T get borderWarmGray800 {
      twBorderColor = TwColors.warmGray.shade800;
      return _child;
  }
	T get borderWarmGray900 {
      twBorderColor = TwColors.warmGray.shade900;
      return _child;
  }
	T get borderRed {
      twBorderColor = TwColors.red;
      return _child;
  }
	T get borderRed50 {
      twBorderColor = TwColors.red.shade50;
      return _child;
  }
	T get borderRed100 {
      twBorderColor = TwColors.red.shade100;
      return _child;
  }
	T get borderRed200 {
      twBorderColor = TwColors.red.shade200;
      return _child;
  }
	T get borderRed300 {
      twBorderColor = TwColors.red.shade300;
      return _child;
  }
	T get borderRed400 {
      twBorderColor = TwColors.red.shade400;
      return _child;
  }
	T get borderRed500 {
      twBorderColor = TwColors.red.shade500;
      return _child;
  }
	T get borderRed600 {
      twBorderColor = TwColors.red.shade600;
      return _child;
  }
	T get borderRed700 {
      twBorderColor = TwColors.red.shade700;
      return _child;
  }
	T get borderRed800 {
      twBorderColor = TwColors.red.shade800;
      return _child;
  }
	T get borderRed900 {
      twBorderColor = TwColors.red.shade900;
      return _child;
  }
	T get borderOrange {
      twBorderColor = TwColors.orange;
      return _child;
  }
	T get borderOrange50 {
      twBorderColor = TwColors.orange.shade50;
      return _child;
  }
	T get borderOrange100 {
      twBorderColor = TwColors.orange.shade100;
      return _child;
  }
	T get borderOrange200 {
      twBorderColor = TwColors.orange.shade200;
      return _child;
  }
	T get borderOrange300 {
      twBorderColor = TwColors.orange.shade300;
      return _child;
  }
	T get borderOrange400 {
      twBorderColor = TwColors.orange.shade400;
      return _child;
  }
	T get borderOrange500 {
      twBorderColor = TwColors.orange.shade500;
      return _child;
  }
	T get borderOrange600 {
      twBorderColor = TwColors.orange.shade600;
      return _child;
  }
	T get borderOrange700 {
      twBorderColor = TwColors.orange.shade700;
      return _child;
  }
	T get borderOrange800 {
      twBorderColor = TwColors.orange.shade800;
      return _child;
  }
	T get borderOrange900 {
      twBorderColor = TwColors.orange.shade900;
      return _child;
  }
	T get borderAmber {
      twBorderColor = TwColors.amber;
      return _child;
  }
	T get borderAmber50 {
      twBorderColor = TwColors.amber.shade50;
      return _child;
  }
	T get borderAmber100 {
      twBorderColor = TwColors.amber.shade100;
      return _child;
  }
	T get borderAmber200 {
      twBorderColor = TwColors.amber.shade200;
      return _child;
  }
	T get borderAmber300 {
      twBorderColor = TwColors.amber.shade300;
      return _child;
  }
	T get borderAmber400 {
      twBorderColor = TwColors.amber.shade400;
      return _child;
  }
	T get borderAmber500 {
      twBorderColor = TwColors.amber.shade500;
      return _child;
  }
	T get borderAmber600 {
      twBorderColor = TwColors.amber.shade600;
      return _child;
  }
	T get borderAmber700 {
      twBorderColor = TwColors.amber.shade700;
      return _child;
  }
	T get borderAmber800 {
      twBorderColor = TwColors.amber.shade800;
      return _child;
  }
	T get borderAmber900 {
      twBorderColor = TwColors.amber.shade900;
      return _child;
  }
	T get borderYellow {
      twBorderColor = TwColors.yellow;
      return _child;
  }
	T get borderYellow50 {
      twBorderColor = TwColors.yellow.shade50;
      return _child;
  }
	T get borderYellow100 {
      twBorderColor = TwColors.yellow.shade100;
      return _child;
  }
	T get borderYellow200 {
      twBorderColor = TwColors.yellow.shade200;
      return _child;
  }
	T get borderYellow300 {
      twBorderColor = TwColors.yellow.shade300;
      return _child;
  }
	T get borderYellow400 {
      twBorderColor = TwColors.yellow.shade400;
      return _child;
  }
	T get borderYellow500 {
      twBorderColor = TwColors.yellow.shade500;
      return _child;
  }
	T get borderYellow600 {
      twBorderColor = TwColors.yellow.shade600;
      return _child;
  }
	T get borderYellow700 {
      twBorderColor = TwColors.yellow.shade700;
      return _child;
  }
	T get borderYellow800 {
      twBorderColor = TwColors.yellow.shade800;
      return _child;
  }
	T get borderYellow900 {
      twBorderColor = TwColors.yellow.shade900;
      return _child;
  }
	T get borderLime {
      twBorderColor = TwColors.lime;
      return _child;
  }
	T get borderLime50 {
      twBorderColor = TwColors.lime.shade50;
      return _child;
  }
	T get borderLime100 {
      twBorderColor = TwColors.lime.shade100;
      return _child;
  }
	T get borderLime200 {
      twBorderColor = TwColors.lime.shade200;
      return _child;
  }
	T get borderLime300 {
      twBorderColor = TwColors.lime.shade300;
      return _child;
  }
	T get borderLime400 {
      twBorderColor = TwColors.lime.shade400;
      return _child;
  }
	T get borderLime500 {
      twBorderColor = TwColors.lime.shade500;
      return _child;
  }
	T get borderLime600 {
      twBorderColor = TwColors.lime.shade600;
      return _child;
  }
	T get borderLime700 {
      twBorderColor = TwColors.lime.shade700;
      return _child;
  }
	T get borderLime800 {
      twBorderColor = TwColors.lime.shade800;
      return _child;
  }
	T get borderLime900 {
      twBorderColor = TwColors.lime.shade900;
      return _child;
  }
	T get borderGreen {
      twBorderColor = TwColors.green;
      return _child;
  }
	T get borderGreen50 {
      twBorderColor = TwColors.green.shade50;
      return _child;
  }
	T get borderGreen100 {
      twBorderColor = TwColors.green.shade100;
      return _child;
  }
	T get borderGreen200 {
      twBorderColor = TwColors.green.shade200;
      return _child;
  }
	T get borderGreen300 {
      twBorderColor = TwColors.green.shade300;
      return _child;
  }
	T get borderGreen400 {
      twBorderColor = TwColors.green.shade400;
      return _child;
  }
	T get borderGreen500 {
      twBorderColor = TwColors.green.shade500;
      return _child;
  }
	T get borderGreen600 {
      twBorderColor = TwColors.green.shade600;
      return _child;
  }
	T get borderGreen700 {
      twBorderColor = TwColors.green.shade700;
      return _child;
  }
	T get borderGreen800 {
      twBorderColor = TwColors.green.shade800;
      return _child;
  }
	T get borderGreen900 {
      twBorderColor = TwColors.green.shade900;
      return _child;
  }
	T get borderEmerald {
      twBorderColor = TwColors.emerald;
      return _child;
  }
	T get borderEmerald50 {
      twBorderColor = TwColors.emerald.shade50;
      return _child;
  }
	T get borderEmerald100 {
      twBorderColor = TwColors.emerald.shade100;
      return _child;
  }
	T get borderEmerald200 {
      twBorderColor = TwColors.emerald.shade200;
      return _child;
  }
	T get borderEmerald300 {
      twBorderColor = TwColors.emerald.shade300;
      return _child;
  }
	T get borderEmerald400 {
      twBorderColor = TwColors.emerald.shade400;
      return _child;
  }
	T get borderEmerald500 {
      twBorderColor = TwColors.emerald.shade500;
      return _child;
  }
	T get borderEmerald600 {
      twBorderColor = TwColors.emerald.shade600;
      return _child;
  }
	T get borderEmerald700 {
      twBorderColor = TwColors.emerald.shade700;
      return _child;
  }
	T get borderEmerald800 {
      twBorderColor = TwColors.emerald.shade800;
      return _child;
  }
	T get borderEmerald900 {
      twBorderColor = TwColors.emerald.shade900;
      return _child;
  }
	T get borderTeal {
      twBorderColor = TwColors.teal;
      return _child;
  }
	T get borderTeal50 {
      twBorderColor = TwColors.teal.shade50;
      return _child;
  }
	T get borderTeal100 {
      twBorderColor = TwColors.teal.shade100;
      return _child;
  }
	T get borderTeal200 {
      twBorderColor = TwColors.teal.shade200;
      return _child;
  }
	T get borderTeal300 {
      twBorderColor = TwColors.teal.shade300;
      return _child;
  }
	T get borderTeal400 {
      twBorderColor = TwColors.teal.shade400;
      return _child;
  }
	T get borderTeal500 {
      twBorderColor = TwColors.teal.shade500;
      return _child;
  }
	T get borderTeal600 {
      twBorderColor = TwColors.teal.shade600;
      return _child;
  }
	T get borderTeal700 {
      twBorderColor = TwColors.teal.shade700;
      return _child;
  }
	T get borderTeal800 {
      twBorderColor = TwColors.teal.shade800;
      return _child;
  }
	T get borderTeal900 {
      twBorderColor = TwColors.teal.shade900;
      return _child;
  }
	T get borderCyan {
      twBorderColor = TwColors.cyan;
      return _child;
  }
	T get borderCyan50 {
      twBorderColor = TwColors.cyan.shade50;
      return _child;
  }
	T get borderCyan100 {
      twBorderColor = TwColors.cyan.shade100;
      return _child;
  }
	T get borderCyan200 {
      twBorderColor = TwColors.cyan.shade200;
      return _child;
  }
	T get borderCyan300 {
      twBorderColor = TwColors.cyan.shade300;
      return _child;
  }
	T get borderCyan400 {
      twBorderColor = TwColors.cyan.shade400;
      return _child;
  }
	T get borderCyan500 {
      twBorderColor = TwColors.cyan.shade500;
      return _child;
  }
	T get borderCyan600 {
      twBorderColor = TwColors.cyan.shade600;
      return _child;
  }
	T get borderCyan700 {
      twBorderColor = TwColors.cyan.shade700;
      return _child;
  }
	T get borderCyan800 {
      twBorderColor = TwColors.cyan.shade800;
      return _child;
  }
	T get borderCyan900 {
      twBorderColor = TwColors.cyan.shade900;
      return _child;
  }
	T get borderLightBlue {
      twBorderColor = TwColors.lightBlue;
      return _child;
  }
	T get borderLightBlue50 {
      twBorderColor = TwColors.lightBlue.shade50;
      return _child;
  }
	T get borderLightBlue100 {
      twBorderColor = TwColors.lightBlue.shade100;
      return _child;
  }
	T get borderLightBlue200 {
      twBorderColor = TwColors.lightBlue.shade200;
      return _child;
  }
	T get borderLightBlue300 {
      twBorderColor = TwColors.lightBlue.shade300;
      return _child;
  }
	T get borderLightBlue400 {
      twBorderColor = TwColors.lightBlue.shade400;
      return _child;
  }
	T get borderLightBlue500 {
      twBorderColor = TwColors.lightBlue.shade500;
      return _child;
  }
	T get borderLightBlue600 {
      twBorderColor = TwColors.lightBlue.shade600;
      return _child;
  }
	T get borderLightBlue700 {
      twBorderColor = TwColors.lightBlue.shade700;
      return _child;
  }
	T get borderLightBlue800 {
      twBorderColor = TwColors.lightBlue.shade800;
      return _child;
  }
	T get borderLightBlue900 {
      twBorderColor = TwColors.lightBlue.shade900;
      return _child;
  }
	T get borderBlue {
      twBorderColor = TwColors.blue;
      return _child;
  }
	T get borderBlue50 {
      twBorderColor = TwColors.blue.shade50;
      return _child;
  }
	T get borderBlue100 {
      twBorderColor = TwColors.blue.shade100;
      return _child;
  }
	T get borderBlue200 {
      twBorderColor = TwColors.blue.shade200;
      return _child;
  }
	T get borderBlue300 {
      twBorderColor = TwColors.blue.shade300;
      return _child;
  }
	T get borderBlue400 {
      twBorderColor = TwColors.blue.shade400;
      return _child;
  }
	T get borderBlue500 {
      twBorderColor = TwColors.blue.shade500;
      return _child;
  }
	T get borderBlue600 {
      twBorderColor = TwColors.blue.shade600;
      return _child;
  }
	T get borderBlue700 {
      twBorderColor = TwColors.blue.shade700;
      return _child;
  }
	T get borderBlue800 {
      twBorderColor = TwColors.blue.shade800;
      return _child;
  }
	T get borderBlue900 {
      twBorderColor = TwColors.blue.shade900;
      return _child;
  }
	T get borderIndigo {
      twBorderColor = TwColors.indigo;
      return _child;
  }
	T get borderIndigo50 {
      twBorderColor = TwColors.indigo.shade50;
      return _child;
  }
	T get borderIndigo100 {
      twBorderColor = TwColors.indigo.shade100;
      return _child;
  }
	T get borderIndigo200 {
      twBorderColor = TwColors.indigo.shade200;
      return _child;
  }
	T get borderIndigo300 {
      twBorderColor = TwColors.indigo.shade300;
      return _child;
  }
	T get borderIndigo400 {
      twBorderColor = TwColors.indigo.shade400;
      return _child;
  }
	T get borderIndigo500 {
      twBorderColor = TwColors.indigo.shade500;
      return _child;
  }
	T get borderIndigo600 {
      twBorderColor = TwColors.indigo.shade600;
      return _child;
  }
	T get borderIndigo700 {
      twBorderColor = TwColors.indigo.shade700;
      return _child;
  }
	T get borderIndigo800 {
      twBorderColor = TwColors.indigo.shade800;
      return _child;
  }
	T get borderIndigo900 {
      twBorderColor = TwColors.indigo.shade900;
      return _child;
  }
	T get borderViolet {
      twBorderColor = TwColors.violet;
      return _child;
  }
	T get borderViolet50 {
      twBorderColor = TwColors.violet.shade50;
      return _child;
  }
	T get borderViolet100 {
      twBorderColor = TwColors.violet.shade100;
      return _child;
  }
	T get borderViolet200 {
      twBorderColor = TwColors.violet.shade200;
      return _child;
  }
	T get borderViolet300 {
      twBorderColor = TwColors.violet.shade300;
      return _child;
  }
	T get borderViolet400 {
      twBorderColor = TwColors.violet.shade400;
      return _child;
  }
	T get borderViolet500 {
      twBorderColor = TwColors.violet.shade500;
      return _child;
  }
	T get borderViolet600 {
      twBorderColor = TwColors.violet.shade600;
      return _child;
  }
	T get borderViolet700 {
      twBorderColor = TwColors.violet.shade700;
      return _child;
  }
	T get borderViolet800 {
      twBorderColor = TwColors.violet.shade800;
      return _child;
  }
	T get borderViolet900 {
      twBorderColor = TwColors.violet.shade900;
      return _child;
  }
	T get borderPurple {
      twBorderColor = TwColors.purple;
      return _child;
  }
	T get borderPurple50 {
      twBorderColor = TwColors.purple.shade50;
      return _child;
  }
	T get borderPurple100 {
      twBorderColor = TwColors.purple.shade100;
      return _child;
  }
	T get borderPurple200 {
      twBorderColor = TwColors.purple.shade200;
      return _child;
  }
	T get borderPurple300 {
      twBorderColor = TwColors.purple.shade300;
      return _child;
  }
	T get borderPurple400 {
      twBorderColor = TwColors.purple.shade400;
      return _child;
  }
	T get borderPurple500 {
      twBorderColor = TwColors.purple.shade500;
      return _child;
  }
	T get borderPurple600 {
      twBorderColor = TwColors.purple.shade600;
      return _child;
  }
	T get borderPurple700 {
      twBorderColor = TwColors.purple.shade700;
      return _child;
  }
	T get borderPurple800 {
      twBorderColor = TwColors.purple.shade800;
      return _child;
  }
	T get borderPurple900 {
      twBorderColor = TwColors.purple.shade900;
      return _child;
  }
	T get borderFuchsia {
      twBorderColor = TwColors.fuchsia;
      return _child;
  }
	T get borderFuchsia50 {
      twBorderColor = TwColors.fuchsia.shade50;
      return _child;
  }
	T get borderFuchsia100 {
      twBorderColor = TwColors.fuchsia.shade100;
      return _child;
  }
	T get borderFuchsia200 {
      twBorderColor = TwColors.fuchsia.shade200;
      return _child;
  }
	T get borderFuchsia300 {
      twBorderColor = TwColors.fuchsia.shade300;
      return _child;
  }
	T get borderFuchsia400 {
      twBorderColor = TwColors.fuchsia.shade400;
      return _child;
  }
	T get borderFuchsia500 {
      twBorderColor = TwColors.fuchsia.shade500;
      return _child;
  }
	T get borderFuchsia600 {
      twBorderColor = TwColors.fuchsia.shade600;
      return _child;
  }
	T get borderFuchsia700 {
      twBorderColor = TwColors.fuchsia.shade700;
      return _child;
  }
	T get borderFuchsia800 {
      twBorderColor = TwColors.fuchsia.shade800;
      return _child;
  }
	T get borderFuchsia900 {
      twBorderColor = TwColors.fuchsia.shade900;
      return _child;
  }
	T get borderPink {
      twBorderColor = TwColors.pink;
      return _child;
  }
	T get borderPink50 {
      twBorderColor = TwColors.pink.shade50;
      return _child;
  }
	T get borderPink100 {
      twBorderColor = TwColors.pink.shade100;
      return _child;
  }
	T get borderPink200 {
      twBorderColor = TwColors.pink.shade200;
      return _child;
  }
	T get borderPink300 {
      twBorderColor = TwColors.pink.shade300;
      return _child;
  }
	T get borderPink400 {
      twBorderColor = TwColors.pink.shade400;
      return _child;
  }
	T get borderPink500 {
      twBorderColor = TwColors.pink.shade500;
      return _child;
  }
	T get borderPink600 {
      twBorderColor = TwColors.pink.shade600;
      return _child;
  }
	T get borderPink700 {
      twBorderColor = TwColors.pink.shade700;
      return _child;
  }
	T get borderPink800 {
      twBorderColor = TwColors.pink.shade800;
      return _child;
  }
	T get borderPink900 {
      twBorderColor = TwColors.pink.shade900;
      return _child;
  }
	T get borderRose {
      twBorderColor = TwColors.rose;
      return _child;
  }
	T get borderRose50 {
      twBorderColor = TwColors.rose.shade50;
      return _child;
  }
	T get borderRose100 {
      twBorderColor = TwColors.rose.shade100;
      return _child;
  }
	T get borderRose200 {
      twBorderColor = TwColors.rose.shade200;
      return _child;
  }
	T get borderRose300 {
      twBorderColor = TwColors.rose.shade300;
      return _child;
  }
	T get borderRose400 {
      twBorderColor = TwColors.rose.shade400;
      return _child;
  }
	T get borderRose500 {
      twBorderColor = TwColors.rose.shade500;
      return _child;
  }
	T get borderRose600 {
      twBorderColor = TwColors.rose.shade600;
      return _child;
  }
	T get borderRose700 {
      twBorderColor = TwColors.rose.shade700;
      return _child;
  }
	T get borderRose800 {
      twBorderColor = TwColors.rose.shade800;
      return _child;
  }
	T get borderRose900 {
      twBorderColor = TwColors.rose.shade900;
      return _child;
  }
	T get borderPrimary {
      twBorderColor = TwColors.primary;
      return _child;
  }
	
}


