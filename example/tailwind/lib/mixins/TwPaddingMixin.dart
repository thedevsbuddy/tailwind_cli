import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwPaddingMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _twPadding;

  double paddingLeft = 0;
  @protected
  double paddingTop = 0;
  @protected
  double paddingRight = 0;
  @protected
  double paddingBottom = 0;

  @protected
  void setChildForPadding(T child) {
    _child = child;
  }

  /// Sets the padding property of the box.
  T withPadding(EdgeInsetsGeometry val) {
    _twPadding = val;
    return _child;
  }

  EdgeInsetsGeometry get twPadding {
    _twPadding = EdgeInsets.fromLTRB(
        paddingLeft, paddingTop, paddingRight, paddingBottom);
    return _twPadding!;
  }

  // Custom All Side Padding
  T padding(dynamic val) {
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  T p(dynamic val) {
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  /// Custom Horizontal Padding
  T px(dynamic val) {
    paddingLeft = val;
    paddingRight = val;
    return _child;
  }

  /// Custom Vertic al Padding
  T py(dynamic val) {
    paddingTop = val;
    paddingBottom = val;
    return _child;
  }

  /// Custom Left Padding
  T pl(dynamic val) {
    paddingLeft = val;
    return _child;
  }

  /// Custom Top Padding
  T pt(dynamic val) {
    paddingTop = val;
    return _child;
  }

  /// Custom Right Padding
  T pr(dynamic val) {
    paddingRight = val;
    return _child;
  }

  /// Custom Bottom Padding
  T pb(dynamic val) {
    paddingBottom = val;
    return _child;
  }

  /// All Side Padding
  T get p0 {
    paddingLeft = TwSizes.spacer0;
    paddingTop = TwSizes.spacer0;
    paddingRight = TwSizes.spacer0;
    paddingBottom = TwSizes.spacer0;
    return _child;
  }

  T get p1 {
    paddingLeft = TwSizes.spacer1;
    paddingTop = TwSizes.spacer1;
    paddingRight = TwSizes.spacer1;
    paddingBottom = TwSizes.spacer1;
    return _child;
  }

  T get p2 {
    paddingLeft = TwSizes.spacer2;
    paddingTop = TwSizes.spacer2;
    paddingRight = TwSizes.spacer2;
    paddingBottom = TwSizes.spacer2;
    return _child;
  }

  T get p3 {
    paddingLeft = TwSizes.spacer3;
    paddingTop = TwSizes.spacer3;
    paddingRight = TwSizes.spacer3;
    paddingBottom = TwSizes.spacer3;
    return _child;
  }

  T get p4 {
    paddingLeft = TwSizes.spacer4;
    paddingTop = TwSizes.spacer4;
    paddingRight = TwSizes.spacer4;
    paddingBottom = TwSizes.spacer4;
    return _child;
  }

  T get p5 {
    paddingLeft = TwSizes.spacer5;
    paddingTop = TwSizes.spacer5;
    paddingRight = TwSizes.spacer5;
    paddingBottom = TwSizes.spacer5;
    return _child;
  }

  T get p6 {
    paddingLeft = TwSizes.spacer6;
    paddingTop = TwSizes.spacer6;
    paddingRight = TwSizes.spacer6;
    paddingBottom = TwSizes.spacer6;
    return _child;
  }

  T get p7 {
    paddingLeft = TwSizes.spacer7;
    paddingTop = TwSizes.spacer7;
    paddingRight = TwSizes.spacer7;
    paddingBottom = TwSizes.spacer7;
    return _child;
  }

  T get p8 {
    paddingLeft = TwSizes.spacer8;
    paddingTop = TwSizes.spacer8;
    paddingRight = TwSizes.spacer8;
    paddingBottom = TwSizes.spacer8;
    return _child;
  }

  T get p9 {
    paddingLeft = TwSizes.spacer9;
    paddingTop = TwSizes.spacer9;
    paddingRight = TwSizes.spacer9;
    paddingBottom = TwSizes.spacer9;
    return _child;
  }

  T get p10 {
    paddingLeft = TwSizes.spacer10;
    paddingTop = TwSizes.spacer10;
    paddingRight = TwSizes.spacer10;
    paddingBottom = TwSizes.spacer10;
    return _child;
  }

  T get p11 {
    paddingLeft = TwSizes.spacer11;
    paddingTop = TwSizes.spacer11;
    paddingRight = TwSizes.spacer11;
    paddingBottom = TwSizes.spacer11;
    return _child;
  }

  T get p12 {
    paddingLeft = TwSizes.spacer12;
    paddingTop = TwSizes.spacer12;
    paddingRight = TwSizes.spacer12;
    paddingBottom = TwSizes.spacer12;
    return _child;
  }

  T get p14 {
    paddingLeft = TwSizes.spacer14;
    paddingTop = TwSizes.spacer14;
    paddingRight = TwSizes.spacer14;
    paddingBottom = TwSizes.spacer14;
    return _child;
  }

  T get p16 {
    paddingLeft = TwSizes.spacer16;
    paddingTop = TwSizes.spacer16;
    paddingRight = TwSizes.spacer16;
    paddingBottom = TwSizes.spacer16;
    return _child;
  }

  T get p20 {
    paddingLeft = TwSizes.spacer20;
    paddingTop = TwSizes.spacer20;
    paddingRight = TwSizes.spacer20;
    paddingBottom = TwSizes.spacer20;
    return _child;
  }

  T get p24 {
    paddingLeft = TwSizes.spacer24;
    paddingTop = TwSizes.spacer24;
    paddingRight = TwSizes.spacer24;
    paddingBottom = TwSizes.spacer24;
    return _child;
  }

  T get p28 {
    paddingLeft = TwSizes.spacer28;
    paddingTop = TwSizes.spacer28;
    paddingRight = TwSizes.spacer28;
    paddingBottom = TwSizes.spacer28;
    return _child;
  }

  T get p32 {
    paddingLeft = TwSizes.spacer32;
    paddingTop = TwSizes.spacer32;
    paddingRight = TwSizes.spacer32;
    paddingBottom = TwSizes.spacer32;
    return _child;
  }

  T get p36 {
    paddingLeft = TwSizes.spacer36;
    paddingTop = TwSizes.spacer36;
    paddingRight = TwSizes.spacer36;
    paddingBottom = TwSizes.spacer36;
    return _child;
  }

  T get p40 {
    paddingLeft = TwSizes.spacer40;
    paddingTop = TwSizes.spacer40;
    paddingRight = TwSizes.spacer40;
    paddingBottom = TwSizes.spacer40;
    return _child;
  }

  T get p44 {
    paddingLeft = TwSizes.spacer44;
    paddingTop = TwSizes.spacer44;
    paddingRight = TwSizes.spacer44;
    paddingBottom = TwSizes.spacer44;
    return _child;
  }

  T get p48 {
    paddingLeft = TwSizes.spacer48;
    paddingTop = TwSizes.spacer48;
    paddingRight = TwSizes.spacer48;
    paddingBottom = TwSizes.spacer48;
    return _child;
  }

  T get p52 {
    paddingLeft = TwSizes.spacer52;
    paddingTop = TwSizes.spacer52;
    paddingRight = TwSizes.spacer52;
    paddingBottom = TwSizes.spacer52;
    return _child;
  }

  T get p56 {
    paddingLeft = TwSizes.spacer56;
    paddingTop = TwSizes.spacer56;
    paddingRight = TwSizes.spacer56;
    paddingBottom = TwSizes.spacer56;
    return _child;
  }

  T get p60 {
    paddingLeft = TwSizes.spacer60;
    paddingTop = TwSizes.spacer60;
    paddingRight = TwSizes.spacer60;
    paddingBottom = TwSizes.spacer60;
    return _child;
  }

  T get p64 {
    paddingLeft = TwSizes.spacer64;
    paddingTop = TwSizes.spacer64;
    paddingRight = TwSizes.spacer64;
    paddingBottom = TwSizes.spacer64;
    return _child;
  }

  /// Horizontal Padding
  T get px0 {
    paddingLeft = TwSizes.spacer0;
    paddingRight = TwSizes.spacer0;
    return _child;
  }

  T get px1 {
    paddingLeft = TwSizes.spacer1;
    paddingRight = TwSizes.spacer1;
    return _child;
  }

  T get px2 {
    paddingLeft = TwSizes.spacer2;
    paddingRight = TwSizes.spacer2;
    return _child;
  }

  T get px3 {
    paddingLeft = TwSizes.spacer3;
    paddingRight = TwSizes.spacer3;
    return _child;
  }

  T get px4 {
    paddingLeft = TwSizes.spacer4;
    paddingRight = TwSizes.spacer4;
    return _child;
  }

  T get px5 {
    paddingLeft = TwSizes.spacer5;
    paddingRight = TwSizes.spacer5;
    return _child;
  }

  T get px6 {
    paddingLeft = TwSizes.spacer6;
    paddingRight = TwSizes.spacer6;
    return _child;
  }

  T get px7 {
    paddingLeft = TwSizes.spacer7;
    paddingRight = TwSizes.spacer7;
    return _child;
  }

  T get px8 {
    paddingLeft = TwSizes.spacer8;
    paddingRight = TwSizes.spacer8;
    return _child;
  }

  T get px9 {
    paddingLeft = TwSizes.spacer9;
    paddingRight = TwSizes.spacer9;
    return _child;
  }

  T get px10 {
    paddingLeft = TwSizes.spacer10;
    paddingRight = TwSizes.spacer10;
    return _child;
  }

  T get px11 {
    paddingLeft = TwSizes.spacer11;
    paddingRight = TwSizes.spacer11;
    return _child;
  }

  T get px12 {
    paddingLeft = TwSizes.spacer12;
    paddingRight = TwSizes.spacer12;
    return _child;
  }

  T get px14 {
    paddingLeft = TwSizes.spacer14;
    paddingRight = TwSizes.spacer14;
    return _child;
  }

  T get px16 {
    paddingLeft = TwSizes.spacer16;
    paddingRight = TwSizes.spacer16;
    return _child;
  }

  T get px20 {
    paddingLeft = TwSizes.spacer20;
    paddingRight = TwSizes.spacer20;
    return _child;
  }

  T get px24 {
    paddingLeft = TwSizes.spacer24;
    paddingRight = TwSizes.spacer24;
    return _child;
  }

  T get px28 {
    paddingLeft = TwSizes.spacer28;
    paddingRight = TwSizes.spacer28;
    return _child;
  }

  T get px32 {
    paddingLeft = TwSizes.spacer32;
    paddingRight = TwSizes.spacer32;
    return _child;
  }

  T get px36 {
    paddingLeft = TwSizes.spacer36;
    paddingRight = TwSizes.spacer36;
    return _child;
  }

  T get px40 {
    paddingLeft = TwSizes.spacer40;
    paddingRight = TwSizes.spacer40;
    return _child;
  }

  T get px44 {
    paddingLeft = TwSizes.spacer44;
    paddingRight = TwSizes.spacer44;
    return _child;
  }

  T get px48 {
    paddingLeft = TwSizes.spacer48;
    paddingRight = TwSizes.spacer48;
    return _child;
  }

  T get px52 {
    paddingLeft = TwSizes.spacer52;
    paddingRight = TwSizes.spacer52;
    return _child;
  }

  T get px56 {
    paddingLeft = TwSizes.spacer56;
    paddingRight = TwSizes.spacer56;
    return _child;
  }

  T get px60 {
    paddingLeft = TwSizes.spacer60;
    paddingRight = TwSizes.spacer60;
    return _child;
  }

  T get px64 {
    paddingLeft = TwSizes.spacer64;
    paddingRight = TwSizes.spacer64;
    return _child;
  }

  /// Vertical Padding
  T get py0 {
    paddingTop = TwSizes.spacer0;
    paddingBottom = TwSizes.spacer0;
    return _child;
  }

  T get py1 {
    paddingTop = TwSizes.spacer1;
    paddingBottom = TwSizes.spacer1;
    return _child;
  }

  T get py2 {
    paddingTop = TwSizes.spacer2;
    paddingBottom = TwSizes.spacer2;
    return _child;
  }

  T get py3 {
    paddingTop = TwSizes.spacer3;
    paddingBottom = TwSizes.spacer3;
    return _child;
  }

  T get py4 {
    paddingTop = TwSizes.spacer4;
    paddingBottom = TwSizes.spacer4;
    return _child;
  }

  T get py5 {
    paddingTop = TwSizes.spacer5;
    paddingBottom = TwSizes.spacer5;
    return _child;
  }

  T get py6 {
    paddingTop = TwSizes.spacer6;
    paddingBottom = TwSizes.spacer6;
    return _child;
  }

  T get py7 {
    paddingTop = TwSizes.spacer7;
    paddingBottom = TwSizes.spacer7;
    return _child;
  }

  T get py8 {
    paddingTop = TwSizes.spacer8;
    paddingBottom = TwSizes.spacer8;
    return _child;
  }

  T get py9 {
    paddingTop = TwSizes.spacer9;
    paddingBottom = TwSizes.spacer9;
    return _child;
  }

  T get py10 {
    paddingTop = TwSizes.spacer10;
    paddingBottom = TwSizes.spacer10;
    return _child;
  }

  T get py11 {
    paddingTop = TwSizes.spacer11;
    paddingBottom = TwSizes.spacer11;
    return _child;
  }

  T get py12 {
    paddingTop = TwSizes.spacer12;
    paddingBottom = TwSizes.spacer12;
    return _child;
  }

  T get py14 {
    paddingTop = TwSizes.spacer14;
    paddingBottom = TwSizes.spacer14;
    return _child;
  }

  T get py16 {
    paddingTop = TwSizes.spacer16;
    paddingBottom = TwSizes.spacer16;
    return _child;
  }

  T get py20 {
    paddingTop = TwSizes.spacer20;
    paddingBottom = TwSizes.spacer20;
    return _child;
  }

  T get py24 {
    paddingTop = TwSizes.spacer24;
    paddingBottom = TwSizes.spacer24;
    return _child;
  }

  T get py28 {
    paddingTop = TwSizes.spacer28;
    paddingBottom = TwSizes.spacer28;
    return _child;
  }

  T get py32 {
    paddingTop = TwSizes.spacer32;
    paddingBottom = TwSizes.spacer32;
    return _child;
  }

  T get py36 {
    paddingTop = TwSizes.spacer36;
    paddingBottom = TwSizes.spacer36;
    return _child;
  }

  T get py40 {
    paddingTop = TwSizes.spacer40;
    paddingBottom = TwSizes.spacer40;
    return _child;
  }

  T get py44 {
    paddingTop = TwSizes.spacer44;
    paddingBottom = TwSizes.spacer44;
    return _child;
  }

  T get py48 {
    paddingTop = TwSizes.spacer48;
    paddingBottom = TwSizes.spacer48;
    return _child;
  }

  T get py52 {
    paddingTop = TwSizes.spacer52;
    paddingBottom = TwSizes.spacer52;
    return _child;
  }

  T get py56 {
    paddingTop = TwSizes.spacer56;
    paddingBottom = TwSizes.spacer56;
    return _child;
  }

  T get py60 {
    paddingTop = TwSizes.spacer60;
    paddingBottom = TwSizes.spacer60;
    return _child;
  }

  T get py64 {
    paddingTop = TwSizes.spacer64;
    paddingBottom = TwSizes.spacer64;
    return _child;
  }

  /// Left Padding
  T get pl0 {
    paddingLeft = TwSizes.spacer0;
    return _child;
  }

  T get pl1 {
    paddingLeft = TwSizes.spacer1;
    return _child;
  }

  T get pl2 {
    paddingLeft = TwSizes.spacer2;
    return _child;
  }

  T get pl3 {
    paddingLeft = TwSizes.spacer3;
    return _child;
  }

  T get pl4 {
    paddingLeft = TwSizes.spacer4;
    return _child;
  }

  T get pl5 {
    paddingLeft = TwSizes.spacer5;
    return _child;
  }

  T get pl6 {
    paddingLeft = TwSizes.spacer6;
    return _child;
  }

  T get pl7 {
    paddingLeft = TwSizes.spacer7;
    return _child;
  }

  T get pl8 {
    paddingLeft = TwSizes.spacer8;
    return _child;
  }

  T get pl9 {
    paddingLeft = TwSizes.spacer9;
    return _child;
  }

  T get pl10 {
    paddingLeft = TwSizes.spacer10;
    return _child;
  }

  T get pl11 {
    paddingLeft = TwSizes.spacer11;
    return _child;
  }

  T get pl12 {
    paddingLeft = TwSizes.spacer12;
    return _child;
  }

  T get pl14 {
    paddingLeft = TwSizes.spacer14;
    return _child;
  }

  T get pl16 {
    paddingLeft = TwSizes.spacer16;
    return _child;
  }

  T get pl20 {
    paddingLeft = TwSizes.spacer20;
    return _child;
  }

  T get pl24 {
    paddingLeft = TwSizes.spacer24;
    return _child;
  }

  T get pl28 {
    paddingLeft = TwSizes.spacer28;
    return _child;
  }

  T get pl32 {
    paddingLeft = TwSizes.spacer32;
    return _child;
  }

  T get pl36 {
    paddingLeft = TwSizes.spacer36;
    return _child;
  }

  T get pl40 {
    paddingLeft = TwSizes.spacer40;
    return _child;
  }

  T get pl44 {
    paddingLeft = TwSizes.spacer44;
    return _child;
  }

  T get pl48 {
    paddingLeft = TwSizes.spacer48;
    return _child;
  }

  T get pl52 {
    paddingLeft = TwSizes.spacer52;
    return _child;
  }

  T get pl56 {
    paddingLeft = TwSizes.spacer56;
    return _child;
  }

  T get pl60 {
    paddingLeft = TwSizes.spacer60;
    return _child;
  }

  T get pl64 {
    paddingLeft = TwSizes.spacer64;
    return _child;
  }

  /// Right Padding
  T get pt0 {
    paddingTop = TwSizes.spacer0;
    return _child;
  }

  T get pt1 {
    paddingTop = TwSizes.spacer1;
    return _child;
  }

  T get pt2 {
    paddingTop = TwSizes.spacer2;
    return _child;
  }

  T get pt3 {
    paddingTop = TwSizes.spacer3;
    return _child;
  }

  T get pt4 {
    paddingTop = TwSizes.spacer4;
    return _child;
  }

  T get pt5 {
    paddingTop = TwSizes.spacer5;
    return _child;
  }

  T get pt6 {
    paddingTop = TwSizes.spacer6;
    return _child;
  }

  T get pt7 {
    paddingTop = TwSizes.spacer7;
    return _child;
  }

  T get pt8 {
    paddingTop = TwSizes.spacer8;
    return _child;
  }

  T get pt9 {
    paddingTop = TwSizes.spacer9;
    return _child;
  }

  T get pt10 {
    paddingTop = TwSizes.spacer10;
    return _child;
  }

  T get pt11 {
    paddingTop = TwSizes.spacer11;
    return _child;
  }

  T get pt12 {
    paddingTop = TwSizes.spacer12;
    return _child;
  }

  T get pt14 {
    paddingTop = TwSizes.spacer14;
    return _child;
  }

  T get pt16 {
    paddingTop = TwSizes.spacer16;
    return _child;
  }

  T get pt20 {
    paddingTop = TwSizes.spacer20;
    return _child;
  }

  T get pt24 {
    paddingTop = TwSizes.spacer24;
    return _child;
  }

  T get pt28 {
    paddingTop = TwSizes.spacer28;
    return _child;
  }

  T get pt32 {
    paddingTop = TwSizes.spacer32;
    return _child;
  }

  T get pt36 {
    paddingTop = TwSizes.spacer36;
    return _child;
  }

  T get pt40 {
    paddingTop = TwSizes.spacer40;
    return _child;
  }

  T get pt44 {
    paddingTop = TwSizes.spacer44;
    return _child;
  }

  T get pt48 {
    paddingTop = TwSizes.spacer48;
    return _child;
  }

  T get pt52 {
    paddingTop = TwSizes.spacer52;
    return _child;
  }

  T get pt56 {
    paddingTop = TwSizes.spacer56;
    return _child;
  }

  T get pt60 {
    paddingTop = TwSizes.spacer60;
    return _child;
  }

  T get pt64 {
    paddingTop = TwSizes.spacer64;
    return _child;
  }

  /// Right Padding
  T get pr0 {
    paddingRight = TwSizes.spacer0;
    return _child;
  }

  T get pr1 {
    paddingRight = TwSizes.spacer1;
    return _child;
  }

  T get pr2 {
    paddingRight = TwSizes.spacer2;
    return _child;
  }

  T get pr3 {
    paddingRight = TwSizes.spacer3;
    return _child;
  }

  T get pr4 {
    paddingRight = TwSizes.spacer4;
    return _child;
  }

  T get pr5 {
    paddingRight = TwSizes.spacer5;
    return _child;
  }

  T get pr6 {
    paddingRight = TwSizes.spacer6;
    return _child;
  }

  T get pr7 {
    paddingRight = TwSizes.spacer7;
    return _child;
  }

  T get pr8 {
    paddingRight = TwSizes.spacer8;
    return _child;
  }

  T get pr9 {
    paddingRight = TwSizes.spacer9;
    return _child;
  }

  T get pr10 {
    paddingRight = TwSizes.spacer10;
    return _child;
  }

  T get pr11 {
    paddingRight = TwSizes.spacer11;
    return _child;
  }

  T get pr12 {
    paddingRight = TwSizes.spacer12;
    return _child;
  }

  T get pr14 {
    paddingRight = TwSizes.spacer14;
    return _child;
  }

  T get pr16 {
    paddingRight = TwSizes.spacer16;
    return _child;
  }

  T get pr20 {
    paddingRight = TwSizes.spacer20;
    return _child;
  }

  T get pr24 {
    paddingRight = TwSizes.spacer24;
    return _child;
  }

  T get pr28 {
    paddingRight = TwSizes.spacer28;
    return _child;
  }

  T get pr32 {
    paddingRight = TwSizes.spacer32;
    return _child;
  }

  T get pr36 {
    paddingRight = TwSizes.spacer36;
    return _child;
  }

  T get pr40 {
    paddingRight = TwSizes.spacer40;
    return _child;
  }

  T get pr44 {
    paddingRight = TwSizes.spacer44;
    return _child;
  }

  T get pr48 {
    paddingRight = TwSizes.spacer48;
    return _child;
  }

  T get pr52 {
    paddingRight = TwSizes.spacer52;
    return _child;
  }

  T get pr56 {
    paddingRight = TwSizes.spacer56;
    return _child;
  }

  T get pr60 {
    paddingRight = TwSizes.spacer60;
    return _child;
  }

  T get pr64 {
    paddingRight = TwSizes.spacer64;
    return _child;
  }

  /// Bottom Padding
  T get pb0 {
    paddingBottom = TwSizes.spacer0;
    return _child;
  }

  T get pb1 {
    paddingBottom = TwSizes.spacer1;
    return _child;
  }

  T get pb2 {
    paddingBottom = TwSizes.spacer2;
    return _child;
  }

  T get pb3 {
    paddingBottom = TwSizes.spacer3;
    return _child;
  }

  T get pb4 {
    paddingBottom = TwSizes.spacer4;
    return _child;
  }

  T get pb5 {
    paddingBottom = TwSizes.spacer5;
    return _child;
  }

  T get pb6 {
    paddingBottom = TwSizes.spacer6;
    return _child;
  }

  T get pb7 {
    paddingBottom = TwSizes.spacer7;
    return _child;
  }

  T get pb8 {
    paddingBottom = TwSizes.spacer8;
    return _child;
  }

  T get pb9 {
    paddingBottom = TwSizes.spacer9;
    return _child;
  }

  T get pb10 {
    paddingBottom = TwSizes.spacer10;
    return _child;
  }

  T get pb11 {
    paddingBottom = TwSizes.spacer11;
    return _child;
  }

  T get pb12 {
    paddingBottom = TwSizes.spacer12;
    return _child;
  }

  T get pb14 {
    paddingBottom = TwSizes.spacer14;
    return _child;
  }

  T get pb16 {
    paddingBottom = TwSizes.spacer16;
    return _child;
  }

  T get pb20 {
    paddingBottom = TwSizes.spacer20;
    return _child;
  }

  T get pb24 {
    paddingBottom = TwSizes.spacer24;
    return _child;
  }

  T get pb28 {
    paddingBottom = TwSizes.spacer28;
    return _child;
  }

  T get pb32 {
    paddingBottom = TwSizes.spacer32;
    return _child;
  }

  T get pb36 {
    paddingBottom = TwSizes.spacer36;
    return _child;
  }

  T get pb40 {
    paddingBottom = TwSizes.spacer40;
    return _child;
  }

  T get pb44 {
    paddingBottom = TwSizes.spacer44;
    return _child;
  }

  T get pb48 {
    paddingBottom = TwSizes.spacer48;
    return _child;
  }

  T get pb52 {
    paddingBottom = TwSizes.spacer52;
    return _child;
  }

  T get pb56 {
    paddingBottom = TwSizes.spacer56;
    return _child;
  }

  T get pb60 {
    paddingBottom = TwSizes.spacer60;
    return _child;
  }

  T get pb64 {
    paddingBottom = TwSizes.spacer64;
    return _child;
  }
}
