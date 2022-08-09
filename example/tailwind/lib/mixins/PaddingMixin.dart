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
  T p(dynamic val){
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  } 
  
  /// Custom Horizontal Padding
  T px(dynamic val){
    paddingLeft = val;
    paddingRight = val;
    return _child;
  } 

  /// Custom Vertical Padding
  T py(dynamic val){
    paddingTop = val;
    paddingBottom = val;
    return _child;
  } 
  
  /// Custom Left Padding
  T pl(dynamic val){
    paddingLeft = val;
    return _child;
  } 

  /// Custom Top Padding
  T pt(dynamic val){
    paddingTop = val;
    return _child;
  } 

  /// Custom Right Padding
  T pr(dynamic val){
    paddingRight = val;
    return _child;
  } 

  /// Custom Bottom Padding
  T pb(dynamic val){
    paddingBottom = val;
    return _child;
  }
  
  /// All Side Padding
	T get p0 {
    paddingLeft = spacer0;
    paddingTop = spacer0;
    paddingRight = spacer0;
    paddingBottom = spacer0;
    return _child;
  }
	T get p1 {
    paddingLeft = spacer1;
    paddingTop = spacer1;
    paddingRight = spacer1;
    paddingBottom = spacer1;
    return _child;
  }
	T get p2 {
    paddingLeft = spacer2;
    paddingTop = spacer2;
    paddingRight = spacer2;
    paddingBottom = spacer2;
    return _child;
  }
	T get p3 {
    paddingLeft = spacer3;
    paddingTop = spacer3;
    paddingRight = spacer3;
    paddingBottom = spacer3;
    return _child;
  }
	T get p4 {
    paddingLeft = spacer4;
    paddingTop = spacer4;
    paddingRight = spacer4;
    paddingBottom = spacer4;
    return _child;
  }
	T get p5 {
    paddingLeft = spacer5;
    paddingTop = spacer5;
    paddingRight = spacer5;
    paddingBottom = spacer5;
    return _child;
  }
	T get p6 {
    paddingLeft = spacer6;
    paddingTop = spacer6;
    paddingRight = spacer6;
    paddingBottom = spacer6;
    return _child;
  }
	T get p7 {
    paddingLeft = spacer7;
    paddingTop = spacer7;
    paddingRight = spacer7;
    paddingBottom = spacer7;
    return _child;
  }
	T get p8 {
    paddingLeft = spacer8;
    paddingTop = spacer8;
    paddingRight = spacer8;
    paddingBottom = spacer8;
    return _child;
  }
	T get p9 {
    paddingLeft = spacer9;
    paddingTop = spacer9;
    paddingRight = spacer9;
    paddingBottom = spacer9;
    return _child;
  }
	T get p10 {
    paddingLeft = spacer10;
    paddingTop = spacer10;
    paddingRight = spacer10;
    paddingBottom = spacer10;
    return _child;
  }
	T get p11 {
    paddingLeft = spacer11;
    paddingTop = spacer11;
    paddingRight = spacer11;
    paddingBottom = spacer11;
    return _child;
  }
	T get p12 {
    paddingLeft = spacer12;
    paddingTop = spacer12;
    paddingRight = spacer12;
    paddingBottom = spacer12;
    return _child;
  }
	T get p14 {
    paddingLeft = spacer14;
    paddingTop = spacer14;
    paddingRight = spacer14;
    paddingBottom = spacer14;
    return _child;
  }
	T get p16 {
    paddingLeft = spacer16;
    paddingTop = spacer16;
    paddingRight = spacer16;
    paddingBottom = spacer16;
    return _child;
  }
	T get p20 {
    paddingLeft = spacer20;
    paddingTop = spacer20;
    paddingRight = spacer20;
    paddingBottom = spacer20;
    return _child;
  }
	T get p24 {
    paddingLeft = spacer24;
    paddingTop = spacer24;
    paddingRight = spacer24;
    paddingBottom = spacer24;
    return _child;
  }
	T get p28 {
    paddingLeft = spacer28;
    paddingTop = spacer28;
    paddingRight = spacer28;
    paddingBottom = spacer28;
    return _child;
  }
	T get p32 {
    paddingLeft = spacer32;
    paddingTop = spacer32;
    paddingRight = spacer32;
    paddingBottom = spacer32;
    return _child;
  }
	T get p36 {
    paddingLeft = spacer36;
    paddingTop = spacer36;
    paddingRight = spacer36;
    paddingBottom = spacer36;
    return _child;
  }
	T get p40 {
    paddingLeft = spacer40;
    paddingTop = spacer40;
    paddingRight = spacer40;
    paddingBottom = spacer40;
    return _child;
  }
	T get p44 {
    paddingLeft = spacer44;
    paddingTop = spacer44;
    paddingRight = spacer44;
    paddingBottom = spacer44;
    return _child;
  }
	T get p48 {
    paddingLeft = spacer48;
    paddingTop = spacer48;
    paddingRight = spacer48;
    paddingBottom = spacer48;
    return _child;
  }
	T get p52 {
    paddingLeft = spacer52;
    paddingTop = spacer52;
    paddingRight = spacer52;
    paddingBottom = spacer52;
    return _child;
  }
	T get p56 {
    paddingLeft = spacer56;
    paddingTop = spacer56;
    paddingRight = spacer56;
    paddingBottom = spacer56;
    return _child;
  }
	T get p60 {
    paddingLeft = spacer60;
    paddingTop = spacer60;
    paddingRight = spacer60;
    paddingBottom = spacer60;
    return _child;
  }
	T get p64 {
    paddingLeft = spacer64;
    paddingTop = spacer64;
    paddingRight = spacer64;
    paddingBottom = spacer64;
    return _child;
  }
	/// Horizontal Padding
	T get px0 {
    paddingLeft = spacer0;
    paddingRight = spacer0;
    return _child;
  }
	T get px1 {
    paddingLeft = spacer1;
    paddingRight = spacer1;
    return _child;
  }
	T get px2 {
    paddingLeft = spacer2;
    paddingRight = spacer2;
    return _child;
  }
	T get px3 {
    paddingLeft = spacer3;
    paddingRight = spacer3;
    return _child;
  }
	T get px4 {
    paddingLeft = spacer4;
    paddingRight = spacer4;
    return _child;
  }
	T get px5 {
    paddingLeft = spacer5;
    paddingRight = spacer5;
    return _child;
  }
	T get px6 {
    paddingLeft = spacer6;
    paddingRight = spacer6;
    return _child;
  }
	T get px7 {
    paddingLeft = spacer7;
    paddingRight = spacer7;
    return _child;
  }
	T get px8 {
    paddingLeft = spacer8;
    paddingRight = spacer8;
    return _child;
  }
	T get px9 {
    paddingLeft = spacer9;
    paddingRight = spacer9;
    return _child;
  }
	T get px10 {
    paddingLeft = spacer10;
    paddingRight = spacer10;
    return _child;
  }
	T get px11 {
    paddingLeft = spacer11;
    paddingRight = spacer11;
    return _child;
  }
	T get px12 {
    paddingLeft = spacer12;
    paddingRight = spacer12;
    return _child;
  }
	T get px14 {
    paddingLeft = spacer14;
    paddingRight = spacer14;
    return _child;
  }
	T get px16 {
    paddingLeft = spacer16;
    paddingRight = spacer16;
    return _child;
  }
	T get px20 {
    paddingLeft = spacer20;
    paddingRight = spacer20;
    return _child;
  }
	T get px24 {
    paddingLeft = spacer24;
    paddingRight = spacer24;
    return _child;
  }
	T get px28 {
    paddingLeft = spacer28;
    paddingRight = spacer28;
    return _child;
  }
	T get px32 {
    paddingLeft = spacer32;
    paddingRight = spacer32;
    return _child;
  }
	T get px36 {
    paddingLeft = spacer36;
    paddingRight = spacer36;
    return _child;
  }
	T get px40 {
    paddingLeft = spacer40;
    paddingRight = spacer40;
    return _child;
  }
	T get px44 {
    paddingLeft = spacer44;
    paddingRight = spacer44;
    return _child;
  }
	T get px48 {
    paddingLeft = spacer48;
    paddingRight = spacer48;
    return _child;
  }
	T get px52 {
    paddingLeft = spacer52;
    paddingRight = spacer52;
    return _child;
  }
	T get px56 {
    paddingLeft = spacer56;
    paddingRight = spacer56;
    return _child;
  }
	T get px60 {
    paddingLeft = spacer60;
    paddingRight = spacer60;
    return _child;
  }
	T get px64 {
    paddingLeft = spacer64;
    paddingRight = spacer64;
    return _child;
  }
	/// Vertical Padding
	T get py0 {
    paddingTop = spacer0;
    paddingBottom = spacer0;
    return _child;
  }
	T get py1 {
    paddingTop = spacer1;
    paddingBottom = spacer1;
    return _child;
  }
	T get py2 {
    paddingTop = spacer2;
    paddingBottom = spacer2;
    return _child;
  }
	T get py3 {
    paddingTop = spacer3;
    paddingBottom = spacer3;
    return _child;
  }
	T get py4 {
    paddingTop = spacer4;
    paddingBottom = spacer4;
    return _child;
  }
	T get py5 {
    paddingTop = spacer5;
    paddingBottom = spacer5;
    return _child;
  }
	T get py6 {
    paddingTop = spacer6;
    paddingBottom = spacer6;
    return _child;
  }
	T get py7 {
    paddingTop = spacer7;
    paddingBottom = spacer7;
    return _child;
  }
	T get py8 {
    paddingTop = spacer8;
    paddingBottom = spacer8;
    return _child;
  }
	T get py9 {
    paddingTop = spacer9;
    paddingBottom = spacer9;
    return _child;
  }
	T get py10 {
    paddingTop = spacer10;
    paddingBottom = spacer10;
    return _child;
  }
	T get py11 {
    paddingTop = spacer11;
    paddingBottom = spacer11;
    return _child;
  }
	T get py12 {
    paddingTop = spacer12;
    paddingBottom = spacer12;
    return _child;
  }
	T get py14 {
    paddingTop = spacer14;
    paddingBottom = spacer14;
    return _child;
  }
	T get py16 {
    paddingTop = spacer16;
    paddingBottom = spacer16;
    return _child;
  }
	T get py20 {
    paddingTop = spacer20;
    paddingBottom = spacer20;
    return _child;
  }
	T get py24 {
    paddingTop = spacer24;
    paddingBottom = spacer24;
    return _child;
  }
	T get py28 {
    paddingTop = spacer28;
    paddingBottom = spacer28;
    return _child;
  }
	T get py32 {
    paddingTop = spacer32;
    paddingBottom = spacer32;
    return _child;
  }
	T get py36 {
    paddingTop = spacer36;
    paddingBottom = spacer36;
    return _child;
  }
	T get py40 {
    paddingTop = spacer40;
    paddingBottom = spacer40;
    return _child;
  }
	T get py44 {
    paddingTop = spacer44;
    paddingBottom = spacer44;
    return _child;
  }
	T get py48 {
    paddingTop = spacer48;
    paddingBottom = spacer48;
    return _child;
  }
	T get py52 {
    paddingTop = spacer52;
    paddingBottom = spacer52;
    return _child;
  }
	T get py56 {
    paddingTop = spacer56;
    paddingBottom = spacer56;
    return _child;
  }
	T get py60 {
    paddingTop = spacer60;
    paddingBottom = spacer60;
    return _child;
  }
	T get py64 {
    paddingTop = spacer64;
    paddingBottom = spacer64;
    return _child;
  }
	/// Left Padding
	T get pl0 {
    paddingLeft = spacer0;
    return _child;
  }
	T get pl1 {
    paddingLeft = spacer1;
    return _child;
  }
	T get pl2 {
    paddingLeft = spacer2;
    return _child;
  }
	T get pl3 {
    paddingLeft = spacer3;
    return _child;
  }
	T get pl4 {
    paddingLeft = spacer4;
    return _child;
  }
	T get pl5 {
    paddingLeft = spacer5;
    return _child;
  }
	T get pl6 {
    paddingLeft = spacer6;
    return _child;
  }
	T get pl7 {
    paddingLeft = spacer7;
    return _child;
  }
	T get pl8 {
    paddingLeft = spacer8;
    return _child;
  }
	T get pl9 {
    paddingLeft = spacer9;
    return _child;
  }
	T get pl10 {
    paddingLeft = spacer10;
    return _child;
  }
	T get pl11 {
    paddingLeft = spacer11;
    return _child;
  }
	T get pl12 {
    paddingLeft = spacer12;
    return _child;
  }
	T get pl14 {
    paddingLeft = spacer14;
    return _child;
  }
	T get pl16 {
    paddingLeft = spacer16;
    return _child;
  }
	T get pl20 {
    paddingLeft = spacer20;
    return _child;
  }
	T get pl24 {
    paddingLeft = spacer24;
    return _child;
  }
	T get pl28 {
    paddingLeft = spacer28;
    return _child;
  }
	T get pl32 {
    paddingLeft = spacer32;
    return _child;
  }
	T get pl36 {
    paddingLeft = spacer36;
    return _child;
  }
	T get pl40 {
    paddingLeft = spacer40;
    return _child;
  }
	T get pl44 {
    paddingLeft = spacer44;
    return _child;
  }
	T get pl48 {
    paddingLeft = spacer48;
    return _child;
  }
	T get pl52 {
    paddingLeft = spacer52;
    return _child;
  }
	T get pl56 {
    paddingLeft = spacer56;
    return _child;
  }
	T get pl60 {
    paddingLeft = spacer60;
    return _child;
  }
	T get pl64 {
    paddingLeft = spacer64;
    return _child;
  }
	/// Right Padding
	T get pt0 {
    paddingTop = spacer0;
    return _child;
  }
	T get pt1 {
    paddingTop = spacer1;
    return _child;
  }
	T get pt2 {
    paddingTop = spacer2;
    return _child;
  }
	T get pt3 {
    paddingTop = spacer3;
    return _child;
  }
	T get pt4 {
    paddingTop = spacer4;
    return _child;
  }
	T get pt5 {
    paddingTop = spacer5;
    return _child;
  }
	T get pt6 {
    paddingTop = spacer6;
    return _child;
  }
	T get pt7 {
    paddingTop = spacer7;
    return _child;
  }
	T get pt8 {
    paddingTop = spacer8;
    return _child;
  }
	T get pt9 {
    paddingTop = spacer9;
    return _child;
  }
	T get pt10 {
    paddingTop = spacer10;
    return _child;
  }
	T get pt11 {
    paddingTop = spacer11;
    return _child;
  }
	T get pt12 {
    paddingTop = spacer12;
    return _child;
  }
	T get pt14 {
    paddingTop = spacer14;
    return _child;
  }
	T get pt16 {
    paddingTop = spacer16;
    return _child;
  }
	T get pt20 {
    paddingTop = spacer20;
    return _child;
  }
	T get pt24 {
    paddingTop = spacer24;
    return _child;
  }
	T get pt28 {
    paddingTop = spacer28;
    return _child;
  }
	T get pt32 {
    paddingTop = spacer32;
    return _child;
  }
	T get pt36 {
    paddingTop = spacer36;
    return _child;
  }
	T get pt40 {
    paddingTop = spacer40;
    return _child;
  }
	T get pt44 {
    paddingTop = spacer44;
    return _child;
  }
	T get pt48 {
    paddingTop = spacer48;
    return _child;
  }
	T get pt52 {
    paddingTop = spacer52;
    return _child;
  }
	T get pt56 {
    paddingTop = spacer56;
    return _child;
  }
	T get pt60 {
    paddingTop = spacer60;
    return _child;
  }
	T get pt64 {
    paddingTop = spacer64;
    return _child;
  }
	/// Right Padding
	T get pr0 {
    paddingRight = spacer0;
    return _child;
  }
	T get pr1 {
    paddingRight = spacer1;
    return _child;
  }
	T get pr2 {
    paddingRight = spacer2;
    return _child;
  }
	T get pr3 {
    paddingRight = spacer3;
    return _child;
  }
	T get pr4 {
    paddingRight = spacer4;
    return _child;
  }
	T get pr5 {
    paddingRight = spacer5;
    return _child;
  }
	T get pr6 {
    paddingRight = spacer6;
    return _child;
  }
	T get pr7 {
    paddingRight = spacer7;
    return _child;
  }
	T get pr8 {
    paddingRight = spacer8;
    return _child;
  }
	T get pr9 {
    paddingRight = spacer9;
    return _child;
  }
	T get pr10 {
    paddingRight = spacer10;
    return _child;
  }
	T get pr11 {
    paddingRight = spacer11;
    return _child;
  }
	T get pr12 {
    paddingRight = spacer12;
    return _child;
  }
	T get pr14 {
    paddingRight = spacer14;
    return _child;
  }
	T get pr16 {
    paddingRight = spacer16;
    return _child;
  }
	T get pr20 {
    paddingRight = spacer20;
    return _child;
  }
	T get pr24 {
    paddingRight = spacer24;
    return _child;
  }
	T get pr28 {
    paddingRight = spacer28;
    return _child;
  }
	T get pr32 {
    paddingRight = spacer32;
    return _child;
  }
	T get pr36 {
    paddingRight = spacer36;
    return _child;
  }
	T get pr40 {
    paddingRight = spacer40;
    return _child;
  }
	T get pr44 {
    paddingRight = spacer44;
    return _child;
  }
	T get pr48 {
    paddingRight = spacer48;
    return _child;
  }
	T get pr52 {
    paddingRight = spacer52;
    return _child;
  }
	T get pr56 {
    paddingRight = spacer56;
    return _child;
  }
	T get pr60 {
    paddingRight = spacer60;
    return _child;
  }
	T get pr64 {
    paddingRight = spacer64;
    return _child;
  }
	/// Bottom Padding
	T get pb0 {
    paddingBottom = spacer0;
    return _child;
  }
	T get pb1 {
    paddingBottom = spacer1;
    return _child;
  }
	T get pb2 {
    paddingBottom = spacer2;
    return _child;
  }
	T get pb3 {
    paddingBottom = spacer3;
    return _child;
  }
	T get pb4 {
    paddingBottom = spacer4;
    return _child;
  }
	T get pb5 {
    paddingBottom = spacer5;
    return _child;
  }
	T get pb6 {
    paddingBottom = spacer6;
    return _child;
  }
	T get pb7 {
    paddingBottom = spacer7;
    return _child;
  }
	T get pb8 {
    paddingBottom = spacer8;
    return _child;
  }
	T get pb9 {
    paddingBottom = spacer9;
    return _child;
  }
	T get pb10 {
    paddingBottom = spacer10;
    return _child;
  }
	T get pb11 {
    paddingBottom = spacer11;
    return _child;
  }
	T get pb12 {
    paddingBottom = spacer12;
    return _child;
  }
	T get pb14 {
    paddingBottom = spacer14;
    return _child;
  }
	T get pb16 {
    paddingBottom = spacer16;
    return _child;
  }
	T get pb20 {
    paddingBottom = spacer20;
    return _child;
  }
	T get pb24 {
    paddingBottom = spacer24;
    return _child;
  }
	T get pb28 {
    paddingBottom = spacer28;
    return _child;
  }
	T get pb32 {
    paddingBottom = spacer32;
    return _child;
  }
	T get pb36 {
    paddingBottom = spacer36;
    return _child;
  }
	T get pb40 {
    paddingBottom = spacer40;
    return _child;
  }
	T get pb44 {
    paddingBottom = spacer44;
    return _child;
  }
	T get pb48 {
    paddingBottom = spacer48;
    return _child;
  }
	T get pb52 {
    paddingBottom = spacer52;
    return _child;
  }
	T get pb56 {
    paddingBottom = spacer56;
    return _child;
  }
	T get pb60 {
    paddingBottom = spacer60;
    return _child;
  }
	T get pb64 {
    paddingBottom = spacer64;
    return _child;
  }
	
}

