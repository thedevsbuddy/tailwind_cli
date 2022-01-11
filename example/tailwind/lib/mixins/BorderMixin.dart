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
    twBorderWidth = Tw.spacer; 
    return _child;
  }
	T get border0 {
    twBorderWidth = Tw.spacer0; 
    return _child;
  }
	T get border1 {
    twBorderWidth = Tw.spacer1; 
    return _child;
  }
	T get border2 {
    twBorderWidth = Tw.spacer2; 
    return _child;
  }
	T get border3 {
    twBorderWidth = Tw.spacer3; 
    return _child;
  }
	T get border4 {
    twBorderWidth = Tw.spacer4; 
    return _child;
  }
	T get border5 {
    twBorderWidth = Tw.spacer5; 
    return _child;
  }
	T get border6 {
    twBorderWidth = Tw.spacer6; 
    return _child;
  }
	T get border7 {
    twBorderWidth = Tw.spacer7; 
    return _child;
  }
	T get border8 {
    twBorderWidth = Tw.spacer8; 
    return _child;
  }
	T get border9 {
    twBorderWidth = Tw.spacer9; 
    return _child;
  }
	T get border10 {
    twBorderWidth = Tw.spacer10; 
    return _child;
  }
	T get border11 {
    twBorderWidth = Tw.spacer11; 
    return _child;
  }
	T get border12 {
    twBorderWidth = Tw.spacer12; 
    return _child;
  }
	T get border14 {
    twBorderWidth = Tw.spacer14; 
    return _child;
  }
	T get border16 {
    twBorderWidth = Tw.spacer16; 
    return _child;
  }
	T get border20 {
    twBorderWidth = Tw.spacer20; 
    return _child;
  }
	T get border24 {
    twBorderWidth = Tw.spacer24; 
    return _child;
  }
	T get border28 {
    twBorderWidth = Tw.spacer28; 
    return _child;
  }
	T get border32 {
    twBorderWidth = Tw.spacer32; 
    return _child;
  }
	T get border36 {
    twBorderWidth = Tw.spacer36; 
    return _child;
  }
	T get border40 {
    twBorderWidth = Tw.spacer40; 
    return _child;
  }
	T get border44 {
    twBorderWidth = Tw.spacer44; 
    return _child;
  }
	T get border48 {
    twBorderWidth = Tw.spacer48; 
    return _child;
  }
	T get border52 {
    twBorderWidth = Tw.spacer52; 
    return _child;
  }
	T get border56 {
    twBorderWidth = Tw.spacer56; 
    return _child;
  }
	T get border60 {
    twBorderWidth = Tw.spacer60; 
    return _child;
  }
	T get border64 {
    twBorderWidth = Tw.spacer64; 
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

  T get borderBlack {
      twBorderColor = Tw.black;
      return _child;
  }
	T get borderWhite {
      twBorderColor = Tw.white;
      return _child;
  }
	T get borderTransparent {
      twBorderColor = Tw.transparent;
      return _child;
  }
	T get borderGray50 {
      twBorderColor = Tw.gray50;
      return _child;
  }
	T get borderGray100 {
      twBorderColor = Tw.gray100;
      return _child;
  }
	T get borderGray200 {
      twBorderColor = Tw.gray200;
      return _child;
  }
	T get borderGray300 {
      twBorderColor = Tw.gray300;
      return _child;
  }
	T get borderGray400 {
      twBorderColor = Tw.gray400;
      return _child;
  }
	T get borderGray500 {
      twBorderColor = Tw.gray500;
      return _child;
  }
	T get borderGray600 {
      twBorderColor = Tw.gray600;
      return _child;
  }
	T get borderGray700 {
      twBorderColor = Tw.gray700;
      return _child;
  }
	T get borderGray800 {
      twBorderColor = Tw.gray800;
      return _child;
  }
	T get borderGray900 {
      twBorderColor = Tw.gray900;
      return _child;
  }
	T get borderBlueGray50 {
      twBorderColor = Tw.blueGray50;
      return _child;
  }
	T get borderBlueGray100 {
      twBorderColor = Tw.blueGray100;
      return _child;
  }
	T get borderBlueGray200 {
      twBorderColor = Tw.blueGray200;
      return _child;
  }
	T get borderBlueGray300 {
      twBorderColor = Tw.blueGray300;
      return _child;
  }
	T get borderBlueGray400 {
      twBorderColor = Tw.blueGray400;
      return _child;
  }
	T get borderBlueGray500 {
      twBorderColor = Tw.blueGray500;
      return _child;
  }
	T get borderBlueGray600 {
      twBorderColor = Tw.blueGray600;
      return _child;
  }
	T get borderBlueGray700 {
      twBorderColor = Tw.blueGray700;
      return _child;
  }
	T get borderBlueGray800 {
      twBorderColor = Tw.blueGray800;
      return _child;
  }
	T get borderBlueGray900 {
      twBorderColor = Tw.blueGray900;
      return _child;
  }
	T get borderCoolGray50 {
      twBorderColor = Tw.coolGray50;
      return _child;
  }
	T get borderCoolGray100 {
      twBorderColor = Tw.coolGray100;
      return _child;
  }
	T get borderCoolGray200 {
      twBorderColor = Tw.coolGray200;
      return _child;
  }
	T get borderCoolGray300 {
      twBorderColor = Tw.coolGray300;
      return _child;
  }
	T get borderCoolGray400 {
      twBorderColor = Tw.coolGray400;
      return _child;
  }
	T get borderCoolGray500 {
      twBorderColor = Tw.coolGray500;
      return _child;
  }
	T get borderCoolGray600 {
      twBorderColor = Tw.coolGray600;
      return _child;
  }
	T get borderCoolGray700 {
      twBorderColor = Tw.coolGray700;
      return _child;
  }
	T get borderCoolGray800 {
      twBorderColor = Tw.coolGray800;
      return _child;
  }
	T get borderCoolGray900 {
      twBorderColor = Tw.coolGray900;
      return _child;
  }
	T get borderTrueGray50 {
      twBorderColor = Tw.trueGray50;
      return _child;
  }
	T get borderTrueGray100 {
      twBorderColor = Tw.trueGray100;
      return _child;
  }
	T get borderTrueGray200 {
      twBorderColor = Tw.trueGray200;
      return _child;
  }
	T get borderTrueGray300 {
      twBorderColor = Tw.trueGray300;
      return _child;
  }
	T get borderTrueGray400 {
      twBorderColor = Tw.trueGray400;
      return _child;
  }
	T get borderTrueGray500 {
      twBorderColor = Tw.trueGray500;
      return _child;
  }
	T get borderTrueGray600 {
      twBorderColor = Tw.trueGray600;
      return _child;
  }
	T get borderTrueGray700 {
      twBorderColor = Tw.trueGray700;
      return _child;
  }
	T get borderTrueGray800 {
      twBorderColor = Tw.trueGray800;
      return _child;
  }
	T get borderTrueGray900 {
      twBorderColor = Tw.trueGray900;
      return _child;
  }
	T get borderWarmGray50 {
      twBorderColor = Tw.warmGray50;
      return _child;
  }
	T get borderWarmGray100 {
      twBorderColor = Tw.warmGray100;
      return _child;
  }
	T get borderWarmGray200 {
      twBorderColor = Tw.warmGray200;
      return _child;
  }
	T get borderWarmGray300 {
      twBorderColor = Tw.warmGray300;
      return _child;
  }
	T get borderWarmGray400 {
      twBorderColor = Tw.warmGray400;
      return _child;
  }
	T get borderWarmGray500 {
      twBorderColor = Tw.warmGray500;
      return _child;
  }
	T get borderWarmGray600 {
      twBorderColor = Tw.warmGray600;
      return _child;
  }
	T get borderWarmGray700 {
      twBorderColor = Tw.warmGray700;
      return _child;
  }
	T get borderWarmGray800 {
      twBorderColor = Tw.warmGray800;
      return _child;
  }
	T get borderWarmGray900 {
      twBorderColor = Tw.warmGray900;
      return _child;
  }
	T get borderRed50 {
      twBorderColor = Tw.red50;
      return _child;
  }
	T get borderRed100 {
      twBorderColor = Tw.red100;
      return _child;
  }
	T get borderRed200 {
      twBorderColor = Tw.red200;
      return _child;
  }
	T get borderRed300 {
      twBorderColor = Tw.red300;
      return _child;
  }
	T get borderRed400 {
      twBorderColor = Tw.red400;
      return _child;
  }
	T get borderRed500 {
      twBorderColor = Tw.red500;
      return _child;
  }
	T get borderRed600 {
      twBorderColor = Tw.red600;
      return _child;
  }
	T get borderRed700 {
      twBorderColor = Tw.red700;
      return _child;
  }
	T get borderRed800 {
      twBorderColor = Tw.red800;
      return _child;
  }
	T get borderRed900 {
      twBorderColor = Tw.red900;
      return _child;
  }
	T get borderOrange50 {
      twBorderColor = Tw.orange50;
      return _child;
  }
	T get borderOrange100 {
      twBorderColor = Tw.orange100;
      return _child;
  }
	T get borderOrange200 {
      twBorderColor = Tw.orange200;
      return _child;
  }
	T get borderOrange300 {
      twBorderColor = Tw.orange300;
      return _child;
  }
	T get borderOrange400 {
      twBorderColor = Tw.orange400;
      return _child;
  }
	T get borderOrange500 {
      twBorderColor = Tw.orange500;
      return _child;
  }
	T get borderOrange600 {
      twBorderColor = Tw.orange600;
      return _child;
  }
	T get borderOrange700 {
      twBorderColor = Tw.orange700;
      return _child;
  }
	T get borderOrange800 {
      twBorderColor = Tw.orange800;
      return _child;
  }
	T get borderOrange900 {
      twBorderColor = Tw.orange900;
      return _child;
  }
	T get borderAmber50 {
      twBorderColor = Tw.amber50;
      return _child;
  }
	T get borderAmber100 {
      twBorderColor = Tw.amber100;
      return _child;
  }
	T get borderAmber200 {
      twBorderColor = Tw.amber200;
      return _child;
  }
	T get borderAmber300 {
      twBorderColor = Tw.amber300;
      return _child;
  }
	T get borderAmber400 {
      twBorderColor = Tw.amber400;
      return _child;
  }
	T get borderAmber500 {
      twBorderColor = Tw.amber500;
      return _child;
  }
	T get borderAmber600 {
      twBorderColor = Tw.amber600;
      return _child;
  }
	T get borderAmber700 {
      twBorderColor = Tw.amber700;
      return _child;
  }
	T get borderAmber800 {
      twBorderColor = Tw.amber800;
      return _child;
  }
	T get borderAmber900 {
      twBorderColor = Tw.amber900;
      return _child;
  }
	T get borderYellow50 {
      twBorderColor = Tw.yellow50;
      return _child;
  }
	T get borderYellow100 {
      twBorderColor = Tw.yellow100;
      return _child;
  }
	T get borderYellow200 {
      twBorderColor = Tw.yellow200;
      return _child;
  }
	T get borderYellow300 {
      twBorderColor = Tw.yellow300;
      return _child;
  }
	T get borderYellow400 {
      twBorderColor = Tw.yellow400;
      return _child;
  }
	T get borderYellow500 {
      twBorderColor = Tw.yellow500;
      return _child;
  }
	T get borderYellow600 {
      twBorderColor = Tw.yellow600;
      return _child;
  }
	T get borderYellow700 {
      twBorderColor = Tw.yellow700;
      return _child;
  }
	T get borderYellow800 {
      twBorderColor = Tw.yellow800;
      return _child;
  }
	T get borderYellow900 {
      twBorderColor = Tw.yellow900;
      return _child;
  }
	T get borderLime50 {
      twBorderColor = Tw.lime50;
      return _child;
  }
	T get borderLime100 {
      twBorderColor = Tw.lime100;
      return _child;
  }
	T get borderLime200 {
      twBorderColor = Tw.lime200;
      return _child;
  }
	T get borderLime300 {
      twBorderColor = Tw.lime300;
      return _child;
  }
	T get borderLime400 {
      twBorderColor = Tw.lime400;
      return _child;
  }
	T get borderLime500 {
      twBorderColor = Tw.lime500;
      return _child;
  }
	T get borderLime600 {
      twBorderColor = Tw.lime600;
      return _child;
  }
	T get borderLime700 {
      twBorderColor = Tw.lime700;
      return _child;
  }
	T get borderLime800 {
      twBorderColor = Tw.lime800;
      return _child;
  }
	T get borderLime900 {
      twBorderColor = Tw.lime900;
      return _child;
  }
	T get borderGreen50 {
      twBorderColor = Tw.green50;
      return _child;
  }
	T get borderGreen100 {
      twBorderColor = Tw.green100;
      return _child;
  }
	T get borderGreen200 {
      twBorderColor = Tw.green200;
      return _child;
  }
	T get borderGreen300 {
      twBorderColor = Tw.green300;
      return _child;
  }
	T get borderGreen400 {
      twBorderColor = Tw.green400;
      return _child;
  }
	T get borderGreen500 {
      twBorderColor = Tw.green500;
      return _child;
  }
	T get borderGreen600 {
      twBorderColor = Tw.green600;
      return _child;
  }
	T get borderGreen700 {
      twBorderColor = Tw.green700;
      return _child;
  }
	T get borderGreen800 {
      twBorderColor = Tw.green800;
      return _child;
  }
	T get borderGreen900 {
      twBorderColor = Tw.green900;
      return _child;
  }
	T get borderEmerald50 {
      twBorderColor = Tw.emerald50;
      return _child;
  }
	T get borderEmerald100 {
      twBorderColor = Tw.emerald100;
      return _child;
  }
	T get borderEmerald200 {
      twBorderColor = Tw.emerald200;
      return _child;
  }
	T get borderEmerald300 {
      twBorderColor = Tw.emerald300;
      return _child;
  }
	T get borderEmerald400 {
      twBorderColor = Tw.emerald400;
      return _child;
  }
	T get borderEmerald500 {
      twBorderColor = Tw.emerald500;
      return _child;
  }
	T get borderEmerald600 {
      twBorderColor = Tw.emerald600;
      return _child;
  }
	T get borderEmerald700 {
      twBorderColor = Tw.emerald700;
      return _child;
  }
	T get borderEmerald800 {
      twBorderColor = Tw.emerald800;
      return _child;
  }
	T get borderEmerald900 {
      twBorderColor = Tw.emerald900;
      return _child;
  }
	T get borderTeal50 {
      twBorderColor = Tw.teal50;
      return _child;
  }
	T get borderTeal100 {
      twBorderColor = Tw.teal100;
      return _child;
  }
	T get borderTeal200 {
      twBorderColor = Tw.teal200;
      return _child;
  }
	T get borderTeal300 {
      twBorderColor = Tw.teal300;
      return _child;
  }
	T get borderTeal400 {
      twBorderColor = Tw.teal400;
      return _child;
  }
	T get borderTeal500 {
      twBorderColor = Tw.teal500;
      return _child;
  }
	T get borderTeal600 {
      twBorderColor = Tw.teal600;
      return _child;
  }
	T get borderTeal700 {
      twBorderColor = Tw.teal700;
      return _child;
  }
	T get borderTeal800 {
      twBorderColor = Tw.teal800;
      return _child;
  }
	T get borderTeal900 {
      twBorderColor = Tw.teal900;
      return _child;
  }
	T get borderCyan50 {
      twBorderColor = Tw.cyan50;
      return _child;
  }
	T get borderCyan100 {
      twBorderColor = Tw.cyan100;
      return _child;
  }
	T get borderCyan200 {
      twBorderColor = Tw.cyan200;
      return _child;
  }
	T get borderCyan300 {
      twBorderColor = Tw.cyan300;
      return _child;
  }
	T get borderCyan400 {
      twBorderColor = Tw.cyan400;
      return _child;
  }
	T get borderCyan500 {
      twBorderColor = Tw.cyan500;
      return _child;
  }
	T get borderCyan600 {
      twBorderColor = Tw.cyan600;
      return _child;
  }
	T get borderCyan700 {
      twBorderColor = Tw.cyan700;
      return _child;
  }
	T get borderCyan800 {
      twBorderColor = Tw.cyan800;
      return _child;
  }
	T get borderCyan900 {
      twBorderColor = Tw.cyan900;
      return _child;
  }
	T get borderLightBlue50 {
      twBorderColor = Tw.lightBlue50;
      return _child;
  }
	T get borderLightBlue100 {
      twBorderColor = Tw.lightBlue100;
      return _child;
  }
	T get borderLightBlue200 {
      twBorderColor = Tw.lightBlue200;
      return _child;
  }
	T get borderLightBlue300 {
      twBorderColor = Tw.lightBlue300;
      return _child;
  }
	T get borderLightBlue400 {
      twBorderColor = Tw.lightBlue400;
      return _child;
  }
	T get borderLightBlue500 {
      twBorderColor = Tw.lightBlue500;
      return _child;
  }
	T get borderLightBlue600 {
      twBorderColor = Tw.lightBlue600;
      return _child;
  }
	T get borderLightBlue700 {
      twBorderColor = Tw.lightBlue700;
      return _child;
  }
	T get borderLightBlue800 {
      twBorderColor = Tw.lightBlue800;
      return _child;
  }
	T get borderLightBlue900 {
      twBorderColor = Tw.lightBlue900;
      return _child;
  }
	T get borderBlue50 {
      twBorderColor = Tw.blue50;
      return _child;
  }
	T get borderBlue100 {
      twBorderColor = Tw.blue100;
      return _child;
  }
	T get borderBlue200 {
      twBorderColor = Tw.blue200;
      return _child;
  }
	T get borderBlue300 {
      twBorderColor = Tw.blue300;
      return _child;
  }
	T get borderBlue400 {
      twBorderColor = Tw.blue400;
      return _child;
  }
	T get borderBlue500 {
      twBorderColor = Tw.blue500;
      return _child;
  }
	T get borderBlue600 {
      twBorderColor = Tw.blue600;
      return _child;
  }
	T get borderBlue700 {
      twBorderColor = Tw.blue700;
      return _child;
  }
	T get borderBlue800 {
      twBorderColor = Tw.blue800;
      return _child;
  }
	T get borderBlue900 {
      twBorderColor = Tw.blue900;
      return _child;
  }
	T get borderIndigo50 {
      twBorderColor = Tw.indigo50;
      return _child;
  }
	T get borderIndigo100 {
      twBorderColor = Tw.indigo100;
      return _child;
  }
	T get borderIndigo200 {
      twBorderColor = Tw.indigo200;
      return _child;
  }
	T get borderIndigo300 {
      twBorderColor = Tw.indigo300;
      return _child;
  }
	T get borderIndigo400 {
      twBorderColor = Tw.indigo400;
      return _child;
  }
	T get borderIndigo500 {
      twBorderColor = Tw.indigo500;
      return _child;
  }
	T get borderIndigo600 {
      twBorderColor = Tw.indigo600;
      return _child;
  }
	T get borderIndigo700 {
      twBorderColor = Tw.indigo700;
      return _child;
  }
	T get borderIndigo800 {
      twBorderColor = Tw.indigo800;
      return _child;
  }
	T get borderIndigo900 {
      twBorderColor = Tw.indigo900;
      return _child;
  }
	T get borderViolet50 {
      twBorderColor = Tw.violet50;
      return _child;
  }
	T get borderViolet100 {
      twBorderColor = Tw.violet100;
      return _child;
  }
	T get borderViolet200 {
      twBorderColor = Tw.violet200;
      return _child;
  }
	T get borderViolet300 {
      twBorderColor = Tw.violet300;
      return _child;
  }
	T get borderViolet400 {
      twBorderColor = Tw.violet400;
      return _child;
  }
	T get borderViolet500 {
      twBorderColor = Tw.violet500;
      return _child;
  }
	T get borderViolet600 {
      twBorderColor = Tw.violet600;
      return _child;
  }
	T get borderViolet700 {
      twBorderColor = Tw.violet700;
      return _child;
  }
	T get borderViolet800 {
      twBorderColor = Tw.violet800;
      return _child;
  }
	T get borderViolet900 {
      twBorderColor = Tw.violet900;
      return _child;
  }
	T get borderPurple50 {
      twBorderColor = Tw.purple50;
      return _child;
  }
	T get borderPurple100 {
      twBorderColor = Tw.purple100;
      return _child;
  }
	T get borderPurple200 {
      twBorderColor = Tw.purple200;
      return _child;
  }
	T get borderPurple300 {
      twBorderColor = Tw.purple300;
      return _child;
  }
	T get borderPurple400 {
      twBorderColor = Tw.purple400;
      return _child;
  }
	T get borderPurple500 {
      twBorderColor = Tw.purple500;
      return _child;
  }
	T get borderPurple600 {
      twBorderColor = Tw.purple600;
      return _child;
  }
	T get borderPurple700 {
      twBorderColor = Tw.purple700;
      return _child;
  }
	T get borderPurple800 {
      twBorderColor = Tw.purple800;
      return _child;
  }
	T get borderPurple900 {
      twBorderColor = Tw.purple900;
      return _child;
  }
	T get borderFuchsia50 {
      twBorderColor = Tw.fuchsia50;
      return _child;
  }
	T get borderFuchsia100 {
      twBorderColor = Tw.fuchsia100;
      return _child;
  }
	T get borderFuchsia200 {
      twBorderColor = Tw.fuchsia200;
      return _child;
  }
	T get borderFuchsia300 {
      twBorderColor = Tw.fuchsia300;
      return _child;
  }
	T get borderFuchsia400 {
      twBorderColor = Tw.fuchsia400;
      return _child;
  }
	T get borderFuchsia500 {
      twBorderColor = Tw.fuchsia500;
      return _child;
  }
	T get borderFuchsia600 {
      twBorderColor = Tw.fuchsia600;
      return _child;
  }
	T get borderFuchsia700 {
      twBorderColor = Tw.fuchsia700;
      return _child;
  }
	T get borderFuchsia800 {
      twBorderColor = Tw.fuchsia800;
      return _child;
  }
	T get borderFuchsia900 {
      twBorderColor = Tw.fuchsia900;
      return _child;
  }
	T get borderPink50 {
      twBorderColor = Tw.pink50;
      return _child;
  }
	T get borderPink100 {
      twBorderColor = Tw.pink100;
      return _child;
  }
	T get borderPink200 {
      twBorderColor = Tw.pink200;
      return _child;
  }
	T get borderPink300 {
      twBorderColor = Tw.pink300;
      return _child;
  }
	T get borderPink400 {
      twBorderColor = Tw.pink400;
      return _child;
  }
	T get borderPink500 {
      twBorderColor = Tw.pink500;
      return _child;
  }
	T get borderPink600 {
      twBorderColor = Tw.pink600;
      return _child;
  }
	T get borderPink700 {
      twBorderColor = Tw.pink700;
      return _child;
  }
	T get borderPink800 {
      twBorderColor = Tw.pink800;
      return _child;
  }
	T get borderPink900 {
      twBorderColor = Tw.pink900;
      return _child;
  }
	T get borderRose50 {
      twBorderColor = Tw.rose50;
      return _child;
  }
	T get borderRose100 {
      twBorderColor = Tw.rose100;
      return _child;
  }
	T get borderRose200 {
      twBorderColor = Tw.rose200;
      return _child;
  }
	T get borderRose300 {
      twBorderColor = Tw.rose300;
      return _child;
  }
	T get borderRose400 {
      twBorderColor = Tw.rose400;
      return _child;
  }
	T get borderRose500 {
      twBorderColor = Tw.rose500;
      return _child;
  }
	T get borderRose600 {
      twBorderColor = Tw.rose600;
      return _child;
  }
	T get borderRose700 {
      twBorderColor = Tw.rose700;
      return _child;
  }
	T get borderRose800 {
      twBorderColor = Tw.rose800;
      return _child;
  }
	T get borderRose900 {
      twBorderColor = Tw.rose900;
      return _child;
  }
	T get borderPrimary {
      twBorderColor = Tw.primary;
      return _child;
  }
	
}


