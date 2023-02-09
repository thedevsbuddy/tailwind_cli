import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwBorderMixin<T> {
  late T _child;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  bool _needsDarkVariant = false;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  Brightness _brightness = Theme.of(TwService.appKey.currentContext!).brightness;

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
  
  T borderPrimaryColor(BuildContext context) {
    twBorderColor = TwColors.primaryColor(context);
    return _child;
  }

  T borderPrimaryDarkColor(BuildContext context) {
    twBorderColor = TwColors.primaryColorDark(context);
    return _child;
  }

  T borderAccentColor(BuildContext context) {
    twBorderColor = TwColors.secondary(context);
    return _child;
  }

  T borderBackgroundColor(BuildContext context) {
    twBorderColor = TwColors.backgroundColor(context);
    return _child;
  }

  T borderScaffoldBackgroundColor(BuildContext context) {
    twBorderColor = TwColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T borderCardColor(BuildContext context) {
    twBorderColor = TwColors.cardColor(context);
    return _child;
  }

  T get borderBlack {
      if(!_needsDarkVariant) twBorderColor = TwColors.black;
      return _child;
  }
	T get borderWhite {
      if(!_needsDarkVariant) twBorderColor = TwColors.white;
      return _child;
  }
	T get borderTransparent {
      if(!_needsDarkVariant) twBorderColor = TwColors.transparent;
      return _child;
  }
	T get borderGray {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray;
      return _child;
  }
	T get borderGray50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade50;
      return _child;
  }
	T get borderGray100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade100;
      return _child;
  }
	T get borderGray200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade200;
      return _child;
  }
	T get borderGray300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade300;
      return _child;
  }
	T get borderGray400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade400;
      return _child;
  }
	T get borderGray500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade500;
      return _child;
  }
	T get borderGray600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade600;
      return _child;
  }
	T get borderGray700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade700;
      return _child;
  }
	T get borderGray800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade800;
      return _child;
  }
	T get borderGray900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.gray.shade900;
      return _child;
  }
	T get borderBlueGray {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray;
      return _child;
  }
	T get borderBlueGray50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade50;
      return _child;
  }
	T get borderBlueGray100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade100;
      return _child;
  }
	T get borderBlueGray200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade200;
      return _child;
  }
	T get borderBlueGray300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade300;
      return _child;
  }
	T get borderBlueGray400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade400;
      return _child;
  }
	T get borderBlueGray500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade500;
      return _child;
  }
	T get borderBlueGray600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade600;
      return _child;
  }
	T get borderBlueGray700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade700;
      return _child;
  }
	T get borderBlueGray800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade800;
      return _child;
  }
	T get borderBlueGray900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blueGray.shade900;
      return _child;
  }
	T get borderCoolGray {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray;
      return _child;
  }
	T get borderCoolGray50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade50;
      return _child;
  }
	T get borderCoolGray100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade100;
      return _child;
  }
	T get borderCoolGray200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade200;
      return _child;
  }
	T get borderCoolGray300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade300;
      return _child;
  }
	T get borderCoolGray400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade400;
      return _child;
  }
	T get borderCoolGray500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade500;
      return _child;
  }
	T get borderCoolGray600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade600;
      return _child;
  }
	T get borderCoolGray700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade700;
      return _child;
  }
	T get borderCoolGray800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade800;
      return _child;
  }
	T get borderCoolGray900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.coolGray.shade900;
      return _child;
  }
	T get borderTrueGray {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray;
      return _child;
  }
	T get borderTrueGray50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade50;
      return _child;
  }
	T get borderTrueGray100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade100;
      return _child;
  }
	T get borderTrueGray200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade200;
      return _child;
  }
	T get borderTrueGray300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade300;
      return _child;
  }
	T get borderTrueGray400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade400;
      return _child;
  }
	T get borderTrueGray500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade500;
      return _child;
  }
	T get borderTrueGray600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade600;
      return _child;
  }
	T get borderTrueGray700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade700;
      return _child;
  }
	T get borderTrueGray800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade800;
      return _child;
  }
	T get borderTrueGray900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.trueGray.shade900;
      return _child;
  }
	T get borderWarmGray {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray;
      return _child;
  }
	T get borderWarmGray50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade50;
      return _child;
  }
	T get borderWarmGray100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade100;
      return _child;
  }
	T get borderWarmGray200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade200;
      return _child;
  }
	T get borderWarmGray300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade300;
      return _child;
  }
	T get borderWarmGray400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade400;
      return _child;
  }
	T get borderWarmGray500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade500;
      return _child;
  }
	T get borderWarmGray600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade600;
      return _child;
  }
	T get borderWarmGray700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade700;
      return _child;
  }
	T get borderWarmGray800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade800;
      return _child;
  }
	T get borderWarmGray900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.warmGray.shade900;
      return _child;
  }
	T get borderRed {
      if(!_needsDarkVariant) twBorderColor = TwColors.red;
      return _child;
  }
	T get borderRed50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade50;
      return _child;
  }
	T get borderRed100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade100;
      return _child;
  }
	T get borderRed200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade200;
      return _child;
  }
	T get borderRed300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade300;
      return _child;
  }
	T get borderRed400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade400;
      return _child;
  }
	T get borderRed500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade500;
      return _child;
  }
	T get borderRed600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade600;
      return _child;
  }
	T get borderRed700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade700;
      return _child;
  }
	T get borderRed800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade800;
      return _child;
  }
	T get borderRed900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.red.shade900;
      return _child;
  }
	T get borderOrange {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange;
      return _child;
  }
	T get borderOrange50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade50;
      return _child;
  }
	T get borderOrange100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade100;
      return _child;
  }
	T get borderOrange200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade200;
      return _child;
  }
	T get borderOrange300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade300;
      return _child;
  }
	T get borderOrange400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade400;
      return _child;
  }
	T get borderOrange500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade500;
      return _child;
  }
	T get borderOrange600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade600;
      return _child;
  }
	T get borderOrange700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade700;
      return _child;
  }
	T get borderOrange800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade800;
      return _child;
  }
	T get borderOrange900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.orange.shade900;
      return _child;
  }
	T get borderAmber {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber;
      return _child;
  }
	T get borderAmber50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade50;
      return _child;
  }
	T get borderAmber100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade100;
      return _child;
  }
	T get borderAmber200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade200;
      return _child;
  }
	T get borderAmber300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade300;
      return _child;
  }
	T get borderAmber400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade400;
      return _child;
  }
	T get borderAmber500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade500;
      return _child;
  }
	T get borderAmber600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade600;
      return _child;
  }
	T get borderAmber700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade700;
      return _child;
  }
	T get borderAmber800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade800;
      return _child;
  }
	T get borderAmber900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.amber.shade900;
      return _child;
  }
	T get borderYellow {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow;
      return _child;
  }
	T get borderYellow50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade50;
      return _child;
  }
	T get borderYellow100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade100;
      return _child;
  }
	T get borderYellow200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade200;
      return _child;
  }
	T get borderYellow300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade300;
      return _child;
  }
	T get borderYellow400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade400;
      return _child;
  }
	T get borderYellow500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade500;
      return _child;
  }
	T get borderYellow600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade600;
      return _child;
  }
	T get borderYellow700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade700;
      return _child;
  }
	T get borderYellow800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade800;
      return _child;
  }
	T get borderYellow900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.yellow.shade900;
      return _child;
  }
	T get borderLime {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime;
      return _child;
  }
	T get borderLime50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade50;
      return _child;
  }
	T get borderLime100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade100;
      return _child;
  }
	T get borderLime200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade200;
      return _child;
  }
	T get borderLime300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade300;
      return _child;
  }
	T get borderLime400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade400;
      return _child;
  }
	T get borderLime500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade500;
      return _child;
  }
	T get borderLime600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade600;
      return _child;
  }
	T get borderLime700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade700;
      return _child;
  }
	T get borderLime800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade800;
      return _child;
  }
	T get borderLime900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lime.shade900;
      return _child;
  }
	T get borderGreen {
      if(!_needsDarkVariant) twBorderColor = TwColors.green;
      return _child;
  }
	T get borderGreen50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade50;
      return _child;
  }
	T get borderGreen100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade100;
      return _child;
  }
	T get borderGreen200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade200;
      return _child;
  }
	T get borderGreen300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade300;
      return _child;
  }
	T get borderGreen400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade400;
      return _child;
  }
	T get borderGreen500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade500;
      return _child;
  }
	T get borderGreen600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade600;
      return _child;
  }
	T get borderGreen700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade700;
      return _child;
  }
	T get borderGreen800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade800;
      return _child;
  }
	T get borderGreen900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.green.shade900;
      return _child;
  }
	T get borderEmerald {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald;
      return _child;
  }
	T get borderEmerald50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade50;
      return _child;
  }
	T get borderEmerald100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade100;
      return _child;
  }
	T get borderEmerald200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade200;
      return _child;
  }
	T get borderEmerald300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade300;
      return _child;
  }
	T get borderEmerald400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade400;
      return _child;
  }
	T get borderEmerald500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade500;
      return _child;
  }
	T get borderEmerald600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade600;
      return _child;
  }
	T get borderEmerald700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade700;
      return _child;
  }
	T get borderEmerald800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade800;
      return _child;
  }
	T get borderEmerald900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.emerald.shade900;
      return _child;
  }
	T get borderTeal {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal;
      return _child;
  }
	T get borderTeal50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade50;
      return _child;
  }
	T get borderTeal100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade100;
      return _child;
  }
	T get borderTeal200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade200;
      return _child;
  }
	T get borderTeal300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade300;
      return _child;
  }
	T get borderTeal400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade400;
      return _child;
  }
	T get borderTeal500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade500;
      return _child;
  }
	T get borderTeal600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade600;
      return _child;
  }
	T get borderTeal700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade700;
      return _child;
  }
	T get borderTeal800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade800;
      return _child;
  }
	T get borderTeal900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.teal.shade900;
      return _child;
  }
	T get borderCyan {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan;
      return _child;
  }
	T get borderCyan50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade50;
      return _child;
  }
	T get borderCyan100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade100;
      return _child;
  }
	T get borderCyan200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade200;
      return _child;
  }
	T get borderCyan300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade300;
      return _child;
  }
	T get borderCyan400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade400;
      return _child;
  }
	T get borderCyan500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade500;
      return _child;
  }
	T get borderCyan600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade600;
      return _child;
  }
	T get borderCyan700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade700;
      return _child;
  }
	T get borderCyan800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade800;
      return _child;
  }
	T get borderCyan900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.cyan.shade900;
      return _child;
  }
	T get borderLightBlue {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue;
      return _child;
  }
	T get borderLightBlue50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade50;
      return _child;
  }
	T get borderLightBlue100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade100;
      return _child;
  }
	T get borderLightBlue200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade200;
      return _child;
  }
	T get borderLightBlue300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade300;
      return _child;
  }
	T get borderLightBlue400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade400;
      return _child;
  }
	T get borderLightBlue500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade500;
      return _child;
  }
	T get borderLightBlue600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade600;
      return _child;
  }
	T get borderLightBlue700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade700;
      return _child;
  }
	T get borderLightBlue800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade800;
      return _child;
  }
	T get borderLightBlue900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.lightBlue.shade900;
      return _child;
  }
	T get borderBlue {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue;
      return _child;
  }
	T get borderBlue50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade50;
      return _child;
  }
	T get borderBlue100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade100;
      return _child;
  }
	T get borderBlue200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade200;
      return _child;
  }
	T get borderBlue300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade300;
      return _child;
  }
	T get borderBlue400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade400;
      return _child;
  }
	T get borderBlue500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade500;
      return _child;
  }
	T get borderBlue600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade600;
      return _child;
  }
	T get borderBlue700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade700;
      return _child;
  }
	T get borderBlue800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade800;
      return _child;
  }
	T get borderBlue900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.blue.shade900;
      return _child;
  }
	T get borderIndigo {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo;
      return _child;
  }
	T get borderIndigo50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade50;
      return _child;
  }
	T get borderIndigo100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade100;
      return _child;
  }
	T get borderIndigo200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade200;
      return _child;
  }
	T get borderIndigo300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade300;
      return _child;
  }
	T get borderIndigo400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade400;
      return _child;
  }
	T get borderIndigo500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade500;
      return _child;
  }
	T get borderIndigo600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade600;
      return _child;
  }
	T get borderIndigo700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade700;
      return _child;
  }
	T get borderIndigo800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade800;
      return _child;
  }
	T get borderIndigo900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.indigo.shade900;
      return _child;
  }
	T get borderViolet {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet;
      return _child;
  }
	T get borderViolet50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade50;
      return _child;
  }
	T get borderViolet100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade100;
      return _child;
  }
	T get borderViolet200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade200;
      return _child;
  }
	T get borderViolet300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade300;
      return _child;
  }
	T get borderViolet400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade400;
      return _child;
  }
	T get borderViolet500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade500;
      return _child;
  }
	T get borderViolet600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade600;
      return _child;
  }
	T get borderViolet700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade700;
      return _child;
  }
	T get borderViolet800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade800;
      return _child;
  }
	T get borderViolet900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.violet.shade900;
      return _child;
  }
	T get borderPurple {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple;
      return _child;
  }
	T get borderPurple50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade50;
      return _child;
  }
	T get borderPurple100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade100;
      return _child;
  }
	T get borderPurple200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade200;
      return _child;
  }
	T get borderPurple300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade300;
      return _child;
  }
	T get borderPurple400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade400;
      return _child;
  }
	T get borderPurple500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade500;
      return _child;
  }
	T get borderPurple600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade600;
      return _child;
  }
	T get borderPurple700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade700;
      return _child;
  }
	T get borderPurple800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade800;
      return _child;
  }
	T get borderPurple900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.purple.shade900;
      return _child;
  }
	T get borderFuchsia {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia;
      return _child;
  }
	T get borderFuchsia50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade50;
      return _child;
  }
	T get borderFuchsia100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade100;
      return _child;
  }
	T get borderFuchsia200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade200;
      return _child;
  }
	T get borderFuchsia300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade300;
      return _child;
  }
	T get borderFuchsia400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade400;
      return _child;
  }
	T get borderFuchsia500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade500;
      return _child;
  }
	T get borderFuchsia600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade600;
      return _child;
  }
	T get borderFuchsia700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade700;
      return _child;
  }
	T get borderFuchsia800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade800;
      return _child;
  }
	T get borderFuchsia900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.fuchsia.shade900;
      return _child;
  }
	T get borderPink {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink;
      return _child;
  }
	T get borderPink50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade50;
      return _child;
  }
	T get borderPink100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade100;
      return _child;
  }
	T get borderPink200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade200;
      return _child;
  }
	T get borderPink300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade300;
      return _child;
  }
	T get borderPink400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade400;
      return _child;
  }
	T get borderPink500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade500;
      return _child;
  }
	T get borderPink600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade600;
      return _child;
  }
	T get borderPink700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade700;
      return _child;
  }
	T get borderPink800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade800;
      return _child;
  }
	T get borderPink900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.pink.shade900;
      return _child;
  }
	T get borderRose {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose;
      return _child;
  }
	T get borderRose50 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade50;
      return _child;
  }
	T get borderRose100 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade100;
      return _child;
  }
	T get borderRose200 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade200;
      return _child;
  }
	T get borderRose300 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade300;
      return _child;
  }
	T get borderRose400 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade400;
      return _child;
  }
	T get borderRose500 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade500;
      return _child;
  }
	T get borderRose600 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade600;
      return _child;
  }
	T get borderRose700 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade700;
      return _child;
  }
	T get borderRose800 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade800;
      return _child;
  }
	T get borderRose900 {
      if(!_needsDarkVariant) twBorderColor = TwColors.rose.shade900;
      return _child;
  }
	T get borderPrimary {
      if(!_needsDarkVariant) twBorderColor = TwColors.primary;
      return _child;
  }
	
}


