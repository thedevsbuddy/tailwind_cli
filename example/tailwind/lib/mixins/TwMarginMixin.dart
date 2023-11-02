import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwMarginMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _twMargin;

  @protected
  double marginLeft = 0;
  @protected
  double marginTop = 0;
  @protected
  double marginRight = 0;
  @protected
  double marginBottom = 0;

  @protected
  void setChildForMargining(T child) {
    _child = child;
  }

  /// Sets the margin property of the box.
  T withMargin(EdgeInsetsGeometry val) {
    _twMargin = val;
    return _child;
  }

  EdgeInsetsGeometry get twMargin {
    _twMargin =
        EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom);
    return _twMargin!;
  }

  /// Custom All Side Margin
  T margin(dynamic val) {
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  }

  T m(dynamic val) {
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  }

  /// Custom Horizontal Margin
  T mx(dynamic val) {
    marginLeft = val;
    marginRight = val;
    return _child;
  }

  /// Custom Vertical Margin
  T my(dynamic val) {
    marginTop = val;
    marginBottom = val;
    return _child;
  }

  /// Custom Left Margin
  T ml(dynamic val) {
    marginLeft = val;
    return _child;
  }

  /// Custom Top Margin
  T mt(dynamic val) {
    marginTop = val;
    return _child;
  }

  /// Custom Right Margin
  T mr(dynamic val) {
    marginRight = val;
    return _child;
  }

  /// Custom Bottom Margin
  T mb(dynamic val) {
    marginBottom = val;
    return _child;
  }

  /// All Side Margin
  T get m0 {
    marginLeft = TwSizes.spacer0;
    marginTop = TwSizes.spacer0;
    marginRight = TwSizes.spacer0;
    marginBottom = TwSizes.spacer0;
    return _child;
  }

  T get m1 {
    marginLeft = TwSizes.spacer1;
    marginTop = TwSizes.spacer1;
    marginRight = TwSizes.spacer1;
    marginBottom = TwSizes.spacer1;
    return _child;
  }

  T get m2 {
    marginLeft = TwSizes.spacer2;
    marginTop = TwSizes.spacer2;
    marginRight = TwSizes.spacer2;
    marginBottom = TwSizes.spacer2;
    return _child;
  }

  T get m3 {
    marginLeft = TwSizes.spacer3;
    marginTop = TwSizes.spacer3;
    marginRight = TwSizes.spacer3;
    marginBottom = TwSizes.spacer3;
    return _child;
  }

  T get m4 {
    marginLeft = TwSizes.spacer4;
    marginTop = TwSizes.spacer4;
    marginRight = TwSizes.spacer4;
    marginBottom = TwSizes.spacer4;
    return _child;
  }

  T get m5 {
    marginLeft = TwSizes.spacer5;
    marginTop = TwSizes.spacer5;
    marginRight = TwSizes.spacer5;
    marginBottom = TwSizes.spacer5;
    return _child;
  }

  T get m6 {
    marginLeft = TwSizes.spacer6;
    marginTop = TwSizes.spacer6;
    marginRight = TwSizes.spacer6;
    marginBottom = TwSizes.spacer6;
    return _child;
  }

  T get m7 {
    marginLeft = TwSizes.spacer7;
    marginTop = TwSizes.spacer7;
    marginRight = TwSizes.spacer7;
    marginBottom = TwSizes.spacer7;
    return _child;
  }

  T get m8 {
    marginLeft = TwSizes.spacer8;
    marginTop = TwSizes.spacer8;
    marginRight = TwSizes.spacer8;
    marginBottom = TwSizes.spacer8;
    return _child;
  }

  T get m9 {
    marginLeft = TwSizes.spacer9;
    marginTop = TwSizes.spacer9;
    marginRight = TwSizes.spacer9;
    marginBottom = TwSizes.spacer9;
    return _child;
  }

  T get m10 {
    marginLeft = TwSizes.spacer10;
    marginTop = TwSizes.spacer10;
    marginRight = TwSizes.spacer10;
    marginBottom = TwSizes.spacer10;
    return _child;
  }

  T get m11 {
    marginLeft = TwSizes.spacer11;
    marginTop = TwSizes.spacer11;
    marginRight = TwSizes.spacer11;
    marginBottom = TwSizes.spacer11;
    return _child;
  }

  T get m12 {
    marginLeft = TwSizes.spacer12;
    marginTop = TwSizes.spacer12;
    marginRight = TwSizes.spacer12;
    marginBottom = TwSizes.spacer12;
    return _child;
  }

  T get m14 {
    marginLeft = TwSizes.spacer14;
    marginTop = TwSizes.spacer14;
    marginRight = TwSizes.spacer14;
    marginBottom = TwSizes.spacer14;
    return _child;
  }

  T get m16 {
    marginLeft = TwSizes.spacer16;
    marginTop = TwSizes.spacer16;
    marginRight = TwSizes.spacer16;
    marginBottom = TwSizes.spacer16;
    return _child;
  }

  T get m20 {
    marginLeft = TwSizes.spacer20;
    marginTop = TwSizes.spacer20;
    marginRight = TwSizes.spacer20;
    marginBottom = TwSizes.spacer20;
    return _child;
  }

  T get m24 {
    marginLeft = TwSizes.spacer24;
    marginTop = TwSizes.spacer24;
    marginRight = TwSizes.spacer24;
    marginBottom = TwSizes.spacer24;
    return _child;
  }

  T get m28 {
    marginLeft = TwSizes.spacer28;
    marginTop = TwSizes.spacer28;
    marginRight = TwSizes.spacer28;
    marginBottom = TwSizes.spacer28;
    return _child;
  }

  T get m32 {
    marginLeft = TwSizes.spacer32;
    marginTop = TwSizes.spacer32;
    marginRight = TwSizes.spacer32;
    marginBottom = TwSizes.spacer32;
    return _child;
  }

  T get m36 {
    marginLeft = TwSizes.spacer36;
    marginTop = TwSizes.spacer36;
    marginRight = TwSizes.spacer36;
    marginBottom = TwSizes.spacer36;
    return _child;
  }

  T get m40 {
    marginLeft = TwSizes.spacer40;
    marginTop = TwSizes.spacer40;
    marginRight = TwSizes.spacer40;
    marginBottom = TwSizes.spacer40;
    return _child;
  }

  T get m44 {
    marginLeft = TwSizes.spacer44;
    marginTop = TwSizes.spacer44;
    marginRight = TwSizes.spacer44;
    marginBottom = TwSizes.spacer44;
    return _child;
  }

  T get m48 {
    marginLeft = TwSizes.spacer48;
    marginTop = TwSizes.spacer48;
    marginRight = TwSizes.spacer48;
    marginBottom = TwSizes.spacer48;
    return _child;
  }

  T get m52 {
    marginLeft = TwSizes.spacer52;
    marginTop = TwSizes.spacer52;
    marginRight = TwSizes.spacer52;
    marginBottom = TwSizes.spacer52;
    return _child;
  }

  T get m56 {
    marginLeft = TwSizes.spacer56;
    marginTop = TwSizes.spacer56;
    marginRight = TwSizes.spacer56;
    marginBottom = TwSizes.spacer56;
    return _child;
  }

  T get m60 {
    marginLeft = TwSizes.spacer60;
    marginTop = TwSizes.spacer60;
    marginRight = TwSizes.spacer60;
    marginBottom = TwSizes.spacer60;
    return _child;
  }

  T get m64 {
    marginLeft = TwSizes.spacer64;
    marginTop = TwSizes.spacer64;
    marginRight = TwSizes.spacer64;
    marginBottom = TwSizes.spacer64;
    return _child;
  }

  /// Horizontal Margin
  T get mx0 {
    marginLeft = TwSizes.spacer0;
    marginRight = TwSizes.spacer0;
    return _child;
  }

  T get mx1 {
    marginLeft = TwSizes.spacer1;
    marginRight = TwSizes.spacer1;
    return _child;
  }

  T get mx2 {
    marginLeft = TwSizes.spacer2;
    marginRight = TwSizes.spacer2;
    return _child;
  }

  T get mx3 {
    marginLeft = TwSizes.spacer3;
    marginRight = TwSizes.spacer3;
    return _child;
  }

  T get mx4 {
    marginLeft = TwSizes.spacer4;
    marginRight = TwSizes.spacer4;
    return _child;
  }

  T get mx5 {
    marginLeft = TwSizes.spacer5;
    marginRight = TwSizes.spacer5;
    return _child;
  }

  T get mx6 {
    marginLeft = TwSizes.spacer6;
    marginRight = TwSizes.spacer6;
    return _child;
  }

  T get mx7 {
    marginLeft = TwSizes.spacer7;
    marginRight = TwSizes.spacer7;
    return _child;
  }

  T get mx8 {
    marginLeft = TwSizes.spacer8;
    marginRight = TwSizes.spacer8;
    return _child;
  }

  T get mx9 {
    marginLeft = TwSizes.spacer9;
    marginRight = TwSizes.spacer9;
    return _child;
  }

  T get mx10 {
    marginLeft = TwSizes.spacer10;
    marginRight = TwSizes.spacer10;
    return _child;
  }

  T get mx11 {
    marginLeft = TwSizes.spacer11;
    marginRight = TwSizes.spacer11;
    return _child;
  }

  T get mx12 {
    marginLeft = TwSizes.spacer12;
    marginRight = TwSizes.spacer12;
    return _child;
  }

  T get mx14 {
    marginLeft = TwSizes.spacer14;
    marginRight = TwSizes.spacer14;
    return _child;
  }

  T get mx16 {
    marginLeft = TwSizes.spacer16;
    marginRight = TwSizes.spacer16;
    return _child;
  }

  T get mx20 {
    marginLeft = TwSizes.spacer20;
    marginRight = TwSizes.spacer20;
    return _child;
  }

  T get mx24 {
    marginLeft = TwSizes.spacer24;
    marginRight = TwSizes.spacer24;
    return _child;
  }

  T get mx28 {
    marginLeft = TwSizes.spacer28;
    marginRight = TwSizes.spacer28;
    return _child;
  }

  T get mx32 {
    marginLeft = TwSizes.spacer32;
    marginRight = TwSizes.spacer32;
    return _child;
  }

  T get mx36 {
    marginLeft = TwSizes.spacer36;
    marginRight = TwSizes.spacer36;
    return _child;
  }

  T get mx40 {
    marginLeft = TwSizes.spacer40;
    marginRight = TwSizes.spacer40;
    return _child;
  }

  T get mx44 {
    marginLeft = TwSizes.spacer44;
    marginRight = TwSizes.spacer44;
    return _child;
  }

  T get mx48 {
    marginLeft = TwSizes.spacer48;
    marginRight = TwSizes.spacer48;
    return _child;
  }

  T get mx52 {
    marginLeft = TwSizes.spacer52;
    marginRight = TwSizes.spacer52;
    return _child;
  }

  T get mx56 {
    marginLeft = TwSizes.spacer56;
    marginRight = TwSizes.spacer56;
    return _child;
  }

  T get mx60 {
    marginLeft = TwSizes.spacer60;
    marginRight = TwSizes.spacer60;
    return _child;
  }

  T get mx64 {
    marginLeft = TwSizes.spacer64;
    marginRight = TwSizes.spacer64;
    return _child;
  }

  /// Vertical Margin
  T get my0 {
    marginTop = TwSizes.spacer0;
    marginBottom = TwSizes.spacer0;
    return _child;
  }

  T get my1 {
    marginTop = TwSizes.spacer1;
    marginBottom = TwSizes.spacer1;
    return _child;
  }

  T get my2 {
    marginTop = TwSizes.spacer2;
    marginBottom = TwSizes.spacer2;
    return _child;
  }

  T get my3 {
    marginTop = TwSizes.spacer3;
    marginBottom = TwSizes.spacer3;
    return _child;
  }

  T get my4 {
    marginTop = TwSizes.spacer4;
    marginBottom = TwSizes.spacer4;
    return _child;
  }

  T get my5 {
    marginTop = TwSizes.spacer5;
    marginBottom = TwSizes.spacer5;
    return _child;
  }

  T get my6 {
    marginTop = TwSizes.spacer6;
    marginBottom = TwSizes.spacer6;
    return _child;
  }

  T get my7 {
    marginTop = TwSizes.spacer7;
    marginBottom = TwSizes.spacer7;
    return _child;
  }

  T get my8 {
    marginTop = TwSizes.spacer8;
    marginBottom = TwSizes.spacer8;
    return _child;
  }

  T get my9 {
    marginTop = TwSizes.spacer9;
    marginBottom = TwSizes.spacer9;
    return _child;
  }

  T get my10 {
    marginTop = TwSizes.spacer10;
    marginBottom = TwSizes.spacer10;
    return _child;
  }

  T get my11 {
    marginTop = TwSizes.spacer11;
    marginBottom = TwSizes.spacer11;
    return _child;
  }

  T get my12 {
    marginTop = TwSizes.spacer12;
    marginBottom = TwSizes.spacer12;
    return _child;
  }

  T get my14 {
    marginTop = TwSizes.spacer14;
    marginBottom = TwSizes.spacer14;
    return _child;
  }

  T get my16 {
    marginTop = TwSizes.spacer16;
    marginBottom = TwSizes.spacer16;
    return _child;
  }

  T get my20 {
    marginTop = TwSizes.spacer20;
    marginBottom = TwSizes.spacer20;
    return _child;
  }

  T get my24 {
    marginTop = TwSizes.spacer24;
    marginBottom = TwSizes.spacer24;
    return _child;
  }

  T get my28 {
    marginTop = TwSizes.spacer28;
    marginBottom = TwSizes.spacer28;
    return _child;
  }

  T get my32 {
    marginTop = TwSizes.spacer32;
    marginBottom = TwSizes.spacer32;
    return _child;
  }

  T get my36 {
    marginTop = TwSizes.spacer36;
    marginBottom = TwSizes.spacer36;
    return _child;
  }

  T get my40 {
    marginTop = TwSizes.spacer40;
    marginBottom = TwSizes.spacer40;
    return _child;
  }

  T get my44 {
    marginTop = TwSizes.spacer44;
    marginBottom = TwSizes.spacer44;
    return _child;
  }

  T get my48 {
    marginTop = TwSizes.spacer48;
    marginBottom = TwSizes.spacer48;
    return _child;
  }

  T get my52 {
    marginTop = TwSizes.spacer52;
    marginBottom = TwSizes.spacer52;
    return _child;
  }

  T get my56 {
    marginTop = TwSizes.spacer56;
    marginBottom = TwSizes.spacer56;
    return _child;
  }

  T get my60 {
    marginTop = TwSizes.spacer60;
    marginBottom = TwSizes.spacer60;
    return _child;
  }

  T get my64 {
    marginTop = TwSizes.spacer64;
    marginBottom = TwSizes.spacer64;
    return _child;
  }

  /// Left Margin
  T get ml0 {
    marginLeft = TwSizes.spacer0;
    return _child;
  }

  T get ml1 {
    marginLeft = TwSizes.spacer1;
    return _child;
  }

  T get ml2 {
    marginLeft = TwSizes.spacer2;
    return _child;
  }

  T get ml3 {
    marginLeft = TwSizes.spacer3;
    return _child;
  }

  T get ml4 {
    marginLeft = TwSizes.spacer4;
    return _child;
  }

  T get ml5 {
    marginLeft = TwSizes.spacer5;
    return _child;
  }

  T get ml6 {
    marginLeft = TwSizes.spacer6;
    return _child;
  }

  T get ml7 {
    marginLeft = TwSizes.spacer7;
    return _child;
  }

  T get ml8 {
    marginLeft = TwSizes.spacer8;
    return _child;
  }

  T get ml9 {
    marginLeft = TwSizes.spacer9;
    return _child;
  }

  T get ml10 {
    marginLeft = TwSizes.spacer10;
    return _child;
  }

  T get ml11 {
    marginLeft = TwSizes.spacer11;
    return _child;
  }

  T get ml12 {
    marginLeft = TwSizes.spacer12;
    return _child;
  }

  T get ml14 {
    marginLeft = TwSizes.spacer14;
    return _child;
  }

  T get ml16 {
    marginLeft = TwSizes.spacer16;
    return _child;
  }

  T get ml20 {
    marginLeft = TwSizes.spacer20;
    return _child;
  }

  T get ml24 {
    marginLeft = TwSizes.spacer24;
    return _child;
  }

  T get ml28 {
    marginLeft = TwSizes.spacer28;
    return _child;
  }

  T get ml32 {
    marginLeft = TwSizes.spacer32;
    return _child;
  }

  T get ml36 {
    marginLeft = TwSizes.spacer36;
    return _child;
  }

  T get ml40 {
    marginLeft = TwSizes.spacer40;
    return _child;
  }

  T get ml44 {
    marginLeft = TwSizes.spacer44;
    return _child;
  }

  T get ml48 {
    marginLeft = TwSizes.spacer48;
    return _child;
  }

  T get ml52 {
    marginLeft = TwSizes.spacer52;
    return _child;
  }

  T get ml56 {
    marginLeft = TwSizes.spacer56;
    return _child;
  }

  T get ml60 {
    marginLeft = TwSizes.spacer60;
    return _child;
  }

  T get ml64 {
    marginLeft = TwSizes.spacer64;
    return _child;
  }

  /// Right Margin
  T get mt0 {
    marginTop = TwSizes.spacer0;
    return _child;
  }

  T get mt1 {
    marginTop = TwSizes.spacer1;
    return _child;
  }

  T get mt2 {
    marginTop = TwSizes.spacer2;
    return _child;
  }

  T get mt3 {
    marginTop = TwSizes.spacer3;
    return _child;
  }

  T get mt4 {
    marginTop = TwSizes.spacer4;
    return _child;
  }

  T get mt5 {
    marginTop = TwSizes.spacer5;
    return _child;
  }

  T get mt6 {
    marginTop = TwSizes.spacer6;
    return _child;
  }

  T get mt7 {
    marginTop = TwSizes.spacer7;
    return _child;
  }

  T get mt8 {
    marginTop = TwSizes.spacer8;
    return _child;
  }

  T get mt9 {
    marginTop = TwSizes.spacer9;
    return _child;
  }

  T get mt10 {
    marginTop = TwSizes.spacer10;
    return _child;
  }

  T get mt11 {
    marginTop = TwSizes.spacer11;
    return _child;
  }

  T get mt12 {
    marginTop = TwSizes.spacer12;
    return _child;
  }

  T get mt14 {
    marginTop = TwSizes.spacer14;
    return _child;
  }

  T get mt16 {
    marginTop = TwSizes.spacer16;
    return _child;
  }

  T get mt20 {
    marginTop = TwSizes.spacer20;
    return _child;
  }

  T get mt24 {
    marginTop = TwSizes.spacer24;
    return _child;
  }

  T get mt28 {
    marginTop = TwSizes.spacer28;
    return _child;
  }

  T get mt32 {
    marginTop = TwSizes.spacer32;
    return _child;
  }

  T get mt36 {
    marginTop = TwSizes.spacer36;
    return _child;
  }

  T get mt40 {
    marginTop = TwSizes.spacer40;
    return _child;
  }

  T get mt44 {
    marginTop = TwSizes.spacer44;
    return _child;
  }

  T get mt48 {
    marginTop = TwSizes.spacer48;
    return _child;
  }

  T get mt52 {
    marginTop = TwSizes.spacer52;
    return _child;
  }

  T get mt56 {
    marginTop = TwSizes.spacer56;
    return _child;
  }

  T get mt60 {
    marginTop = TwSizes.spacer60;
    return _child;
  }

  T get mt64 {
    marginTop = TwSizes.spacer64;
    return _child;
  }

  /// Right Margin
  T get mr0 {
    marginRight = TwSizes.spacer0;
    return _child;
  }

  T get mr1 {
    marginRight = TwSizes.spacer1;
    return _child;
  }

  T get mr2 {
    marginRight = TwSizes.spacer2;
    return _child;
  }

  T get mr3 {
    marginRight = TwSizes.spacer3;
    return _child;
  }

  T get mr4 {
    marginRight = TwSizes.spacer4;
    return _child;
  }

  T get mr5 {
    marginRight = TwSizes.spacer5;
    return _child;
  }

  T get mr6 {
    marginRight = TwSizes.spacer6;
    return _child;
  }

  T get mr7 {
    marginRight = TwSizes.spacer7;
    return _child;
  }

  T get mr8 {
    marginRight = TwSizes.spacer8;
    return _child;
  }

  T get mr9 {
    marginRight = TwSizes.spacer9;
    return _child;
  }

  T get mr10 {
    marginRight = TwSizes.spacer10;
    return _child;
  }

  T get mr11 {
    marginRight = TwSizes.spacer11;
    return _child;
  }

  T get mr12 {
    marginRight = TwSizes.spacer12;
    return _child;
  }

  T get mr14 {
    marginRight = TwSizes.spacer14;
    return _child;
  }

  T get mr16 {
    marginRight = TwSizes.spacer16;
    return _child;
  }

  T get mr20 {
    marginRight = TwSizes.spacer20;
    return _child;
  }

  T get mr24 {
    marginRight = TwSizes.spacer24;
    return _child;
  }

  T get mr28 {
    marginRight = TwSizes.spacer28;
    return _child;
  }

  T get mr32 {
    marginRight = TwSizes.spacer32;
    return _child;
  }

  T get mr36 {
    marginRight = TwSizes.spacer36;
    return _child;
  }

  T get mr40 {
    marginRight = TwSizes.spacer40;
    return _child;
  }

  T get mr44 {
    marginRight = TwSizes.spacer44;
    return _child;
  }

  T get mr48 {
    marginRight = TwSizes.spacer48;
    return _child;
  }

  T get mr52 {
    marginRight = TwSizes.spacer52;
    return _child;
  }

  T get mr56 {
    marginRight = TwSizes.spacer56;
    return _child;
  }

  T get mr60 {
    marginRight = TwSizes.spacer60;
    return _child;
  }

  T get mr64 {
    marginRight = TwSizes.spacer64;
    return _child;
  }

  /// Bottom Padding
  T get mb0 {
    marginBottom = TwSizes.spacer0;
    return _child;
  }

  T get mb1 {
    marginBottom = TwSizes.spacer1;
    return _child;
  }

  T get mb2 {
    marginBottom = TwSizes.spacer2;
    return _child;
  }

  T get mb3 {
    marginBottom = TwSizes.spacer3;
    return _child;
  }

  T get mb4 {
    marginBottom = TwSizes.spacer4;
    return _child;
  }

  T get mb5 {
    marginBottom = TwSizes.spacer5;
    return _child;
  }

  T get mb6 {
    marginBottom = TwSizes.spacer6;
    return _child;
  }

  T get mb7 {
    marginBottom = TwSizes.spacer7;
    return _child;
  }

  T get mb8 {
    marginBottom = TwSizes.spacer8;
    return _child;
  }

  T get mb9 {
    marginBottom = TwSizes.spacer9;
    return _child;
  }

  T get mb10 {
    marginBottom = TwSizes.spacer10;
    return _child;
  }

  T get mb11 {
    marginBottom = TwSizes.spacer11;
    return _child;
  }

  T get mb12 {
    marginBottom = TwSizes.spacer12;
    return _child;
  }

  T get mb14 {
    marginBottom = TwSizes.spacer14;
    return _child;
  }

  T get mb16 {
    marginBottom = TwSizes.spacer16;
    return _child;
  }

  T get mb20 {
    marginBottom = TwSizes.spacer20;
    return _child;
  }

  T get mb24 {
    marginBottom = TwSizes.spacer24;
    return _child;
  }

  T get mb28 {
    marginBottom = TwSizes.spacer28;
    return _child;
  }

  T get mb32 {
    marginBottom = TwSizes.spacer32;
    return _child;
  }

  T get mb36 {
    marginBottom = TwSizes.spacer36;
    return _child;
  }

  T get mb40 {
    marginBottom = TwSizes.spacer40;
    return _child;
  }

  T get mb44 {
    marginBottom = TwSizes.spacer44;
    return _child;
  }

  T get mb48 {
    marginBottom = TwSizes.spacer48;
    return _child;
  }

  T get mb52 {
    marginBottom = TwSizes.spacer52;
    return _child;
  }

  T get mb56 {
    marginBottom = TwSizes.spacer56;
    return _child;
  }

  T get mb60 {
    marginBottom = TwSizes.spacer60;
    return _child;
  }

  T get mb64 {
    marginBottom = TwSizes.spacer64;
    return _child;
  }
}
