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
    paddingLeft = TwSpacers.sp0;
    paddingTop = TwSpacers.sp0;
    paddingRight = TwSpacers.sp0;
    paddingBottom = TwSpacers.sp0;
    return _child;
  }
	T get p1 {
    paddingLeft = TwSpacers.sp1;
    paddingTop = TwSpacers.sp1;
    paddingRight = TwSpacers.sp1;
    paddingBottom = TwSpacers.sp1;
    return _child;
  }
	T get p2 {
    paddingLeft = TwSpacers.sp2;
    paddingTop = TwSpacers.sp2;
    paddingRight = TwSpacers.sp2;
    paddingBottom = TwSpacers.sp2;
    return _child;
  }
	T get p3 {
    paddingLeft = TwSpacers.sp3;
    paddingTop = TwSpacers.sp3;
    paddingRight = TwSpacers.sp3;
    paddingBottom = TwSpacers.sp3;
    return _child;
  }
	T get p4 {
    paddingLeft = TwSpacers.sp4;
    paddingTop = TwSpacers.sp4;
    paddingRight = TwSpacers.sp4;
    paddingBottom = TwSpacers.sp4;
    return _child;
  }
	T get p5 {
    paddingLeft = TwSpacers.sp5;
    paddingTop = TwSpacers.sp5;
    paddingRight = TwSpacers.sp5;
    paddingBottom = TwSpacers.sp5;
    return _child;
  }
	T get p6 {
    paddingLeft = TwSpacers.sp6;
    paddingTop = TwSpacers.sp6;
    paddingRight = TwSpacers.sp6;
    paddingBottom = TwSpacers.sp6;
    return _child;
  }
	T get p7 {
    paddingLeft = TwSpacers.sp7;
    paddingTop = TwSpacers.sp7;
    paddingRight = TwSpacers.sp7;
    paddingBottom = TwSpacers.sp7;
    return _child;
  }
	T get p8 {
    paddingLeft = TwSpacers.sp8;
    paddingTop = TwSpacers.sp8;
    paddingRight = TwSpacers.sp8;
    paddingBottom = TwSpacers.sp8;
    return _child;
  }
	T get p9 {
    paddingLeft = TwSpacers.sp9;
    paddingTop = TwSpacers.sp9;
    paddingRight = TwSpacers.sp9;
    paddingBottom = TwSpacers.sp9;
    return _child;
  }
	T get p10 {
    paddingLeft = TwSpacers.sp10;
    paddingTop = TwSpacers.sp10;
    paddingRight = TwSpacers.sp10;
    paddingBottom = TwSpacers.sp10;
    return _child;
  }
	T get p11 {
    paddingLeft = TwSpacers.sp11;
    paddingTop = TwSpacers.sp11;
    paddingRight = TwSpacers.sp11;
    paddingBottom = TwSpacers.sp11;
    return _child;
  }
	T get p12 {
    paddingLeft = TwSpacers.sp12;
    paddingTop = TwSpacers.sp12;
    paddingRight = TwSpacers.sp12;
    paddingBottom = TwSpacers.sp12;
    return _child;
  }
	T get p14 {
    paddingLeft = TwSpacers.sp14;
    paddingTop = TwSpacers.sp14;
    paddingRight = TwSpacers.sp14;
    paddingBottom = TwSpacers.sp14;
    return _child;
  }
	T get p16 {
    paddingLeft = TwSpacers.sp16;
    paddingTop = TwSpacers.sp16;
    paddingRight = TwSpacers.sp16;
    paddingBottom = TwSpacers.sp16;
    return _child;
  }
	T get p20 {
    paddingLeft = TwSpacers.sp20;
    paddingTop = TwSpacers.sp20;
    paddingRight = TwSpacers.sp20;
    paddingBottom = TwSpacers.sp20;
    return _child;
  }
	T get p24 {
    paddingLeft = TwSpacers.sp24;
    paddingTop = TwSpacers.sp24;
    paddingRight = TwSpacers.sp24;
    paddingBottom = TwSpacers.sp24;
    return _child;
  }
	T get p28 {
    paddingLeft = TwSpacers.sp28;
    paddingTop = TwSpacers.sp28;
    paddingRight = TwSpacers.sp28;
    paddingBottom = TwSpacers.sp28;
    return _child;
  }
	T get p32 {
    paddingLeft = TwSpacers.sp32;
    paddingTop = TwSpacers.sp32;
    paddingRight = TwSpacers.sp32;
    paddingBottom = TwSpacers.sp32;
    return _child;
  }
	T get p36 {
    paddingLeft = TwSpacers.sp36;
    paddingTop = TwSpacers.sp36;
    paddingRight = TwSpacers.sp36;
    paddingBottom = TwSpacers.sp36;
    return _child;
  }
	T get p40 {
    paddingLeft = TwSpacers.sp40;
    paddingTop = TwSpacers.sp40;
    paddingRight = TwSpacers.sp40;
    paddingBottom = TwSpacers.sp40;
    return _child;
  }
	T get p44 {
    paddingLeft = TwSpacers.sp44;
    paddingTop = TwSpacers.sp44;
    paddingRight = TwSpacers.sp44;
    paddingBottom = TwSpacers.sp44;
    return _child;
  }
	T get p48 {
    paddingLeft = TwSpacers.sp48;
    paddingTop = TwSpacers.sp48;
    paddingRight = TwSpacers.sp48;
    paddingBottom = TwSpacers.sp48;
    return _child;
  }
	T get p52 {
    paddingLeft = TwSpacers.sp52;
    paddingTop = TwSpacers.sp52;
    paddingRight = TwSpacers.sp52;
    paddingBottom = TwSpacers.sp52;
    return _child;
  }
	T get p56 {
    paddingLeft = TwSpacers.sp56;
    paddingTop = TwSpacers.sp56;
    paddingRight = TwSpacers.sp56;
    paddingBottom = TwSpacers.sp56;
    return _child;
  }
	T get p60 {
    paddingLeft = TwSpacers.sp60;
    paddingTop = TwSpacers.sp60;
    paddingRight = TwSpacers.sp60;
    paddingBottom = TwSpacers.sp60;
    return _child;
  }
	T get p64 {
    paddingLeft = TwSpacers.sp64;
    paddingTop = TwSpacers.sp64;
    paddingRight = TwSpacers.sp64;
    paddingBottom = TwSpacers.sp64;
    return _child;
  }
	/// Horizontal Padding
	T get px0 {
    paddingLeft = TwSpacers.sp0;
    paddingRight = TwSpacers.sp0;
    return _child;
  }
	T get px1 {
    paddingLeft = TwSpacers.sp1;
    paddingRight = TwSpacers.sp1;
    return _child;
  }
	T get px2 {
    paddingLeft = TwSpacers.sp2;
    paddingRight = TwSpacers.sp2;
    return _child;
  }
	T get px3 {
    paddingLeft = TwSpacers.sp3;
    paddingRight = TwSpacers.sp3;
    return _child;
  }
	T get px4 {
    paddingLeft = TwSpacers.sp4;
    paddingRight = TwSpacers.sp4;
    return _child;
  }
	T get px5 {
    paddingLeft = TwSpacers.sp5;
    paddingRight = TwSpacers.sp5;
    return _child;
  }
	T get px6 {
    paddingLeft = TwSpacers.sp6;
    paddingRight = TwSpacers.sp6;
    return _child;
  }
	T get px7 {
    paddingLeft = TwSpacers.sp7;
    paddingRight = TwSpacers.sp7;
    return _child;
  }
	T get px8 {
    paddingLeft = TwSpacers.sp8;
    paddingRight = TwSpacers.sp8;
    return _child;
  }
	T get px9 {
    paddingLeft = TwSpacers.sp9;
    paddingRight = TwSpacers.sp9;
    return _child;
  }
	T get px10 {
    paddingLeft = TwSpacers.sp10;
    paddingRight = TwSpacers.sp10;
    return _child;
  }
	T get px11 {
    paddingLeft = TwSpacers.sp11;
    paddingRight = TwSpacers.sp11;
    return _child;
  }
	T get px12 {
    paddingLeft = TwSpacers.sp12;
    paddingRight = TwSpacers.sp12;
    return _child;
  }
	T get px14 {
    paddingLeft = TwSpacers.sp14;
    paddingRight = TwSpacers.sp14;
    return _child;
  }
	T get px16 {
    paddingLeft = TwSpacers.sp16;
    paddingRight = TwSpacers.sp16;
    return _child;
  }
	T get px20 {
    paddingLeft = TwSpacers.sp20;
    paddingRight = TwSpacers.sp20;
    return _child;
  }
	T get px24 {
    paddingLeft = TwSpacers.sp24;
    paddingRight = TwSpacers.sp24;
    return _child;
  }
	T get px28 {
    paddingLeft = TwSpacers.sp28;
    paddingRight = TwSpacers.sp28;
    return _child;
  }
	T get px32 {
    paddingLeft = TwSpacers.sp32;
    paddingRight = TwSpacers.sp32;
    return _child;
  }
	T get px36 {
    paddingLeft = TwSpacers.sp36;
    paddingRight = TwSpacers.sp36;
    return _child;
  }
	T get px40 {
    paddingLeft = TwSpacers.sp40;
    paddingRight = TwSpacers.sp40;
    return _child;
  }
	T get px44 {
    paddingLeft = TwSpacers.sp44;
    paddingRight = TwSpacers.sp44;
    return _child;
  }
	T get px48 {
    paddingLeft = TwSpacers.sp48;
    paddingRight = TwSpacers.sp48;
    return _child;
  }
	T get px52 {
    paddingLeft = TwSpacers.sp52;
    paddingRight = TwSpacers.sp52;
    return _child;
  }
	T get px56 {
    paddingLeft = TwSpacers.sp56;
    paddingRight = TwSpacers.sp56;
    return _child;
  }
	T get px60 {
    paddingLeft = TwSpacers.sp60;
    paddingRight = TwSpacers.sp60;
    return _child;
  }
	T get px64 {
    paddingLeft = TwSpacers.sp64;
    paddingRight = TwSpacers.sp64;
    return _child;
  }
	/// Vertical Padding
	T get py0 {
    paddingTop = TwSpacers.sp0;
    paddingBottom = TwSpacers.sp0;
    return _child;
  }
	T get py1 {
    paddingTop = TwSpacers.sp1;
    paddingBottom = TwSpacers.sp1;
    return _child;
  }
	T get py2 {
    paddingTop = TwSpacers.sp2;
    paddingBottom = TwSpacers.sp2;
    return _child;
  }
	T get py3 {
    paddingTop = TwSpacers.sp3;
    paddingBottom = TwSpacers.sp3;
    return _child;
  }
	T get py4 {
    paddingTop = TwSpacers.sp4;
    paddingBottom = TwSpacers.sp4;
    return _child;
  }
	T get py5 {
    paddingTop = TwSpacers.sp5;
    paddingBottom = TwSpacers.sp5;
    return _child;
  }
	T get py6 {
    paddingTop = TwSpacers.sp6;
    paddingBottom = TwSpacers.sp6;
    return _child;
  }
	T get py7 {
    paddingTop = TwSpacers.sp7;
    paddingBottom = TwSpacers.sp7;
    return _child;
  }
	T get py8 {
    paddingTop = TwSpacers.sp8;
    paddingBottom = TwSpacers.sp8;
    return _child;
  }
	T get py9 {
    paddingTop = TwSpacers.sp9;
    paddingBottom = TwSpacers.sp9;
    return _child;
  }
	T get py10 {
    paddingTop = TwSpacers.sp10;
    paddingBottom = TwSpacers.sp10;
    return _child;
  }
	T get py11 {
    paddingTop = TwSpacers.sp11;
    paddingBottom = TwSpacers.sp11;
    return _child;
  }
	T get py12 {
    paddingTop = TwSpacers.sp12;
    paddingBottom = TwSpacers.sp12;
    return _child;
  }
	T get py14 {
    paddingTop = TwSpacers.sp14;
    paddingBottom = TwSpacers.sp14;
    return _child;
  }
	T get py16 {
    paddingTop = TwSpacers.sp16;
    paddingBottom = TwSpacers.sp16;
    return _child;
  }
	T get py20 {
    paddingTop = TwSpacers.sp20;
    paddingBottom = TwSpacers.sp20;
    return _child;
  }
	T get py24 {
    paddingTop = TwSpacers.sp24;
    paddingBottom = TwSpacers.sp24;
    return _child;
  }
	T get py28 {
    paddingTop = TwSpacers.sp28;
    paddingBottom = TwSpacers.sp28;
    return _child;
  }
	T get py32 {
    paddingTop = TwSpacers.sp32;
    paddingBottom = TwSpacers.sp32;
    return _child;
  }
	T get py36 {
    paddingTop = TwSpacers.sp36;
    paddingBottom = TwSpacers.sp36;
    return _child;
  }
	T get py40 {
    paddingTop = TwSpacers.sp40;
    paddingBottom = TwSpacers.sp40;
    return _child;
  }
	T get py44 {
    paddingTop = TwSpacers.sp44;
    paddingBottom = TwSpacers.sp44;
    return _child;
  }
	T get py48 {
    paddingTop = TwSpacers.sp48;
    paddingBottom = TwSpacers.sp48;
    return _child;
  }
	T get py52 {
    paddingTop = TwSpacers.sp52;
    paddingBottom = TwSpacers.sp52;
    return _child;
  }
	T get py56 {
    paddingTop = TwSpacers.sp56;
    paddingBottom = TwSpacers.sp56;
    return _child;
  }
	T get py60 {
    paddingTop = TwSpacers.sp60;
    paddingBottom = TwSpacers.sp60;
    return _child;
  }
	T get py64 {
    paddingTop = TwSpacers.sp64;
    paddingBottom = TwSpacers.sp64;
    return _child;
  }
	/// Left Padding
	T get pl0 {
    paddingLeft = TwSpacers.sp0;
    return _child;
  }
	T get pl1 {
    paddingLeft = TwSpacers.sp1;
    return _child;
  }
	T get pl2 {
    paddingLeft = TwSpacers.sp2;
    return _child;
  }
	T get pl3 {
    paddingLeft = TwSpacers.sp3;
    return _child;
  }
	T get pl4 {
    paddingLeft = TwSpacers.sp4;
    return _child;
  }
	T get pl5 {
    paddingLeft = TwSpacers.sp5;
    return _child;
  }
	T get pl6 {
    paddingLeft = TwSpacers.sp6;
    return _child;
  }
	T get pl7 {
    paddingLeft = TwSpacers.sp7;
    return _child;
  }
	T get pl8 {
    paddingLeft = TwSpacers.sp8;
    return _child;
  }
	T get pl9 {
    paddingLeft = TwSpacers.sp9;
    return _child;
  }
	T get pl10 {
    paddingLeft = TwSpacers.sp10;
    return _child;
  }
	T get pl11 {
    paddingLeft = TwSpacers.sp11;
    return _child;
  }
	T get pl12 {
    paddingLeft = TwSpacers.sp12;
    return _child;
  }
	T get pl14 {
    paddingLeft = TwSpacers.sp14;
    return _child;
  }
	T get pl16 {
    paddingLeft = TwSpacers.sp16;
    return _child;
  }
	T get pl20 {
    paddingLeft = TwSpacers.sp20;
    return _child;
  }
	T get pl24 {
    paddingLeft = TwSpacers.sp24;
    return _child;
  }
	T get pl28 {
    paddingLeft = TwSpacers.sp28;
    return _child;
  }
	T get pl32 {
    paddingLeft = TwSpacers.sp32;
    return _child;
  }
	T get pl36 {
    paddingLeft = TwSpacers.sp36;
    return _child;
  }
	T get pl40 {
    paddingLeft = TwSpacers.sp40;
    return _child;
  }
	T get pl44 {
    paddingLeft = TwSpacers.sp44;
    return _child;
  }
	T get pl48 {
    paddingLeft = TwSpacers.sp48;
    return _child;
  }
	T get pl52 {
    paddingLeft = TwSpacers.sp52;
    return _child;
  }
	T get pl56 {
    paddingLeft = TwSpacers.sp56;
    return _child;
  }
	T get pl60 {
    paddingLeft = TwSpacers.sp60;
    return _child;
  }
	T get pl64 {
    paddingLeft = TwSpacers.sp64;
    return _child;
  }
	/// Right Padding
	T get pt0 {
    paddingTop = TwSpacers.sp0;
    return _child;
  }
	T get pt1 {
    paddingTop = TwSpacers.sp1;
    return _child;
  }
	T get pt2 {
    paddingTop = TwSpacers.sp2;
    return _child;
  }
	T get pt3 {
    paddingTop = TwSpacers.sp3;
    return _child;
  }
	T get pt4 {
    paddingTop = TwSpacers.sp4;
    return _child;
  }
	T get pt5 {
    paddingTop = TwSpacers.sp5;
    return _child;
  }
	T get pt6 {
    paddingTop = TwSpacers.sp6;
    return _child;
  }
	T get pt7 {
    paddingTop = TwSpacers.sp7;
    return _child;
  }
	T get pt8 {
    paddingTop = TwSpacers.sp8;
    return _child;
  }
	T get pt9 {
    paddingTop = TwSpacers.sp9;
    return _child;
  }
	T get pt10 {
    paddingTop = TwSpacers.sp10;
    return _child;
  }
	T get pt11 {
    paddingTop = TwSpacers.sp11;
    return _child;
  }
	T get pt12 {
    paddingTop = TwSpacers.sp12;
    return _child;
  }
	T get pt14 {
    paddingTop = TwSpacers.sp14;
    return _child;
  }
	T get pt16 {
    paddingTop = TwSpacers.sp16;
    return _child;
  }
	T get pt20 {
    paddingTop = TwSpacers.sp20;
    return _child;
  }
	T get pt24 {
    paddingTop = TwSpacers.sp24;
    return _child;
  }
	T get pt28 {
    paddingTop = TwSpacers.sp28;
    return _child;
  }
	T get pt32 {
    paddingTop = TwSpacers.sp32;
    return _child;
  }
	T get pt36 {
    paddingTop = TwSpacers.sp36;
    return _child;
  }
	T get pt40 {
    paddingTop = TwSpacers.sp40;
    return _child;
  }
	T get pt44 {
    paddingTop = TwSpacers.sp44;
    return _child;
  }
	T get pt48 {
    paddingTop = TwSpacers.sp48;
    return _child;
  }
	T get pt52 {
    paddingTop = TwSpacers.sp52;
    return _child;
  }
	T get pt56 {
    paddingTop = TwSpacers.sp56;
    return _child;
  }
	T get pt60 {
    paddingTop = TwSpacers.sp60;
    return _child;
  }
	T get pt64 {
    paddingTop = TwSpacers.sp64;
    return _child;
  }
	/// Right Padding
	T get pr0 {
    paddingRight = TwSpacers.sp0;
    return _child;
  }
	T get pr1 {
    paddingRight = TwSpacers.sp1;
    return _child;
  }
	T get pr2 {
    paddingRight = TwSpacers.sp2;
    return _child;
  }
	T get pr3 {
    paddingRight = TwSpacers.sp3;
    return _child;
  }
	T get pr4 {
    paddingRight = TwSpacers.sp4;
    return _child;
  }
	T get pr5 {
    paddingRight = TwSpacers.sp5;
    return _child;
  }
	T get pr6 {
    paddingRight = TwSpacers.sp6;
    return _child;
  }
	T get pr7 {
    paddingRight = TwSpacers.sp7;
    return _child;
  }
	T get pr8 {
    paddingRight = TwSpacers.sp8;
    return _child;
  }
	T get pr9 {
    paddingRight = TwSpacers.sp9;
    return _child;
  }
	T get pr10 {
    paddingRight = TwSpacers.sp10;
    return _child;
  }
	T get pr11 {
    paddingRight = TwSpacers.sp11;
    return _child;
  }
	T get pr12 {
    paddingRight = TwSpacers.sp12;
    return _child;
  }
	T get pr14 {
    paddingRight = TwSpacers.sp14;
    return _child;
  }
	T get pr16 {
    paddingRight = TwSpacers.sp16;
    return _child;
  }
	T get pr20 {
    paddingRight = TwSpacers.sp20;
    return _child;
  }
	T get pr24 {
    paddingRight = TwSpacers.sp24;
    return _child;
  }
	T get pr28 {
    paddingRight = TwSpacers.sp28;
    return _child;
  }
	T get pr32 {
    paddingRight = TwSpacers.sp32;
    return _child;
  }
	T get pr36 {
    paddingRight = TwSpacers.sp36;
    return _child;
  }
	T get pr40 {
    paddingRight = TwSpacers.sp40;
    return _child;
  }
	T get pr44 {
    paddingRight = TwSpacers.sp44;
    return _child;
  }
	T get pr48 {
    paddingRight = TwSpacers.sp48;
    return _child;
  }
	T get pr52 {
    paddingRight = TwSpacers.sp52;
    return _child;
  }
	T get pr56 {
    paddingRight = TwSpacers.sp56;
    return _child;
  }
	T get pr60 {
    paddingRight = TwSpacers.sp60;
    return _child;
  }
	T get pr64 {
    paddingRight = TwSpacers.sp64;
    return _child;
  }
	/// Bottom Padding
	T get pb0 {
    paddingBottom = TwSpacers.sp0;
    return _child;
  }
	T get pb1 {
    paddingBottom = TwSpacers.sp1;
    return _child;
  }
	T get pb2 {
    paddingBottom = TwSpacers.sp2;
    return _child;
  }
	T get pb3 {
    paddingBottom = TwSpacers.sp3;
    return _child;
  }
	T get pb4 {
    paddingBottom = TwSpacers.sp4;
    return _child;
  }
	T get pb5 {
    paddingBottom = TwSpacers.sp5;
    return _child;
  }
	T get pb6 {
    paddingBottom = TwSpacers.sp6;
    return _child;
  }
	T get pb7 {
    paddingBottom = TwSpacers.sp7;
    return _child;
  }
	T get pb8 {
    paddingBottom = TwSpacers.sp8;
    return _child;
  }
	T get pb9 {
    paddingBottom = TwSpacers.sp9;
    return _child;
  }
	T get pb10 {
    paddingBottom = TwSpacers.sp10;
    return _child;
  }
	T get pb11 {
    paddingBottom = TwSpacers.sp11;
    return _child;
  }
	T get pb12 {
    paddingBottom = TwSpacers.sp12;
    return _child;
  }
	T get pb14 {
    paddingBottom = TwSpacers.sp14;
    return _child;
  }
	T get pb16 {
    paddingBottom = TwSpacers.sp16;
    return _child;
  }
	T get pb20 {
    paddingBottom = TwSpacers.sp20;
    return _child;
  }
	T get pb24 {
    paddingBottom = TwSpacers.sp24;
    return _child;
  }
	T get pb28 {
    paddingBottom = TwSpacers.sp28;
    return _child;
  }
	T get pb32 {
    paddingBottom = TwSpacers.sp32;
    return _child;
  }
	T get pb36 {
    paddingBottom = TwSpacers.sp36;
    return _child;
  }
	T get pb40 {
    paddingBottom = TwSpacers.sp40;
    return _child;
  }
	T get pb44 {
    paddingBottom = TwSpacers.sp44;
    return _child;
  }
	T get pb48 {
    paddingBottom = TwSpacers.sp48;
    return _child;
  }
	T get pb52 {
    paddingBottom = TwSpacers.sp52;
    return _child;
  }
	T get pb56 {
    paddingBottom = TwSpacers.sp56;
    return _child;
  }
	T get pb60 {
    paddingBottom = TwSpacers.sp60;
    return _child;
  }
	T get pb64 {
    paddingBottom = TwSpacers.sp64;
    return _child;
  }
	
}

