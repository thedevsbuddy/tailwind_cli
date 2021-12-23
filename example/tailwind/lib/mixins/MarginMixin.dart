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
    marginLeft = Tw.spacer0;
    marginTop = Tw.spacer0;
    marginRight = Tw.spacer0;
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get m1 {
    marginLeft = Tw.spacer1;
    marginTop = Tw.spacer1;
    marginRight = Tw.spacer1;
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get m2 {
    marginLeft = Tw.spacer2;
    marginTop = Tw.spacer2;
    marginRight = Tw.spacer2;
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get m3 {
    marginLeft = Tw.spacer3;
    marginTop = Tw.spacer3;
    marginRight = Tw.spacer3;
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get m4 {
    marginLeft = Tw.spacer4;
    marginTop = Tw.spacer4;
    marginRight = Tw.spacer4;
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get m5 {
    marginLeft = Tw.spacer5;
    marginTop = Tw.spacer5;
    marginRight = Tw.spacer5;
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get m6 {
    marginLeft = Tw.spacer6;
    marginTop = Tw.spacer6;
    marginRight = Tw.spacer6;
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get m7 {
    marginLeft = Tw.spacer7;
    marginTop = Tw.spacer7;
    marginRight = Tw.spacer7;
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get m8 {
    marginLeft = Tw.spacer8;
    marginTop = Tw.spacer8;
    marginRight = Tw.spacer8;
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get m9 {
    marginLeft = Tw.spacer9;
    marginTop = Tw.spacer9;
    marginRight = Tw.spacer9;
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get m10 {
    marginLeft = Tw.spacer10;
    marginTop = Tw.spacer10;
    marginRight = Tw.spacer10;
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get m11 {
    marginLeft = Tw.spacer11;
    marginTop = Tw.spacer11;
    marginRight = Tw.spacer11;
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get m12 {
    marginLeft = Tw.spacer12;
    marginTop = Tw.spacer12;
    marginRight = Tw.spacer12;
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get m14 {
    marginLeft = Tw.spacer14;
    marginTop = Tw.spacer14;
    marginRight = Tw.spacer14;
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get m16 {
    marginLeft = Tw.spacer16;
    marginTop = Tw.spacer16;
    marginRight = Tw.spacer16;
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get m20 {
    marginLeft = Tw.spacer20;
    marginTop = Tw.spacer20;
    marginRight = Tw.spacer20;
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get m24 {
    marginLeft = Tw.spacer24;
    marginTop = Tw.spacer24;
    marginRight = Tw.spacer24;
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get m28 {
    marginLeft = Tw.spacer28;
    marginTop = Tw.spacer28;
    marginRight = Tw.spacer28;
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get m32 {
    marginLeft = Tw.spacer32;
    marginTop = Tw.spacer32;
    marginRight = Tw.spacer32;
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get m36 {
    marginLeft = Tw.spacer36;
    marginTop = Tw.spacer36;
    marginRight = Tw.spacer36;
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get m40 {
    marginLeft = Tw.spacer40;
    marginTop = Tw.spacer40;
    marginRight = Tw.spacer40;
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get m44 {
    marginLeft = Tw.spacer44;
    marginTop = Tw.spacer44;
    marginRight = Tw.spacer44;
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get m48 {
    marginLeft = Tw.spacer48;
    marginTop = Tw.spacer48;
    marginRight = Tw.spacer48;
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get m52 {
    marginLeft = Tw.spacer52;
    marginTop = Tw.spacer52;
    marginRight = Tw.spacer52;
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get m56 {
    marginLeft = Tw.spacer56;
    marginTop = Tw.spacer56;
    marginRight = Tw.spacer56;
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get m60 {
    marginLeft = Tw.spacer60;
    marginTop = Tw.spacer60;
    marginRight = Tw.spacer60;
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get m64 {
    marginLeft = Tw.spacer64;
    marginTop = Tw.spacer64;
    marginRight = Tw.spacer64;
    marginBottom = Tw.spacer64;
    return _child;
  }
	/// Horizontal Margin
	T get mx0 {
    marginLeft = Tw.spacer0;
    marginRight = Tw.spacer0;
    return _child;
  }
	T get mx1 {
    marginLeft = Tw.spacer1;
    marginRight = Tw.spacer1;
    return _child;
  }
	T get mx2 {
    marginLeft = Tw.spacer2;
    marginRight = Tw.spacer2;
    return _child;
  }
	T get mx3 {
    marginLeft = Tw.spacer3;
    marginRight = Tw.spacer3;
    return _child;
  }
	T get mx4 {
    marginLeft = Tw.spacer4;
    marginRight = Tw.spacer4;
    return _child;
  }
	T get mx5 {
    marginLeft = Tw.spacer5;
    marginRight = Tw.spacer5;
    return _child;
  }
	T get mx6 {
    marginLeft = Tw.spacer6;
    marginRight = Tw.spacer6;
    return _child;
  }
	T get mx7 {
    marginLeft = Tw.spacer7;
    marginRight = Tw.spacer7;
    return _child;
  }
	T get mx8 {
    marginLeft = Tw.spacer8;
    marginRight = Tw.spacer8;
    return _child;
  }
	T get mx9 {
    marginLeft = Tw.spacer9;
    marginRight = Tw.spacer9;
    return _child;
  }
	T get mx10 {
    marginLeft = Tw.spacer10;
    marginRight = Tw.spacer10;
    return _child;
  }
	T get mx11 {
    marginLeft = Tw.spacer11;
    marginRight = Tw.spacer11;
    return _child;
  }
	T get mx12 {
    marginLeft = Tw.spacer12;
    marginRight = Tw.spacer12;
    return _child;
  }
	T get mx14 {
    marginLeft = Tw.spacer14;
    marginRight = Tw.spacer14;
    return _child;
  }
	T get mx16 {
    marginLeft = Tw.spacer16;
    marginRight = Tw.spacer16;
    return _child;
  }
	T get mx20 {
    marginLeft = Tw.spacer20;
    marginRight = Tw.spacer20;
    return _child;
  }
	T get mx24 {
    marginLeft = Tw.spacer24;
    marginRight = Tw.spacer24;
    return _child;
  }
	T get mx28 {
    marginLeft = Tw.spacer28;
    marginRight = Tw.spacer28;
    return _child;
  }
	T get mx32 {
    marginLeft = Tw.spacer32;
    marginRight = Tw.spacer32;
    return _child;
  }
	T get mx36 {
    marginLeft = Tw.spacer36;
    marginRight = Tw.spacer36;
    return _child;
  }
	T get mx40 {
    marginLeft = Tw.spacer40;
    marginRight = Tw.spacer40;
    return _child;
  }
	T get mx44 {
    marginLeft = Tw.spacer44;
    marginRight = Tw.spacer44;
    return _child;
  }
	T get mx48 {
    marginLeft = Tw.spacer48;
    marginRight = Tw.spacer48;
    return _child;
  }
	T get mx52 {
    marginLeft = Tw.spacer52;
    marginRight = Tw.spacer52;
    return _child;
  }
	T get mx56 {
    marginLeft = Tw.spacer56;
    marginRight = Tw.spacer56;
    return _child;
  }
	T get mx60 {
    marginLeft = Tw.spacer60;
    marginRight = Tw.spacer60;
    return _child;
  }
	T get mx64 {
    marginLeft = Tw.spacer64;
    marginRight = Tw.spacer64;
    return _child;
  }
	/// Vertical Margin
	T get my0 {
    marginTop = Tw.spacer0;
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get my1 {
    marginTop = Tw.spacer1;
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get my2 {
    marginTop = Tw.spacer2;
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get my3 {
    marginTop = Tw.spacer3;
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get my4 {
    marginTop = Tw.spacer4;
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get my5 {
    marginTop = Tw.spacer5;
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get my6 {
    marginTop = Tw.spacer6;
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get my7 {
    marginTop = Tw.spacer7;
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get my8 {
    marginTop = Tw.spacer8;
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get my9 {
    marginTop = Tw.spacer9;
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get my10 {
    marginTop = Tw.spacer10;
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get my11 {
    marginTop = Tw.spacer11;
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get my12 {
    marginTop = Tw.spacer12;
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get my14 {
    marginTop = Tw.spacer14;
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get my16 {
    marginTop = Tw.spacer16;
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get my20 {
    marginTop = Tw.spacer20;
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get my24 {
    marginTop = Tw.spacer24;
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get my28 {
    marginTop = Tw.spacer28;
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get my32 {
    marginTop = Tw.spacer32;
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get my36 {
    marginTop = Tw.spacer36;
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get my40 {
    marginTop = Tw.spacer40;
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get my44 {
    marginTop = Tw.spacer44;
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get my48 {
    marginTop = Tw.spacer48;
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get my52 {
    marginTop = Tw.spacer52;
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get my56 {
    marginTop = Tw.spacer56;
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get my60 {
    marginTop = Tw.spacer60;
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get my64 {
    marginTop = Tw.spacer64;
    marginBottom = Tw.spacer64;
    return _child;
  }
	/// Left Margin
	T get ml0 {
    marginLeft = Tw.spacer0;
    return _child;
  }
	T get ml1 {
    marginLeft = Tw.spacer1;
    return _child;
  }
	T get ml2 {
    marginLeft = Tw.spacer2;
    return _child;
  }
	T get ml3 {
    marginLeft = Tw.spacer3;
    return _child;
  }
	T get ml4 {
    marginLeft = Tw.spacer4;
    return _child;
  }
	T get ml5 {
    marginLeft = Tw.spacer5;
    return _child;
  }
	T get ml6 {
    marginLeft = Tw.spacer6;
    return _child;
  }
	T get ml7 {
    marginLeft = Tw.spacer7;
    return _child;
  }
	T get ml8 {
    marginLeft = Tw.spacer8;
    return _child;
  }
	T get ml9 {
    marginLeft = Tw.spacer9;
    return _child;
  }
	T get ml10 {
    marginLeft = Tw.spacer10;
    return _child;
  }
	T get ml11 {
    marginLeft = Tw.spacer11;
    return _child;
  }
	T get ml12 {
    marginLeft = Tw.spacer12;
    return _child;
  }
	T get ml14 {
    marginLeft = Tw.spacer14;
    return _child;
  }
	T get ml16 {
    marginLeft = Tw.spacer16;
    return _child;
  }
	T get ml20 {
    marginLeft = Tw.spacer20;
    return _child;
  }
	T get ml24 {
    marginLeft = Tw.spacer24;
    return _child;
  }
	T get ml28 {
    marginLeft = Tw.spacer28;
    return _child;
  }
	T get ml32 {
    marginLeft = Tw.spacer32;
    return _child;
  }
	T get ml36 {
    marginLeft = Tw.spacer36;
    return _child;
  }
	T get ml40 {
    marginLeft = Tw.spacer40;
    return _child;
  }
	T get ml44 {
    marginLeft = Tw.spacer44;
    return _child;
  }
	T get ml48 {
    marginLeft = Tw.spacer48;
    return _child;
  }
	T get ml52 {
    marginLeft = Tw.spacer52;
    return _child;
  }
	T get ml56 {
    marginLeft = Tw.spacer56;
    return _child;
  }
	T get ml60 {
    marginLeft = Tw.spacer60;
    return _child;
  }
	T get ml64 {
    marginLeft = Tw.spacer64;
    return _child;
  }
	/// Right Margin
	T get mt0 {
    marginTop = Tw.spacer0;
    return _child;
  }
	T get mt1 {
    marginTop = Tw.spacer1;
    return _child;
  }
	T get mt2 {
    marginTop = Tw.spacer2;
    return _child;
  }
	T get mt3 {
    marginTop = Tw.spacer3;
    return _child;
  }
	T get mt4 {
    marginTop = Tw.spacer4;
    return _child;
  }
	T get mt5 {
    marginTop = Tw.spacer5;
    return _child;
  }
	T get mt6 {
    marginTop = Tw.spacer6;
    return _child;
  }
	T get mt7 {
    marginTop = Tw.spacer7;
    return _child;
  }
	T get mt8 {
    marginTop = Tw.spacer8;
    return _child;
  }
	T get mt9 {
    marginTop = Tw.spacer9;
    return _child;
  }
	T get mt10 {
    marginTop = Tw.spacer10;
    return _child;
  }
	T get mt11 {
    marginTop = Tw.spacer11;
    return _child;
  }
	T get mt12 {
    marginTop = Tw.spacer12;
    return _child;
  }
	T get mt14 {
    marginTop = Tw.spacer14;
    return _child;
  }
	T get mt16 {
    marginTop = Tw.spacer16;
    return _child;
  }
	T get mt20 {
    marginTop = Tw.spacer20;
    return _child;
  }
	T get mt24 {
    marginTop = Tw.spacer24;
    return _child;
  }
	T get mt28 {
    marginTop = Tw.spacer28;
    return _child;
  }
	T get mt32 {
    marginTop = Tw.spacer32;
    return _child;
  }
	T get mt36 {
    marginTop = Tw.spacer36;
    return _child;
  }
	T get mt40 {
    marginTop = Tw.spacer40;
    return _child;
  }
	T get mt44 {
    marginTop = Tw.spacer44;
    return _child;
  }
	T get mt48 {
    marginTop = Tw.spacer48;
    return _child;
  }
	T get mt52 {
    marginTop = Tw.spacer52;
    return _child;
  }
	T get mt56 {
    marginTop = Tw.spacer56;
    return _child;
  }
	T get mt60 {
    marginTop = Tw.spacer60;
    return _child;
  }
	T get mt64 {
    marginTop = Tw.spacer64;
    return _child;
  }
	/// Right Margin
	T get mr0 {
    marginRight = Tw.spacer0;
    return _child;
  }
	T get mr1 {
    marginRight = Tw.spacer1;
    return _child;
  }
	T get mr2 {
    marginRight = Tw.spacer2;
    return _child;
  }
	T get mr3 {
    marginRight = Tw.spacer3;
    return _child;
  }
	T get mr4 {
    marginRight = Tw.spacer4;
    return _child;
  }
	T get mr5 {
    marginRight = Tw.spacer5;
    return _child;
  }
	T get mr6 {
    marginRight = Tw.spacer6;
    return _child;
  }
	T get mr7 {
    marginRight = Tw.spacer7;
    return _child;
  }
	T get mr8 {
    marginRight = Tw.spacer8;
    return _child;
  }
	T get mr9 {
    marginRight = Tw.spacer9;
    return _child;
  }
	T get mr10 {
    marginRight = Tw.spacer10;
    return _child;
  }
	T get mr11 {
    marginRight = Tw.spacer11;
    return _child;
  }
	T get mr12 {
    marginRight = Tw.spacer12;
    return _child;
  }
	T get mr14 {
    marginRight = Tw.spacer14;
    return _child;
  }
	T get mr16 {
    marginRight = Tw.spacer16;
    return _child;
  }
	T get mr20 {
    marginRight = Tw.spacer20;
    return _child;
  }
	T get mr24 {
    marginRight = Tw.spacer24;
    return _child;
  }
	T get mr28 {
    marginRight = Tw.spacer28;
    return _child;
  }
	T get mr32 {
    marginRight = Tw.spacer32;
    return _child;
  }
	T get mr36 {
    marginRight = Tw.spacer36;
    return _child;
  }
	T get mr40 {
    marginRight = Tw.spacer40;
    return _child;
  }
	T get mr44 {
    marginRight = Tw.spacer44;
    return _child;
  }
	T get mr48 {
    marginRight = Tw.spacer48;
    return _child;
  }
	T get mr52 {
    marginRight = Tw.spacer52;
    return _child;
  }
	T get mr56 {
    marginRight = Tw.spacer56;
    return _child;
  }
	T get mr60 {
    marginRight = Tw.spacer60;
    return _child;
  }
	T get mr64 {
    marginRight = Tw.spacer64;
    return _child;
  }
	/// Bottom Padding
	T get mb0 {
    marginBottom = Tw.spacer0;
    return _child;
  }
	T get mb1 {
    marginBottom = Tw.spacer1;
    return _child;
  }
	T get mb2 {
    marginBottom = Tw.spacer2;
    return _child;
  }
	T get mb3 {
    marginBottom = Tw.spacer3;
    return _child;
  }
	T get mb4 {
    marginBottom = Tw.spacer4;
    return _child;
  }
	T get mb5 {
    marginBottom = Tw.spacer5;
    return _child;
  }
	T get mb6 {
    marginBottom = Tw.spacer6;
    return _child;
  }
	T get mb7 {
    marginBottom = Tw.spacer7;
    return _child;
  }
	T get mb8 {
    marginBottom = Tw.spacer8;
    return _child;
  }
	T get mb9 {
    marginBottom = Tw.spacer9;
    return _child;
  }
	T get mb10 {
    marginBottom = Tw.spacer10;
    return _child;
  }
	T get mb11 {
    marginBottom = Tw.spacer11;
    return _child;
  }
	T get mb12 {
    marginBottom = Tw.spacer12;
    return _child;
  }
	T get mb14 {
    marginBottom = Tw.spacer14;
    return _child;
  }
	T get mb16 {
    marginBottom = Tw.spacer16;
    return _child;
  }
	T get mb20 {
    marginBottom = Tw.spacer20;
    return _child;
  }
	T get mb24 {
    marginBottom = Tw.spacer24;
    return _child;
  }
	T get mb28 {
    marginBottom = Tw.spacer28;
    return _child;
  }
	T get mb32 {
    marginBottom = Tw.spacer32;
    return _child;
  }
	T get mb36 {
    marginBottom = Tw.spacer36;
    return _child;
  }
	T get mb40 {
    marginBottom = Tw.spacer40;
    return _child;
  }
	T get mb44 {
    marginBottom = Tw.spacer44;
    return _child;
  }
	T get mb48 {
    marginBottom = Tw.spacer48;
    return _child;
  }
	T get mb52 {
    marginBottom = Tw.spacer52;
    return _child;
  }
	T get mb56 {
    marginBottom = Tw.spacer56;
    return _child;
  }
	T get mb60 {
    marginBottom = Tw.spacer60;
    return _child;
  }
	T get mb64 {
    marginBottom = Tw.spacer64;
    return _child;
  }
	  
}

