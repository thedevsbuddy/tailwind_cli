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
  T m(dynamic val){
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  } 
  
  /// Custom Horizontal Margin
  T mx(dynamic val){
    marginLeft = val;
    marginRight = val;
    return _child;
  } 

  /// Custom Vertical Margin
  T my(dynamic val){
    marginTop = val;
    marginBottom = val;
    return _child;
  } 
  
  /// Custom Left Margin
  T ml(dynamic val){
    marginLeft = val;
    return _child;
  } 

  /// Custom Top Margin
  T mt(dynamic val){
    marginTop = val;
    return _child;
  } 

  /// Custom Right Margin
  T mr(dynamic val){
    marginRight = val;
    return _child;
  } 

  /// Custom Bottom Margin
  T mb(dynamic val){
    marginBottom = val;
    return _child;
  }
  
  /// All Side Margin
	T get m0 {
    marginLeft = TwSpacers.sp0;
    marginTop = TwSpacers.sp0;
    marginRight = TwSpacers.sp0;
    marginBottom = TwSpacers.sp0;
    return _child;
  }
	T get m1 {
    marginLeft = TwSpacers.sp1;
    marginTop = TwSpacers.sp1;
    marginRight = TwSpacers.sp1;
    marginBottom = TwSpacers.sp1;
    return _child;
  }
	T get m2 {
    marginLeft = TwSpacers.sp2;
    marginTop = TwSpacers.sp2;
    marginRight = TwSpacers.sp2;
    marginBottom = TwSpacers.sp2;
    return _child;
  }
	T get m3 {
    marginLeft = TwSpacers.sp3;
    marginTop = TwSpacers.sp3;
    marginRight = TwSpacers.sp3;
    marginBottom = TwSpacers.sp3;
    return _child;
  }
	T get m4 {
    marginLeft = TwSpacers.sp4;
    marginTop = TwSpacers.sp4;
    marginRight = TwSpacers.sp4;
    marginBottom = TwSpacers.sp4;
    return _child;
  }
	T get m5 {
    marginLeft = TwSpacers.sp5;
    marginTop = TwSpacers.sp5;
    marginRight = TwSpacers.sp5;
    marginBottom = TwSpacers.sp5;
    return _child;
  }
	T get m6 {
    marginLeft = TwSpacers.sp6;
    marginTop = TwSpacers.sp6;
    marginRight = TwSpacers.sp6;
    marginBottom = TwSpacers.sp6;
    return _child;
  }
	T get m7 {
    marginLeft = TwSpacers.sp7;
    marginTop = TwSpacers.sp7;
    marginRight = TwSpacers.sp7;
    marginBottom = TwSpacers.sp7;
    return _child;
  }
	T get m8 {
    marginLeft = TwSpacers.sp8;
    marginTop = TwSpacers.sp8;
    marginRight = TwSpacers.sp8;
    marginBottom = TwSpacers.sp8;
    return _child;
  }
	T get m9 {
    marginLeft = TwSpacers.sp9;
    marginTop = TwSpacers.sp9;
    marginRight = TwSpacers.sp9;
    marginBottom = TwSpacers.sp9;
    return _child;
  }
	T get m10 {
    marginLeft = TwSpacers.sp10;
    marginTop = TwSpacers.sp10;
    marginRight = TwSpacers.sp10;
    marginBottom = TwSpacers.sp10;
    return _child;
  }
	T get m11 {
    marginLeft = TwSpacers.sp11;
    marginTop = TwSpacers.sp11;
    marginRight = TwSpacers.sp11;
    marginBottom = TwSpacers.sp11;
    return _child;
  }
	T get m12 {
    marginLeft = TwSpacers.sp12;
    marginTop = TwSpacers.sp12;
    marginRight = TwSpacers.sp12;
    marginBottom = TwSpacers.sp12;
    return _child;
  }
	T get m14 {
    marginLeft = TwSpacers.sp14;
    marginTop = TwSpacers.sp14;
    marginRight = TwSpacers.sp14;
    marginBottom = TwSpacers.sp14;
    return _child;
  }
	T get m16 {
    marginLeft = TwSpacers.sp16;
    marginTop = TwSpacers.sp16;
    marginRight = TwSpacers.sp16;
    marginBottom = TwSpacers.sp16;
    return _child;
  }
	T get m20 {
    marginLeft = TwSpacers.sp20;
    marginTop = TwSpacers.sp20;
    marginRight = TwSpacers.sp20;
    marginBottom = TwSpacers.sp20;
    return _child;
  }
	T get m24 {
    marginLeft = TwSpacers.sp24;
    marginTop = TwSpacers.sp24;
    marginRight = TwSpacers.sp24;
    marginBottom = TwSpacers.sp24;
    return _child;
  }
	T get m28 {
    marginLeft = TwSpacers.sp28;
    marginTop = TwSpacers.sp28;
    marginRight = TwSpacers.sp28;
    marginBottom = TwSpacers.sp28;
    return _child;
  }
	T get m32 {
    marginLeft = TwSpacers.sp32;
    marginTop = TwSpacers.sp32;
    marginRight = TwSpacers.sp32;
    marginBottom = TwSpacers.sp32;
    return _child;
  }
	T get m36 {
    marginLeft = TwSpacers.sp36;
    marginTop = TwSpacers.sp36;
    marginRight = TwSpacers.sp36;
    marginBottom = TwSpacers.sp36;
    return _child;
  }
	T get m40 {
    marginLeft = TwSpacers.sp40;
    marginTop = TwSpacers.sp40;
    marginRight = TwSpacers.sp40;
    marginBottom = TwSpacers.sp40;
    return _child;
  }
	T get m44 {
    marginLeft = TwSpacers.sp44;
    marginTop = TwSpacers.sp44;
    marginRight = TwSpacers.sp44;
    marginBottom = TwSpacers.sp44;
    return _child;
  }
	T get m48 {
    marginLeft = TwSpacers.sp48;
    marginTop = TwSpacers.sp48;
    marginRight = TwSpacers.sp48;
    marginBottom = TwSpacers.sp48;
    return _child;
  }
	T get m52 {
    marginLeft = TwSpacers.sp52;
    marginTop = TwSpacers.sp52;
    marginRight = TwSpacers.sp52;
    marginBottom = TwSpacers.sp52;
    return _child;
  }
	T get m56 {
    marginLeft = TwSpacers.sp56;
    marginTop = TwSpacers.sp56;
    marginRight = TwSpacers.sp56;
    marginBottom = TwSpacers.sp56;
    return _child;
  }
	T get m60 {
    marginLeft = TwSpacers.sp60;
    marginTop = TwSpacers.sp60;
    marginRight = TwSpacers.sp60;
    marginBottom = TwSpacers.sp60;
    return _child;
  }
	T get m64 {
    marginLeft = TwSpacers.sp64;
    marginTop = TwSpacers.sp64;
    marginRight = TwSpacers.sp64;
    marginBottom = TwSpacers.sp64;
    return _child;
  }
	/// Horizontal Margin
	T get mx0 {
    marginLeft = TwSpacers.sp0;
    marginRight = TwSpacers.sp0;
    return _child;
  }
	T get mx1 {
    marginLeft = TwSpacers.sp1;
    marginRight = TwSpacers.sp1;
    return _child;
  }
	T get mx2 {
    marginLeft = TwSpacers.sp2;
    marginRight = TwSpacers.sp2;
    return _child;
  }
	T get mx3 {
    marginLeft = TwSpacers.sp3;
    marginRight = TwSpacers.sp3;
    return _child;
  }
	T get mx4 {
    marginLeft = TwSpacers.sp4;
    marginRight = TwSpacers.sp4;
    return _child;
  }
	T get mx5 {
    marginLeft = TwSpacers.sp5;
    marginRight = TwSpacers.sp5;
    return _child;
  }
	T get mx6 {
    marginLeft = TwSpacers.sp6;
    marginRight = TwSpacers.sp6;
    return _child;
  }
	T get mx7 {
    marginLeft = TwSpacers.sp7;
    marginRight = TwSpacers.sp7;
    return _child;
  }
	T get mx8 {
    marginLeft = TwSpacers.sp8;
    marginRight = TwSpacers.sp8;
    return _child;
  }
	T get mx9 {
    marginLeft = TwSpacers.sp9;
    marginRight = TwSpacers.sp9;
    return _child;
  }
	T get mx10 {
    marginLeft = TwSpacers.sp10;
    marginRight = TwSpacers.sp10;
    return _child;
  }
	T get mx11 {
    marginLeft = TwSpacers.sp11;
    marginRight = TwSpacers.sp11;
    return _child;
  }
	T get mx12 {
    marginLeft = TwSpacers.sp12;
    marginRight = TwSpacers.sp12;
    return _child;
  }
	T get mx14 {
    marginLeft = TwSpacers.sp14;
    marginRight = TwSpacers.sp14;
    return _child;
  }
	T get mx16 {
    marginLeft = TwSpacers.sp16;
    marginRight = TwSpacers.sp16;
    return _child;
  }
	T get mx20 {
    marginLeft = TwSpacers.sp20;
    marginRight = TwSpacers.sp20;
    return _child;
  }
	T get mx24 {
    marginLeft = TwSpacers.sp24;
    marginRight = TwSpacers.sp24;
    return _child;
  }
	T get mx28 {
    marginLeft = TwSpacers.sp28;
    marginRight = TwSpacers.sp28;
    return _child;
  }
	T get mx32 {
    marginLeft = TwSpacers.sp32;
    marginRight = TwSpacers.sp32;
    return _child;
  }
	T get mx36 {
    marginLeft = TwSpacers.sp36;
    marginRight = TwSpacers.sp36;
    return _child;
  }
	T get mx40 {
    marginLeft = TwSpacers.sp40;
    marginRight = TwSpacers.sp40;
    return _child;
  }
	T get mx44 {
    marginLeft = TwSpacers.sp44;
    marginRight = TwSpacers.sp44;
    return _child;
  }
	T get mx48 {
    marginLeft = TwSpacers.sp48;
    marginRight = TwSpacers.sp48;
    return _child;
  }
	T get mx52 {
    marginLeft = TwSpacers.sp52;
    marginRight = TwSpacers.sp52;
    return _child;
  }
	T get mx56 {
    marginLeft = TwSpacers.sp56;
    marginRight = TwSpacers.sp56;
    return _child;
  }
	T get mx60 {
    marginLeft = TwSpacers.sp60;
    marginRight = TwSpacers.sp60;
    return _child;
  }
	T get mx64 {
    marginLeft = TwSpacers.sp64;
    marginRight = TwSpacers.sp64;
    return _child;
  }
	/// Vertical Margin
	T get my0 {
    marginTop = TwSpacers.sp0;
    marginBottom = TwSpacers.sp0;
    return _child;
  }
	T get my1 {
    marginTop = TwSpacers.sp1;
    marginBottom = TwSpacers.sp1;
    return _child;
  }
	T get my2 {
    marginTop = TwSpacers.sp2;
    marginBottom = TwSpacers.sp2;
    return _child;
  }
	T get my3 {
    marginTop = TwSpacers.sp3;
    marginBottom = TwSpacers.sp3;
    return _child;
  }
	T get my4 {
    marginTop = TwSpacers.sp4;
    marginBottom = TwSpacers.sp4;
    return _child;
  }
	T get my5 {
    marginTop = TwSpacers.sp5;
    marginBottom = TwSpacers.sp5;
    return _child;
  }
	T get my6 {
    marginTop = TwSpacers.sp6;
    marginBottom = TwSpacers.sp6;
    return _child;
  }
	T get my7 {
    marginTop = TwSpacers.sp7;
    marginBottom = TwSpacers.sp7;
    return _child;
  }
	T get my8 {
    marginTop = TwSpacers.sp8;
    marginBottom = TwSpacers.sp8;
    return _child;
  }
	T get my9 {
    marginTop = TwSpacers.sp9;
    marginBottom = TwSpacers.sp9;
    return _child;
  }
	T get my10 {
    marginTop = TwSpacers.sp10;
    marginBottom = TwSpacers.sp10;
    return _child;
  }
	T get my11 {
    marginTop = TwSpacers.sp11;
    marginBottom = TwSpacers.sp11;
    return _child;
  }
	T get my12 {
    marginTop = TwSpacers.sp12;
    marginBottom = TwSpacers.sp12;
    return _child;
  }
	T get my14 {
    marginTop = TwSpacers.sp14;
    marginBottom = TwSpacers.sp14;
    return _child;
  }
	T get my16 {
    marginTop = TwSpacers.sp16;
    marginBottom = TwSpacers.sp16;
    return _child;
  }
	T get my20 {
    marginTop = TwSpacers.sp20;
    marginBottom = TwSpacers.sp20;
    return _child;
  }
	T get my24 {
    marginTop = TwSpacers.sp24;
    marginBottom = TwSpacers.sp24;
    return _child;
  }
	T get my28 {
    marginTop = TwSpacers.sp28;
    marginBottom = TwSpacers.sp28;
    return _child;
  }
	T get my32 {
    marginTop = TwSpacers.sp32;
    marginBottom = TwSpacers.sp32;
    return _child;
  }
	T get my36 {
    marginTop = TwSpacers.sp36;
    marginBottom = TwSpacers.sp36;
    return _child;
  }
	T get my40 {
    marginTop = TwSpacers.sp40;
    marginBottom = TwSpacers.sp40;
    return _child;
  }
	T get my44 {
    marginTop = TwSpacers.sp44;
    marginBottom = TwSpacers.sp44;
    return _child;
  }
	T get my48 {
    marginTop = TwSpacers.sp48;
    marginBottom = TwSpacers.sp48;
    return _child;
  }
	T get my52 {
    marginTop = TwSpacers.sp52;
    marginBottom = TwSpacers.sp52;
    return _child;
  }
	T get my56 {
    marginTop = TwSpacers.sp56;
    marginBottom = TwSpacers.sp56;
    return _child;
  }
	T get my60 {
    marginTop = TwSpacers.sp60;
    marginBottom = TwSpacers.sp60;
    return _child;
  }
	T get my64 {
    marginTop = TwSpacers.sp64;
    marginBottom = TwSpacers.sp64;
    return _child;
  }
	/// Left Margin
	T get ml0 {
    marginLeft = TwSpacers.sp0;
    return _child;
  }
	T get ml1 {
    marginLeft = TwSpacers.sp1;
    return _child;
  }
	T get ml2 {
    marginLeft = TwSpacers.sp2;
    return _child;
  }
	T get ml3 {
    marginLeft = TwSpacers.sp3;
    return _child;
  }
	T get ml4 {
    marginLeft = TwSpacers.sp4;
    return _child;
  }
	T get ml5 {
    marginLeft = TwSpacers.sp5;
    return _child;
  }
	T get ml6 {
    marginLeft = TwSpacers.sp6;
    return _child;
  }
	T get ml7 {
    marginLeft = TwSpacers.sp7;
    return _child;
  }
	T get ml8 {
    marginLeft = TwSpacers.sp8;
    return _child;
  }
	T get ml9 {
    marginLeft = TwSpacers.sp9;
    return _child;
  }
	T get ml10 {
    marginLeft = TwSpacers.sp10;
    return _child;
  }
	T get ml11 {
    marginLeft = TwSpacers.sp11;
    return _child;
  }
	T get ml12 {
    marginLeft = TwSpacers.sp12;
    return _child;
  }
	T get ml14 {
    marginLeft = TwSpacers.sp14;
    return _child;
  }
	T get ml16 {
    marginLeft = TwSpacers.sp16;
    return _child;
  }
	T get ml20 {
    marginLeft = TwSpacers.sp20;
    return _child;
  }
	T get ml24 {
    marginLeft = TwSpacers.sp24;
    return _child;
  }
	T get ml28 {
    marginLeft = TwSpacers.sp28;
    return _child;
  }
	T get ml32 {
    marginLeft = TwSpacers.sp32;
    return _child;
  }
	T get ml36 {
    marginLeft = TwSpacers.sp36;
    return _child;
  }
	T get ml40 {
    marginLeft = TwSpacers.sp40;
    return _child;
  }
	T get ml44 {
    marginLeft = TwSpacers.sp44;
    return _child;
  }
	T get ml48 {
    marginLeft = TwSpacers.sp48;
    return _child;
  }
	T get ml52 {
    marginLeft = TwSpacers.sp52;
    return _child;
  }
	T get ml56 {
    marginLeft = TwSpacers.sp56;
    return _child;
  }
	T get ml60 {
    marginLeft = TwSpacers.sp60;
    return _child;
  }
	T get ml64 {
    marginLeft = TwSpacers.sp64;
    return _child;
  }
	/// Right Margin
	T get mt0 {
    marginTop = TwSpacers.sp0;
    return _child;
  }
	T get mt1 {
    marginTop = TwSpacers.sp1;
    return _child;
  }
	T get mt2 {
    marginTop = TwSpacers.sp2;
    return _child;
  }
	T get mt3 {
    marginTop = TwSpacers.sp3;
    return _child;
  }
	T get mt4 {
    marginTop = TwSpacers.sp4;
    return _child;
  }
	T get mt5 {
    marginTop = TwSpacers.sp5;
    return _child;
  }
	T get mt6 {
    marginTop = TwSpacers.sp6;
    return _child;
  }
	T get mt7 {
    marginTop = TwSpacers.sp7;
    return _child;
  }
	T get mt8 {
    marginTop = TwSpacers.sp8;
    return _child;
  }
	T get mt9 {
    marginTop = TwSpacers.sp9;
    return _child;
  }
	T get mt10 {
    marginTop = TwSpacers.sp10;
    return _child;
  }
	T get mt11 {
    marginTop = TwSpacers.sp11;
    return _child;
  }
	T get mt12 {
    marginTop = TwSpacers.sp12;
    return _child;
  }
	T get mt14 {
    marginTop = TwSpacers.sp14;
    return _child;
  }
	T get mt16 {
    marginTop = TwSpacers.sp16;
    return _child;
  }
	T get mt20 {
    marginTop = TwSpacers.sp20;
    return _child;
  }
	T get mt24 {
    marginTop = TwSpacers.sp24;
    return _child;
  }
	T get mt28 {
    marginTop = TwSpacers.sp28;
    return _child;
  }
	T get mt32 {
    marginTop = TwSpacers.sp32;
    return _child;
  }
	T get mt36 {
    marginTop = TwSpacers.sp36;
    return _child;
  }
	T get mt40 {
    marginTop = TwSpacers.sp40;
    return _child;
  }
	T get mt44 {
    marginTop = TwSpacers.sp44;
    return _child;
  }
	T get mt48 {
    marginTop = TwSpacers.sp48;
    return _child;
  }
	T get mt52 {
    marginTop = TwSpacers.sp52;
    return _child;
  }
	T get mt56 {
    marginTop = TwSpacers.sp56;
    return _child;
  }
	T get mt60 {
    marginTop = TwSpacers.sp60;
    return _child;
  }
	T get mt64 {
    marginTop = TwSpacers.sp64;
    return _child;
  }
	/// Right Margin
	T get mr0 {
    marginRight = TwSpacers.sp0;
    return _child;
  }
	T get mr1 {
    marginRight = TwSpacers.sp1;
    return _child;
  }
	T get mr2 {
    marginRight = TwSpacers.sp2;
    return _child;
  }
	T get mr3 {
    marginRight = TwSpacers.sp3;
    return _child;
  }
	T get mr4 {
    marginRight = TwSpacers.sp4;
    return _child;
  }
	T get mr5 {
    marginRight = TwSpacers.sp5;
    return _child;
  }
	T get mr6 {
    marginRight = TwSpacers.sp6;
    return _child;
  }
	T get mr7 {
    marginRight = TwSpacers.sp7;
    return _child;
  }
	T get mr8 {
    marginRight = TwSpacers.sp8;
    return _child;
  }
	T get mr9 {
    marginRight = TwSpacers.sp9;
    return _child;
  }
	T get mr10 {
    marginRight = TwSpacers.sp10;
    return _child;
  }
	T get mr11 {
    marginRight = TwSpacers.sp11;
    return _child;
  }
	T get mr12 {
    marginRight = TwSpacers.sp12;
    return _child;
  }
	T get mr14 {
    marginRight = TwSpacers.sp14;
    return _child;
  }
	T get mr16 {
    marginRight = TwSpacers.sp16;
    return _child;
  }
	T get mr20 {
    marginRight = TwSpacers.sp20;
    return _child;
  }
	T get mr24 {
    marginRight = TwSpacers.sp24;
    return _child;
  }
	T get mr28 {
    marginRight = TwSpacers.sp28;
    return _child;
  }
	T get mr32 {
    marginRight = TwSpacers.sp32;
    return _child;
  }
	T get mr36 {
    marginRight = TwSpacers.sp36;
    return _child;
  }
	T get mr40 {
    marginRight = TwSpacers.sp40;
    return _child;
  }
	T get mr44 {
    marginRight = TwSpacers.sp44;
    return _child;
  }
	T get mr48 {
    marginRight = TwSpacers.sp48;
    return _child;
  }
	T get mr52 {
    marginRight = TwSpacers.sp52;
    return _child;
  }
	T get mr56 {
    marginRight = TwSpacers.sp56;
    return _child;
  }
	T get mr60 {
    marginRight = TwSpacers.sp60;
    return _child;
  }
	T get mr64 {
    marginRight = TwSpacers.sp64;
    return _child;
  }
	/// Bottom Padding
	T get mb0 {
    marginBottom = TwSpacers.sp0;
    return _child;
  }
	T get mb1 {
    marginBottom = TwSpacers.sp1;
    return _child;
  }
	T get mb2 {
    marginBottom = TwSpacers.sp2;
    return _child;
  }
	T get mb3 {
    marginBottom = TwSpacers.sp3;
    return _child;
  }
	T get mb4 {
    marginBottom = TwSpacers.sp4;
    return _child;
  }
	T get mb5 {
    marginBottom = TwSpacers.sp5;
    return _child;
  }
	T get mb6 {
    marginBottom = TwSpacers.sp6;
    return _child;
  }
	T get mb7 {
    marginBottom = TwSpacers.sp7;
    return _child;
  }
	T get mb8 {
    marginBottom = TwSpacers.sp8;
    return _child;
  }
	T get mb9 {
    marginBottom = TwSpacers.sp9;
    return _child;
  }
	T get mb10 {
    marginBottom = TwSpacers.sp10;
    return _child;
  }
	T get mb11 {
    marginBottom = TwSpacers.sp11;
    return _child;
  }
	T get mb12 {
    marginBottom = TwSpacers.sp12;
    return _child;
  }
	T get mb14 {
    marginBottom = TwSpacers.sp14;
    return _child;
  }
	T get mb16 {
    marginBottom = TwSpacers.sp16;
    return _child;
  }
	T get mb20 {
    marginBottom = TwSpacers.sp20;
    return _child;
  }
	T get mb24 {
    marginBottom = TwSpacers.sp24;
    return _child;
  }
	T get mb28 {
    marginBottom = TwSpacers.sp28;
    return _child;
  }
	T get mb32 {
    marginBottom = TwSpacers.sp32;
    return _child;
  }
	T get mb36 {
    marginBottom = TwSpacers.sp36;
    return _child;
  }
	T get mb40 {
    marginBottom = TwSpacers.sp40;
    return _child;
  }
	T get mb44 {
    marginBottom = TwSpacers.sp44;
    return _child;
  }
	T get mb48 {
    marginBottom = TwSpacers.sp48;
    return _child;
  }
	T get mb52 {
    marginBottom = TwSpacers.sp52;
    return _child;
  }
	T get mb56 {
    marginBottom = TwSpacers.sp56;
    return _child;
  }
	T get mb60 {
    marginBottom = TwSpacers.sp60;
    return _child;
  }
	T get mb64 {
    marginBottom = TwSpacers.sp64;
    return _child;
  }
	  
}

