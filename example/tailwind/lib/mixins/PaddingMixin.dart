import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwPaddingMixin<T> {
  late T _child;

  @protected
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

  /// Custom All Side Padding
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

  /// Custom Vertical Padding
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
    paddingLeft = Tw.spacer0;
    paddingTop = Tw.spacer0;
    paddingRight = Tw.spacer0;
    paddingBottom = Tw.spacer0;
    return _child;
  }

  T get p1 {
    paddingLeft = Tw.spacer1;
    paddingTop = Tw.spacer1;
    paddingRight = Tw.spacer1;
    paddingBottom = Tw.spacer1;
    return _child;
  }

  T get p2 {
    paddingLeft = Tw.spacer2;
    paddingTop = Tw.spacer2;
    paddingRight = Tw.spacer2;
    paddingBottom = Tw.spacer2;
    return _child;
  }

  T get p3 {
    paddingLeft = Tw.spacer3;
    paddingTop = Tw.spacer3;
    paddingRight = Tw.spacer3;
    paddingBottom = Tw.spacer3;
    return _child;
  }

  T get p4 {
    paddingLeft = Tw.spacer4;
    paddingTop = Tw.spacer4;
    paddingRight = Tw.spacer4;
    paddingBottom = Tw.spacer4;
    return _child;
  }

  T get p5 {
    paddingLeft = Tw.spacer5;
    paddingTop = Tw.spacer5;
    paddingRight = Tw.spacer5;
    paddingBottom = Tw.spacer5;
    return _child;
  }

  T get p6 {
    paddingLeft = Tw.spacer6;
    paddingTop = Tw.spacer6;
    paddingRight = Tw.spacer6;
    paddingBottom = Tw.spacer6;
    return _child;
  }

  T get p7 {
    paddingLeft = Tw.spacer7;
    paddingTop = Tw.spacer7;
    paddingRight = Tw.spacer7;
    paddingBottom = Tw.spacer7;
    return _child;
  }

  T get p8 {
    paddingLeft = Tw.spacer8;
    paddingTop = Tw.spacer8;
    paddingRight = Tw.spacer8;
    paddingBottom = Tw.spacer8;
    return _child;
  }

  T get p9 {
    paddingLeft = Tw.spacer9;
    paddingTop = Tw.spacer9;
    paddingRight = Tw.spacer9;
    paddingBottom = Tw.spacer9;
    return _child;
  }

  T get p10 {
    paddingLeft = Tw.spacer10;
    paddingTop = Tw.spacer10;
    paddingRight = Tw.spacer10;
    paddingBottom = Tw.spacer10;
    return _child;
  }

  T get p11 {
    paddingLeft = Tw.spacer11;
    paddingTop = Tw.spacer11;
    paddingRight = Tw.spacer11;
    paddingBottom = Tw.spacer11;
    return _child;
  }

  T get p12 {
    paddingLeft = Tw.spacer12;
    paddingTop = Tw.spacer12;
    paddingRight = Tw.spacer12;
    paddingBottom = Tw.spacer12;
    return _child;
  }

  T get p14 {
    paddingLeft = Tw.spacer14;
    paddingTop = Tw.spacer14;
    paddingRight = Tw.spacer14;
    paddingBottom = Tw.spacer14;
    return _child;
  }

  T get p16 {
    paddingLeft = Tw.spacer16;
    paddingTop = Tw.spacer16;
    paddingRight = Tw.spacer16;
    paddingBottom = Tw.spacer16;
    return _child;
  }

  T get p20 {
    paddingLeft = Tw.spacer20;
    paddingTop = Tw.spacer20;
    paddingRight = Tw.spacer20;
    paddingBottom = Tw.spacer20;
    return _child;
  }

  T get p24 {
    paddingLeft = Tw.spacer24;
    paddingTop = Tw.spacer24;
    paddingRight = Tw.spacer24;
    paddingBottom = Tw.spacer24;
    return _child;
  }

  T get p28 {
    paddingLeft = Tw.spacer28;
    paddingTop = Tw.spacer28;
    paddingRight = Tw.spacer28;
    paddingBottom = Tw.spacer28;
    return _child;
  }

  T get p32 {
    paddingLeft = Tw.spacer32;
    paddingTop = Tw.spacer32;
    paddingRight = Tw.spacer32;
    paddingBottom = Tw.spacer32;
    return _child;
  }

  T get p36 {
    paddingLeft = Tw.spacer36;
    paddingTop = Tw.spacer36;
    paddingRight = Tw.spacer36;
    paddingBottom = Tw.spacer36;
    return _child;
  }

  T get p40 {
    paddingLeft = Tw.spacer40;
    paddingTop = Tw.spacer40;
    paddingRight = Tw.spacer40;
    paddingBottom = Tw.spacer40;
    return _child;
  }

  T get p44 {
    paddingLeft = Tw.spacer44;
    paddingTop = Tw.spacer44;
    paddingRight = Tw.spacer44;
    paddingBottom = Tw.spacer44;
    return _child;
  }

  T get p48 {
    paddingLeft = Tw.spacer48;
    paddingTop = Tw.spacer48;
    paddingRight = Tw.spacer48;
    paddingBottom = Tw.spacer48;
    return _child;
  }

  T get p52 {
    paddingLeft = Tw.spacer52;
    paddingTop = Tw.spacer52;
    paddingRight = Tw.spacer52;
    paddingBottom = Tw.spacer52;
    return _child;
  }

  T get p56 {
    paddingLeft = Tw.spacer56;
    paddingTop = Tw.spacer56;
    paddingRight = Tw.spacer56;
    paddingBottom = Tw.spacer56;
    return _child;
  }

  T get p60 {
    paddingLeft = Tw.spacer60;
    paddingTop = Tw.spacer60;
    paddingRight = Tw.spacer60;
    paddingBottom = Tw.spacer60;
    return _child;
  }

  T get p64 {
    paddingLeft = Tw.spacer64;
    paddingTop = Tw.spacer64;
    paddingRight = Tw.spacer64;
    paddingBottom = Tw.spacer64;
    return _child;
  }

  /// Horizontal Padding
  T get px0 {
    paddingLeft = Tw.spacer0;
    paddingRight = Tw.spacer0;
    return _child;
  }

  T get px1 {
    paddingLeft = Tw.spacer1;
    paddingRight = Tw.spacer1;
    return _child;
  }

  T get px2 {
    paddingLeft = Tw.spacer2;
    paddingRight = Tw.spacer2;
    return _child;
  }

  T get px3 {
    paddingLeft = Tw.spacer3;
    paddingRight = Tw.spacer3;
    return _child;
  }

  T get px4 {
    paddingLeft = Tw.spacer4;
    paddingRight = Tw.spacer4;
    return _child;
  }

  T get px5 {
    paddingLeft = Tw.spacer5;
    paddingRight = Tw.spacer5;
    return _child;
  }

  T get px6 {
    paddingLeft = Tw.spacer6;
    paddingRight = Tw.spacer6;
    return _child;
  }

  T get px7 {
    paddingLeft = Tw.spacer7;
    paddingRight = Tw.spacer7;
    return _child;
  }

  T get px8 {
    paddingLeft = Tw.spacer8;
    paddingRight = Tw.spacer8;
    return _child;
  }

  T get px9 {
    paddingLeft = Tw.spacer9;
    paddingRight = Tw.spacer9;
    return _child;
  }

  T get px10 {
    paddingLeft = Tw.spacer10;
    paddingRight = Tw.spacer10;
    return _child;
  }

  T get px11 {
    paddingLeft = Tw.spacer11;
    paddingRight = Tw.spacer11;
    return _child;
  }

  T get px12 {
    paddingLeft = Tw.spacer12;
    paddingRight = Tw.spacer12;
    return _child;
  }

  T get px14 {
    paddingLeft = Tw.spacer14;
    paddingRight = Tw.spacer14;
    return _child;
  }

  T get px16 {
    paddingLeft = Tw.spacer16;
    paddingRight = Tw.spacer16;
    return _child;
  }

  T get px20 {
    paddingLeft = Tw.spacer20;
    paddingRight = Tw.spacer20;
    return _child;
  }

  T get px24 {
    paddingLeft = Tw.spacer24;
    paddingRight = Tw.spacer24;
    return _child;
  }

  T get px28 {
    paddingLeft = Tw.spacer28;
    paddingRight = Tw.spacer28;
    return _child;
  }

  T get px32 {
    paddingLeft = Tw.spacer32;
    paddingRight = Tw.spacer32;
    return _child;
  }

  T get px36 {
    paddingLeft = Tw.spacer36;
    paddingRight = Tw.spacer36;
    return _child;
  }

  T get px40 {
    paddingLeft = Tw.spacer40;
    paddingRight = Tw.spacer40;
    return _child;
  }

  T get px44 {
    paddingLeft = Tw.spacer44;
    paddingRight = Tw.spacer44;
    return _child;
  }

  T get px48 {
    paddingLeft = Tw.spacer48;
    paddingRight = Tw.spacer48;
    return _child;
  }

  T get px52 {
    paddingLeft = Tw.spacer52;
    paddingRight = Tw.spacer52;
    return _child;
  }

  T get px56 {
    paddingLeft = Tw.spacer56;
    paddingRight = Tw.spacer56;
    return _child;
  }

  T get px60 {
    paddingLeft = Tw.spacer60;
    paddingRight = Tw.spacer60;
    return _child;
  }

  T get px64 {
    paddingLeft = Tw.spacer64;
    paddingRight = Tw.spacer64;
    return _child;
  }

  /// Vertical Padding
  T get py0 {
    paddingTop = Tw.spacer0;
    paddingBottom = Tw.spacer0;
    return _child;
  }

  T get py1 {
    paddingTop = Tw.spacer1;
    paddingBottom = Tw.spacer1;
    return _child;
  }

  T get py2 {
    paddingTop = Tw.spacer2;
    paddingBottom = Tw.spacer2;
    return _child;
  }

  T get py3 {
    paddingTop = Tw.spacer3;
    paddingBottom = Tw.spacer3;
    return _child;
  }

  T get py4 {
    paddingTop = Tw.spacer4;
    paddingBottom = Tw.spacer4;
    return _child;
  }

  T get py5 {
    paddingTop = Tw.spacer5;
    paddingBottom = Tw.spacer5;
    return _child;
  }

  T get py6 {
    paddingTop = Tw.spacer6;
    paddingBottom = Tw.spacer6;
    return _child;
  }

  T get py7 {
    paddingTop = Tw.spacer7;
    paddingBottom = Tw.spacer7;
    return _child;
  }

  T get py8 {
    paddingTop = Tw.spacer8;
    paddingBottom = Tw.spacer8;
    return _child;
  }

  T get py9 {
    paddingTop = Tw.spacer9;
    paddingBottom = Tw.spacer9;
    return _child;
  }

  T get py10 {
    paddingTop = Tw.spacer10;
    paddingBottom = Tw.spacer10;
    return _child;
  }

  T get py11 {
    paddingTop = Tw.spacer11;
    paddingBottom = Tw.spacer11;
    return _child;
  }

  T get py12 {
    paddingTop = Tw.spacer12;
    paddingBottom = Tw.spacer12;
    return _child;
  }

  T get py14 {
    paddingTop = Tw.spacer14;
    paddingBottom = Tw.spacer14;
    return _child;
  }

  T get py16 {
    paddingTop = Tw.spacer16;
    paddingBottom = Tw.spacer16;
    return _child;
  }

  T get py20 {
    paddingTop = Tw.spacer20;
    paddingBottom = Tw.spacer20;
    return _child;
  }

  T get py24 {
    paddingTop = Tw.spacer24;
    paddingBottom = Tw.spacer24;
    return _child;
  }

  T get py28 {
    paddingTop = Tw.spacer28;
    paddingBottom = Tw.spacer28;
    return _child;
  }

  T get py32 {
    paddingTop = Tw.spacer32;
    paddingBottom = Tw.spacer32;
    return _child;
  }

  T get py36 {
    paddingTop = Tw.spacer36;
    paddingBottom = Tw.spacer36;
    return _child;
  }

  T get py40 {
    paddingTop = Tw.spacer40;
    paddingBottom = Tw.spacer40;
    return _child;
  }

  T get py44 {
    paddingTop = Tw.spacer44;
    paddingBottom = Tw.spacer44;
    return _child;
  }

  T get py48 {
    paddingTop = Tw.spacer48;
    paddingBottom = Tw.spacer48;
    return _child;
  }

  T get py52 {
    paddingTop = Tw.spacer52;
    paddingBottom = Tw.spacer52;
    return _child;
  }

  T get py56 {
    paddingTop = Tw.spacer56;
    paddingBottom = Tw.spacer56;
    return _child;
  }

  T get py60 {
    paddingTop = Tw.spacer60;
    paddingBottom = Tw.spacer60;
    return _child;
  }

  T get py64 {
    paddingTop = Tw.spacer64;
    paddingBottom = Tw.spacer64;
    return _child;
  }

  /// Left Padding
  T get pl0 {
    paddingLeft = Tw.spacer0;
    return _child;
  }

  T get pl1 {
    paddingLeft = Tw.spacer1;
    return _child;
  }

  T get pl2 {
    paddingLeft = Tw.spacer2;
    return _child;
  }

  T get pl3 {
    paddingLeft = Tw.spacer3;
    return _child;
  }

  T get pl4 {
    paddingLeft = Tw.spacer4;
    return _child;
  }

  T get pl5 {
    paddingLeft = Tw.spacer5;
    return _child;
  }

  T get pl6 {
    paddingLeft = Tw.spacer6;
    return _child;
  }

  T get pl7 {
    paddingLeft = Tw.spacer7;
    return _child;
  }

  T get pl8 {
    paddingLeft = Tw.spacer8;
    return _child;
  }

  T get pl9 {
    paddingLeft = Tw.spacer9;
    return _child;
  }

  T get pl10 {
    paddingLeft = Tw.spacer10;
    return _child;
  }

  T get pl11 {
    paddingLeft = Tw.spacer11;
    return _child;
  }

  T get pl12 {
    paddingLeft = Tw.spacer12;
    return _child;
  }

  T get pl14 {
    paddingLeft = Tw.spacer14;
    return _child;
  }

  T get pl16 {
    paddingLeft = Tw.spacer16;
    return _child;
  }

  T get pl20 {
    paddingLeft = Tw.spacer20;
    return _child;
  }

  T get pl24 {
    paddingLeft = Tw.spacer24;
    return _child;
  }

  T get pl28 {
    paddingLeft = Tw.spacer28;
    return _child;
  }

  T get pl32 {
    paddingLeft = Tw.spacer32;
    return _child;
  }

  T get pl36 {
    paddingLeft = Tw.spacer36;
    return _child;
  }

  T get pl40 {
    paddingLeft = Tw.spacer40;
    return _child;
  }

  T get pl44 {
    paddingLeft = Tw.spacer44;
    return _child;
  }

  T get pl48 {
    paddingLeft = Tw.spacer48;
    return _child;
  }

  T get pl52 {
    paddingLeft = Tw.spacer52;
    return _child;
  }

  T get pl56 {
    paddingLeft = Tw.spacer56;
    return _child;
  }

  T get pl60 {
    paddingLeft = Tw.spacer60;
    return _child;
  }

  T get pl64 {
    paddingLeft = Tw.spacer64;
    return _child;
  }

  /// Right Padding
  T get pt0 {
    paddingTop = Tw.spacer0;
    return _child;
  }

  T get pt1 {
    paddingTop = Tw.spacer1;
    return _child;
  }

  T get pt2 {
    paddingTop = Tw.spacer2;
    return _child;
  }

  T get pt3 {
    paddingTop = Tw.spacer3;
    return _child;
  }

  T get pt4 {
    paddingTop = Tw.spacer4;
    return _child;
  }

  T get pt5 {
    paddingTop = Tw.spacer5;
    return _child;
  }

  T get pt6 {
    paddingTop = Tw.spacer6;
    return _child;
  }

  T get pt7 {
    paddingTop = Tw.spacer7;
    return _child;
  }

  T get pt8 {
    paddingTop = Tw.spacer8;
    return _child;
  }

  T get pt9 {
    paddingTop = Tw.spacer9;
    return _child;
  }

  T get pt10 {
    paddingTop = Tw.spacer10;
    return _child;
  }

  T get pt11 {
    paddingTop = Tw.spacer11;
    return _child;
  }

  T get pt12 {
    paddingTop = Tw.spacer12;
    return _child;
  }

  T get pt14 {
    paddingTop = Tw.spacer14;
    return _child;
  }

  T get pt16 {
    paddingTop = Tw.spacer16;
    return _child;
  }

  T get pt20 {
    paddingTop = Tw.spacer20;
    return _child;
  }

  T get pt24 {
    paddingTop = Tw.spacer24;
    return _child;
  }

  T get pt28 {
    paddingTop = Tw.spacer28;
    return _child;
  }

  T get pt32 {
    paddingTop = Tw.spacer32;
    return _child;
  }

  T get pt36 {
    paddingTop = Tw.spacer36;
    return _child;
  }

  T get pt40 {
    paddingTop = Tw.spacer40;
    return _child;
  }

  T get pt44 {
    paddingTop = Tw.spacer44;
    return _child;
  }

  T get pt48 {
    paddingTop = Tw.spacer48;
    return _child;
  }

  T get pt52 {
    paddingTop = Tw.spacer52;
    return _child;
  }

  T get pt56 {
    paddingTop = Tw.spacer56;
    return _child;
  }

  T get pt60 {
    paddingTop = Tw.spacer60;
    return _child;
  }

  T get pt64 {
    paddingTop = Tw.spacer64;
    return _child;
  }

  /// Right Padding
  T get pr0 {
    paddingRight = Tw.spacer0;
    return _child;
  }

  T get pr1 {
    paddingRight = Tw.spacer1;
    return _child;
  }

  T get pr2 {
    paddingRight = Tw.spacer2;
    return _child;
  }

  T get pr3 {
    paddingRight = Tw.spacer3;
    return _child;
  }

  T get pr4 {
    paddingRight = Tw.spacer4;
    return _child;
  }

  T get pr5 {
    paddingRight = Tw.spacer5;
    return _child;
  }

  T get pr6 {
    paddingRight = Tw.spacer6;
    return _child;
  }

  T get pr7 {
    paddingRight = Tw.spacer7;
    return _child;
  }

  T get pr8 {
    paddingRight = Tw.spacer8;
    return _child;
  }

  T get pr9 {
    paddingRight = Tw.spacer9;
    return _child;
  }

  T get pr10 {
    paddingRight = Tw.spacer10;
    return _child;
  }

  T get pr11 {
    paddingRight = Tw.spacer11;
    return _child;
  }

  T get pr12 {
    paddingRight = Tw.spacer12;
    return _child;
  }

  T get pr14 {
    paddingRight = Tw.spacer14;
    return _child;
  }

  T get pr16 {
    paddingRight = Tw.spacer16;
    return _child;
  }

  T get pr20 {
    paddingRight = Tw.spacer20;
    return _child;
  }

  T get pr24 {
    paddingRight = Tw.spacer24;
    return _child;
  }

  T get pr28 {
    paddingRight = Tw.spacer28;
    return _child;
  }

  T get pr32 {
    paddingRight = Tw.spacer32;
    return _child;
  }

  T get pr36 {
    paddingRight = Tw.spacer36;
    return _child;
  }

  T get pr40 {
    paddingRight = Tw.spacer40;
    return _child;
  }

  T get pr44 {
    paddingRight = Tw.spacer44;
    return _child;
  }

  T get pr48 {
    paddingRight = Tw.spacer48;
    return _child;
  }

  T get pr52 {
    paddingRight = Tw.spacer52;
    return _child;
  }

  T get pr56 {
    paddingRight = Tw.spacer56;
    return _child;
  }

  T get pr60 {
    paddingRight = Tw.spacer60;
    return _child;
  }

  T get pr64 {
    paddingRight = Tw.spacer64;
    return _child;
  }

  /// Bottom Padding
  T get pb0 {
    paddingBottom = Tw.spacer0;
    return _child;
  }

  T get pb1 {
    paddingBottom = Tw.spacer1;
    return _child;
  }

  T get pb2 {
    paddingBottom = Tw.spacer2;
    return _child;
  }

  T get pb3 {
    paddingBottom = Tw.spacer3;
    return _child;
  }

  T get pb4 {
    paddingBottom = Tw.spacer4;
    return _child;
  }

  T get pb5 {
    paddingBottom = Tw.spacer5;
    return _child;
  }

  T get pb6 {
    paddingBottom = Tw.spacer6;
    return _child;
  }

  T get pb7 {
    paddingBottom = Tw.spacer7;
    return _child;
  }

  T get pb8 {
    paddingBottom = Tw.spacer8;
    return _child;
  }

  T get pb9 {
    paddingBottom = Tw.spacer9;
    return _child;
  }

  T get pb10 {
    paddingBottom = Tw.spacer10;
    return _child;
  }

  T get pb11 {
    paddingBottom = Tw.spacer11;
    return _child;
  }

  T get pb12 {
    paddingBottom = Tw.spacer12;
    return _child;
  }

  T get pb14 {
    paddingBottom = Tw.spacer14;
    return _child;
  }

  T get pb16 {
    paddingBottom = Tw.spacer16;
    return _child;
  }

  T get pb20 {
    paddingBottom = Tw.spacer20;
    return _child;
  }

  T get pb24 {
    paddingBottom = Tw.spacer24;
    return _child;
  }

  T get pb28 {
    paddingBottom = Tw.spacer28;
    return _child;
  }

  T get pb32 {
    paddingBottom = Tw.spacer32;
    return _child;
  }

  T get pb36 {
    paddingBottom = Tw.spacer36;
    return _child;
  }

  T get pb40 {
    paddingBottom = Tw.spacer40;
    return _child;
  }

  T get pb44 {
    paddingBottom = Tw.spacer44;
    return _child;
  }

  T get pb48 {
    paddingBottom = Tw.spacer48;
    return _child;
  }

  T get pb52 {
    paddingBottom = Tw.spacer52;
    return _child;
  }

  T get pb56 {
    paddingBottom = Tw.spacer56;
    return _child;
  }

  T get pb60 {
    paddingBottom = Tw.spacer60;
    return _child;
  }

  T get pb64 {
    paddingBottom = Tw.spacer64;
    return _child;
  }
}
