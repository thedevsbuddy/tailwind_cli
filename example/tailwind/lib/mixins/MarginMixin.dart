import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwMarginMixin<T> {
  late T _child;

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
  
  /// Custom All Side Margin
  T p(dynamic val){
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  } 
  
  /// Custom Horizontal Margin
  T px(dynamic val){
    marginLeft = val;
    marginRight = val;
    return _child;
  } 

  /// Custom Vertical Margin
  T py(dynamic val){
    marginTop = val;
    marginBottom = val;
    return _child;
  } 
  
  /// Custom Left Margin
  T pl(dynamic val){
    marginLeft = val;
    return _child;
  } 

  /// Custom Top Margin
  T pt(dynamic val){
    marginTop = val;
    return _child;
  } 

  /// Custom Right Margin
  T pr(dynamic val){
    marginRight = val;
    return _child;
  } 

  /// Custom Bottom Margin
  T pb(dynamic val){
    marginBottom = val;
    return _child;
  }
  
  /// All Side Margin
	T get p0 {
    marginLeft = Tw.spacer0;
    marginTop = Tw.spacer0;
    marginRight = Tw.spacer0;
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get p1 {
    marginLeft = Tw.spacer1;
    marginTop = Tw.spacer1;
    marginRight = Tw.spacer1;
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get p2 {
    marginLeft = Tw.spacer2;
    marginTop = Tw.spacer2;
    marginRight = Tw.spacer2;
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get p3 {
    marginLeft = Tw.spacer3;
    marginTop = Tw.spacer3;
    marginRight = Tw.spacer3;
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get p4 {
    marginLeft = Tw.spacer4;
    marginTop = Tw.spacer4;
    marginRight = Tw.spacer4;
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get p5 {
    marginLeft = Tw.spacer5;
    marginTop = Tw.spacer5;
    marginRight = Tw.spacer5;
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get p6 {
    marginLeft = Tw.spacer6;
    marginTop = Tw.spacer6;
    marginRight = Tw.spacer6;
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get p7 {
    marginLeft = Tw.spacer7;
    marginTop = Tw.spacer7;
    marginRight = Tw.spacer7;
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get p8 {
    marginLeft = Tw.spacer8;
    marginTop = Tw.spacer8;
    marginRight = Tw.spacer8;
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get p9 {
    marginLeft = Tw.spacer9;
    marginTop = Tw.spacer9;
    marginRight = Tw.spacer9;
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get p10 {
    marginLeft = Tw.spacer10;
    marginTop = Tw.spacer10;
    marginRight = Tw.spacer10;
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get p11 {
    marginLeft = Tw.spacer11;
    marginTop = Tw.spacer11;
    marginRight = Tw.spacer11;
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get p12 {
    marginLeft = Tw.spacer12;
    marginTop = Tw.spacer12;
    marginRight = Tw.spacer12;
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get p14 {
    marginLeft = Tw.spacer14;
    marginTop = Tw.spacer14;
    marginRight = Tw.spacer14;
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get p16 {
    marginLeft = Tw.spacer16;
    marginTop = Tw.spacer16;
    marginRight = Tw.spacer16;
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get p20 {
    marginLeft = Tw.spacer20;
    marginTop = Tw.spacer20;
    marginRight = Tw.spacer20;
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get p24 {
    marginLeft = Tw.spacer24;
    marginTop = Tw.spacer24;
    marginRight = Tw.spacer24;
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get p28 {
    marginLeft = Tw.spacer28;
    marginTop = Tw.spacer28;
    marginRight = Tw.spacer28;
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get p32 {
    marginLeft = Tw.spacer32;
    marginTop = Tw.spacer32;
    marginRight = Tw.spacer32;
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get p36 {
    marginLeft = Tw.spacer36;
    marginTop = Tw.spacer36;
    marginRight = Tw.spacer36;
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get p40 {
    marginLeft = Tw.spacer40;
    marginTop = Tw.spacer40;
    marginRight = Tw.spacer40;
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get p44 {
    marginLeft = Tw.spacer44;
    marginTop = Tw.spacer44;
    marginRight = Tw.spacer44;
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get p48 {
    marginLeft = Tw.spacer48;
    marginTop = Tw.spacer48;
    marginRight = Tw.spacer48;
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get p52 {
    marginLeft = Tw.spacer52;
    marginTop = Tw.spacer52;
    marginRight = Tw.spacer52;
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get p56 {
    marginLeft = Tw.spacer56;
    marginTop = Tw.spacer56;
    marginRight = Tw.spacer56;
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get p60 {
    marginLeft = Tw.spacer60;
    marginTop = Tw.spacer60;
    marginRight = Tw.spacer60;
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get p64 {
    marginLeft = Tw.spacer64;
    marginTop = Tw.spacer64;
    marginRight = Tw.spacer64;
    marginBottom = Tw.spacer64;
    return _child;
  }
	/// Horizontal Margin
	T get px0 {
    marginLeft = Tw.spacer0;
    marginRight = Tw.spacer0;
    return _child;
  }
	T get px1 {
    marginLeft = Tw.spacer1;
    marginRight = Tw.spacer1;
    return _child;
  }
	T get px2 {
    marginLeft = Tw.spacer2;
    marginRight = Tw.spacer2;
    return _child;
  }
	T get px3 {
    marginLeft = Tw.spacer3;
    marginRight = Tw.spacer3;
    return _child;
  }
	T get px4 {
    marginLeft = Tw.spacer4;
    marginRight = Tw.spacer4;
    return _child;
  }
	T get px5 {
    marginLeft = Tw.spacer5;
    marginRight = Tw.spacer5;
    return _child;
  }
	T get px6 {
    marginLeft = Tw.spacer6;
    marginRight = Tw.spacer6;
    return _child;
  }
	T get px7 {
    marginLeft = Tw.spacer7;
    marginRight = Tw.spacer7;
    return _child;
  }
	T get px8 {
    marginLeft = Tw.spacer8;
    marginRight = Tw.spacer8;
    return _child;
  }
	T get px9 {
    marginLeft = Tw.spacer9;
    marginRight = Tw.spacer9;
    return _child;
  }
	T get px10 {
    marginLeft = Tw.spacer10;
    marginRight = Tw.spacer10;
    return _child;
  }
	T get px11 {
    marginLeft = Tw.spacer11;
    marginRight = Tw.spacer11;
    return _child;
  }
	T get px12 {
    marginLeft = Tw.spacer12;
    marginRight = Tw.spacer12;
    return _child;
  }
	T get px14 {
    marginLeft = Tw.spacer14;
    marginRight = Tw.spacer14;
    return _child;
  }
	T get px16 {
    marginLeft = Tw.spacer16;
    marginRight = Tw.spacer16;
    return _child;
  }
	T get px20 {
    marginLeft = Tw.spacer20;
    marginRight = Tw.spacer20;
    return _child;
  }
	T get px24 {
    marginLeft = Tw.spacer24;
    marginRight = Tw.spacer24;
    return _child;
  }
	T get px28 {
    marginLeft = Tw.spacer28;
    marginRight = Tw.spacer28;
    return _child;
  }
	T get px32 {
    marginLeft = Tw.spacer32;
    marginRight = Tw.spacer32;
    return _child;
  }
	T get px36 {
    marginLeft = Tw.spacer36;
    marginRight = Tw.spacer36;
    return _child;
  }
	T get px40 {
    marginLeft = Tw.spacer40;
    marginRight = Tw.spacer40;
    return _child;
  }
	T get px44 {
    marginLeft = Tw.spacer44;
    marginRight = Tw.spacer44;
    return _child;
  }
	T get px48 {
    marginLeft = Tw.spacer48;
    marginRight = Tw.spacer48;
    return _child;
  }
	T get px52 {
    marginLeft = Tw.spacer52;
    marginRight = Tw.spacer52;
    return _child;
  }
	T get px56 {
    marginLeft = Tw.spacer56;
    marginRight = Tw.spacer56;
    return _child;
  }
	T get px60 {
    marginLeft = Tw.spacer60;
    marginRight = Tw.spacer60;
    return _child;
  }
	T get px64 {
    marginLeft = Tw.spacer64;
    marginRight = Tw.spacer64;
    return _child;
  }
	/// Vertical Margin
	T get py0 {
    marginTop = Tw.spacer0;
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get py1 {
    marginTop = Tw.spacer1;
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get py2 {
    marginTop = Tw.spacer2;
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get py3 {
    marginTop = Tw.spacer3;
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get py4 {
    marginTop = Tw.spacer4;
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get py5 {
    marginTop = Tw.spacer5;
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get py6 {
    marginTop = Tw.spacer6;
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get py7 {
    marginTop = Tw.spacer7;
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get py8 {
    marginTop = Tw.spacer8;
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get py9 {
    marginTop = Tw.spacer9;
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get py10 {
    marginTop = Tw.spacer10;
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get py11 {
    marginTop = Tw.spacer11;
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get py12 {
    marginTop = Tw.spacer12;
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get py14 {
    marginTop = Tw.spacer14;
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get py16 {
    marginTop = Tw.spacer16;
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get py20 {
    marginTop = Tw.spacer20;
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get py24 {
    marginTop = Tw.spacer24;
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get py28 {
    marginTop = Tw.spacer28;
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get py32 {
    marginTop = Tw.spacer32;
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get py36 {
    marginTop = Tw.spacer36;
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get py40 {
    marginTop = Tw.spacer40;
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get py44 {
    marginTop = Tw.spacer44;
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get py48 {
    marginTop = Tw.spacer48;
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get py52 {
    marginTop = Tw.spacer52;
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get py56 {
    marginTop = Tw.spacer56;
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get py60 {
    marginTop = Tw.spacer60;
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get py64 {
    marginTop = Tw.spacer64;
    marginBottom = Tw.spacer64;
    return _child;
  }
	/// Left Margin
	T get pl0 {
    marginLeft = Tw.spacer0;
    return _child;
  }
	T get pl1 {
    marginLeft = Tw.spacer1;
    return _child;
  }
	T get pl2 {
    marginLeft = Tw.spacer2;
    return _child;
  }
	T get pl3 {
    marginLeft = Tw.spacer3;
    return _child;
  }
	T get pl4 {
    marginLeft = Tw.spacer4;
    return _child;
  }
	T get pl5 {
    marginLeft = Tw.spacer5;
    return _child;
  }
	T get pl6 {
    marginLeft = Tw.spacer6;
    return _child;
  }
	T get pl7 {
    marginLeft = Tw.spacer7;
    return _child;
  }
	T get pl8 {
    marginLeft = Tw.spacer8;
    return _child;
  }
	T get pl9 {
    marginLeft = Tw.spacer9;
    return _child;
  }
	T get pl10 {
    marginLeft = Tw.spacer10;
    return _child;
  }
	T get pl11 {
    marginLeft = Tw.spacer11;
    return _child;
  }
	T get pl12 {
    marginLeft = Tw.spacer12;
    return _child;
  }
	T get pl14 {
    marginLeft = Tw.spacer14;
    return _child;
  }
	T get pl16 {
    marginLeft = Tw.spacer16;
    return _child;
  }
	T get pl20 {
    marginLeft = Tw.spacer20;
    return _child;
  }
	T get pl24 {
    marginLeft = Tw.spacer24;
    return _child;
  }
	T get pl28 {
    marginLeft = Tw.spacer28;
    return _child;
  }
	T get pl32 {
    marginLeft = Tw.spacer32;
    return _child;
  }
	T get pl36 {
    marginLeft = Tw.spacer36;
    return _child;
  }
	T get pl40 {
    marginLeft = Tw.spacer40;
    return _child;
  }
	T get pl44 {
    marginLeft = Tw.spacer44;
    return _child;
  }
	T get pl48 {
    marginLeft = Tw.spacer48;
    return _child;
  }
	T get pl52 {
    marginLeft = Tw.spacer52;
    return _child;
  }
	T get pl56 {
    marginLeft = Tw.spacer56;
    return _child;
  }
	T get pl60 {
    marginLeft = Tw.spacer60;
    return _child;
  }
	T get pl64 {
    marginLeft = Tw.spacer64;
    return _child;
  }
	/// Right Margin
	T get pt0 {
    marginTop = Tw.spacer0;
    return _child;
  }
	T get pt1 {
    marginTop = Tw.spacer1;
    return _child;
  }
	T get pt2 {
    marginTop = Tw.spacer2;
    return _child;
  }
	T get pt3 {
    marginTop = Tw.spacer3;
    return _child;
  }
	T get pt4 {
    marginTop = Tw.spacer4;
    return _child;
  }
	T get pt5 {
    marginTop = Tw.spacer5;
    return _child;
  }
	T get pt6 {
    marginTop = Tw.spacer6;
    return _child;
  }
	T get pt7 {
    marginTop = Tw.spacer7;
    return _child;
  }
	T get pt8 {
    marginTop = Tw.spacer8;
    return _child;
  }
	T get pt9 {
    marginTop = Tw.spacer9;
    return _child;
  }
	T get pt10 {
    marginTop = Tw.spacer10;
    return _child;
  }
	T get pt11 {
    marginTop = Tw.spacer11;
    return _child;
  }
	T get pt12 {
    marginTop = Tw.spacer12;
    return _child;
  }
	T get pt14 {
    marginTop = Tw.spacer14;
    return _child;
  }
	T get pt16 {
    marginTop = Tw.spacer16;
    return _child;
  }
	T get pt20 {
    marginTop = Tw.spacer20;
    return _child;
  }
	T get pt24 {
    marginTop = Tw.spacer24;
    return _child;
  }
	T get pt28 {
    marginTop = Tw.spacer28;
    return _child;
  }
	T get pt32 {
    marginTop = Tw.spacer32;
    return _child;
  }
	T get pt36 {
    marginTop = Tw.spacer36;
    return _child;
  }
	T get pt40 {
    marginTop = Tw.spacer40;
    return _child;
  }
	T get pt44 {
    marginTop = Tw.spacer44;
    return _child;
  }
	T get pt48 {
    marginTop = Tw.spacer48;
    return _child;
  }
	T get pt52 {
    marginTop = Tw.spacer52;
    return _child;
  }
	T get pt56 {
    marginTop = Tw.spacer56;
    return _child;
  }
	T get pt60 {
    marginTop = Tw.spacer60;
    return _child;
  }
	T get pt64 {
    marginTop = Tw.spacer64;
    return _child;
  }
	/// Right Margin
	T get pr0 {
    marginRight = Tw.spacer0;
    return _child;
  }
	T get pr1 {
    marginRight = Tw.spacer1;
    return _child;
  }
	T get pr2 {
    marginRight = Tw.spacer2;
    return _child;
  }
	T get pr3 {
    marginRight = Tw.spacer3;
    return _child;
  }
	T get pr4 {
    marginRight = Tw.spacer4;
    return _child;
  }
	T get pr5 {
    marginRight = Tw.spacer5;
    return _child;
  }
	T get pr6 {
    marginRight = Tw.spacer6;
    return _child;
  }
	T get pr7 {
    marginRight = Tw.spacer7;
    return _child;
  }
	T get pr8 {
    marginRight = Tw.spacer8;
    return _child;
  }
	T get pr9 {
    marginRight = Tw.spacer9;
    return _child;
  }
	T get pr10 {
    marginRight = Tw.spacer10;
    return _child;
  }
	T get pr11 {
    marginRight = Tw.spacer11;
    return _child;
  }
	T get pr12 {
    marginRight = Tw.spacer12;
    return _child;
  }
	T get pr14 {
    marginRight = Tw.spacer14;
    return _child;
  }
	T get pr16 {
    marginRight = Tw.spacer16;
    return _child;
  }
	T get pr20 {
    marginRight = Tw.spacer20;
    return _child;
  }
	T get pr24 {
    marginRight = Tw.spacer24;
    return _child;
  }
	T get pr28 {
    marginRight = Tw.spacer28;
    return _child;
  }
	T get pr32 {
    marginRight = Tw.spacer32;
    return _child;
  }
	T get pr36 {
    marginRight = Tw.spacer36;
    return _child;
  }
	T get pr40 {
    marginRight = Tw.spacer40;
    return _child;
  }
	T get pr44 {
    marginRight = Tw.spacer44;
    return _child;
  }
	T get pr48 {
    marginRight = Tw.spacer48;
    return _child;
  }
	T get pr52 {
    marginRight = Tw.spacer52;
    return _child;
  }
	T get pr56 {
    marginRight = Tw.spacer56;
    return _child;
  }
	T get pr60 {
    marginRight = Tw.spacer60;
    return _child;
  }
	T get pr64 {
    marginRight = Tw.spacer64;
    return _child;
  }
	/// Bottom Padding
	T get pb0 {
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get pb1 {
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get pb2 {
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get pb3 {
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get pb4 {
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get pb5 {
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get pb6 {
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get pb7 {
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get pb8 {
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get pb9 {
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get pb10 {
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get pb11 {
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get pb12 {
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get pb14 {
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get pb16 {
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get pb20 {
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get pb24 {
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get pb28 {
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get pb32 {
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get pb36 {
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get pb40 {
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get pb44 {
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get pb48 {
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get pb52 {
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get pb56 {
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get pb60 {
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get pb64 {
    marginBottom = Tw.spacer64;
    return _child;
  }
	  
}

