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
    marginLeft = spacer0;
    marginTop = spacer0;
    marginRight = spacer0;
    marginBottom = spacer0;
    return _child;
  }
	T get m1 {
    marginLeft = spacer1;
    marginTop = spacer1;
    marginRight = spacer1;
    marginBottom = spacer1;
    return _child;
  }
	T get m2 {
    marginLeft = spacer2;
    marginTop = spacer2;
    marginRight = spacer2;
    marginBottom = spacer2;
    return _child;
  }
	T get m3 {
    marginLeft = spacer3;
    marginTop = spacer3;
    marginRight = spacer3;
    marginBottom = spacer3;
    return _child;
  }
	T get m4 {
    marginLeft = spacer4;
    marginTop = spacer4;
    marginRight = spacer4;
    marginBottom = spacer4;
    return _child;
  }
	T get m5 {
    marginLeft = spacer5;
    marginTop = spacer5;
    marginRight = spacer5;
    marginBottom = spacer5;
    return _child;
  }
	T get m6 {
    marginLeft = spacer6;
    marginTop = spacer6;
    marginRight = spacer6;
    marginBottom = spacer6;
    return _child;
  }
	T get m7 {
    marginLeft = spacer7;
    marginTop = spacer7;
    marginRight = spacer7;
    marginBottom = spacer7;
    return _child;
  }
	T get m8 {
    marginLeft = spacer8;
    marginTop = spacer8;
    marginRight = spacer8;
    marginBottom = spacer8;
    return _child;
  }
	T get m9 {
    marginLeft = spacer9;
    marginTop = spacer9;
    marginRight = spacer9;
    marginBottom = spacer9;
    return _child;
  }
	T get m10 {
    marginLeft = spacer10;
    marginTop = spacer10;
    marginRight = spacer10;
    marginBottom = spacer10;
    return _child;
  }
	T get m11 {
    marginLeft = spacer11;
    marginTop = spacer11;
    marginRight = spacer11;
    marginBottom = spacer11;
    return _child;
  }
	T get m12 {
    marginLeft = spacer12;
    marginTop = spacer12;
    marginRight = spacer12;
    marginBottom = spacer12;
    return _child;
  }
	T get m14 {
    marginLeft = spacer14;
    marginTop = spacer14;
    marginRight = spacer14;
    marginBottom = spacer14;
    return _child;
  }
	T get m16 {
    marginLeft = spacer16;
    marginTop = spacer16;
    marginRight = spacer16;
    marginBottom = spacer16;
    return _child;
  }
	T get m20 {
    marginLeft = spacer20;
    marginTop = spacer20;
    marginRight = spacer20;
    marginBottom = spacer20;
    return _child;
  }
	T get m24 {
    marginLeft = spacer24;
    marginTop = spacer24;
    marginRight = spacer24;
    marginBottom = spacer24;
    return _child;
  }
	T get m28 {
    marginLeft = spacer28;
    marginTop = spacer28;
    marginRight = spacer28;
    marginBottom = spacer28;
    return _child;
  }
	T get m32 {
    marginLeft = spacer32;
    marginTop = spacer32;
    marginRight = spacer32;
    marginBottom = spacer32;
    return _child;
  }
	T get m36 {
    marginLeft = spacer36;
    marginTop = spacer36;
    marginRight = spacer36;
    marginBottom = spacer36;
    return _child;
  }
	T get m40 {
    marginLeft = spacer40;
    marginTop = spacer40;
    marginRight = spacer40;
    marginBottom = spacer40;
    return _child;
  }
	T get m44 {
    marginLeft = spacer44;
    marginTop = spacer44;
    marginRight = spacer44;
    marginBottom = spacer44;
    return _child;
  }
	T get m48 {
    marginLeft = spacer48;
    marginTop = spacer48;
    marginRight = spacer48;
    marginBottom = spacer48;
    return _child;
  }
	T get m52 {
    marginLeft = spacer52;
    marginTop = spacer52;
    marginRight = spacer52;
    marginBottom = spacer52;
    return _child;
  }
	T get m56 {
    marginLeft = spacer56;
    marginTop = spacer56;
    marginRight = spacer56;
    marginBottom = spacer56;
    return _child;
  }
	T get m60 {
    marginLeft = spacer60;
    marginTop = spacer60;
    marginRight = spacer60;
    marginBottom = spacer60;
    return _child;
  }
	T get m64 {
    marginLeft = spacer64;
    marginTop = spacer64;
    marginRight = spacer64;
    marginBottom = spacer64;
    return _child;
  }
	/// Horizontal Margin
	T get mx0 {
    marginLeft = spacer0;
    marginRight = spacer0;
    return _child;
  }
	T get mx1 {
    marginLeft = spacer1;
    marginRight = spacer1;
    return _child;
  }
	T get mx2 {
    marginLeft = spacer2;
    marginRight = spacer2;
    return _child;
  }
	T get mx3 {
    marginLeft = spacer3;
    marginRight = spacer3;
    return _child;
  }
	T get mx4 {
    marginLeft = spacer4;
    marginRight = spacer4;
    return _child;
  }
	T get mx5 {
    marginLeft = spacer5;
    marginRight = spacer5;
    return _child;
  }
	T get mx6 {
    marginLeft = spacer6;
    marginRight = spacer6;
    return _child;
  }
	T get mx7 {
    marginLeft = spacer7;
    marginRight = spacer7;
    return _child;
  }
	T get mx8 {
    marginLeft = spacer8;
    marginRight = spacer8;
    return _child;
  }
	T get mx9 {
    marginLeft = spacer9;
    marginRight = spacer9;
    return _child;
  }
	T get mx10 {
    marginLeft = spacer10;
    marginRight = spacer10;
    return _child;
  }
	T get mx11 {
    marginLeft = spacer11;
    marginRight = spacer11;
    return _child;
  }
	T get mx12 {
    marginLeft = spacer12;
    marginRight = spacer12;
    return _child;
  }
	T get mx14 {
    marginLeft = spacer14;
    marginRight = spacer14;
    return _child;
  }
	T get mx16 {
    marginLeft = spacer16;
    marginRight = spacer16;
    return _child;
  }
	T get mx20 {
    marginLeft = spacer20;
    marginRight = spacer20;
    return _child;
  }
	T get mx24 {
    marginLeft = spacer24;
    marginRight = spacer24;
    return _child;
  }
	T get mx28 {
    marginLeft = spacer28;
    marginRight = spacer28;
    return _child;
  }
	T get mx32 {
    marginLeft = spacer32;
    marginRight = spacer32;
    return _child;
  }
	T get mx36 {
    marginLeft = spacer36;
    marginRight = spacer36;
    return _child;
  }
	T get mx40 {
    marginLeft = spacer40;
    marginRight = spacer40;
    return _child;
  }
	T get mx44 {
    marginLeft = spacer44;
    marginRight = spacer44;
    return _child;
  }
	T get mx48 {
    marginLeft = spacer48;
    marginRight = spacer48;
    return _child;
  }
	T get mx52 {
    marginLeft = spacer52;
    marginRight = spacer52;
    return _child;
  }
	T get mx56 {
    marginLeft = spacer56;
    marginRight = spacer56;
    return _child;
  }
	T get mx60 {
    marginLeft = spacer60;
    marginRight = spacer60;
    return _child;
  }
	T get mx64 {
    marginLeft = spacer64;
    marginRight = spacer64;
    return _child;
  }
	/// Vertical Margin
	T get my0 {
    marginTop = spacer0;
    marginBottom = spacer0;
    return _child;
  }
	T get my1 {
    marginTop = spacer1;
    marginBottom = spacer1;
    return _child;
  }
	T get my2 {
    marginTop = spacer2;
    marginBottom = spacer2;
    return _child;
  }
	T get my3 {
    marginTop = spacer3;
    marginBottom = spacer3;
    return _child;
  }
	T get my4 {
    marginTop = spacer4;
    marginBottom = spacer4;
    return _child;
  }
	T get my5 {
    marginTop = spacer5;
    marginBottom = spacer5;
    return _child;
  }
	T get my6 {
    marginTop = spacer6;
    marginBottom = spacer6;
    return _child;
  }
	T get my7 {
    marginTop = spacer7;
    marginBottom = spacer7;
    return _child;
  }
	T get my8 {
    marginTop = spacer8;
    marginBottom = spacer8;
    return _child;
  }
	T get my9 {
    marginTop = spacer9;
    marginBottom = spacer9;
    return _child;
  }
	T get my10 {
    marginTop = spacer10;
    marginBottom = spacer10;
    return _child;
  }
	T get my11 {
    marginTop = spacer11;
    marginBottom = spacer11;
    return _child;
  }
	T get my12 {
    marginTop = spacer12;
    marginBottom = spacer12;
    return _child;
  }
	T get my14 {
    marginTop = spacer14;
    marginBottom = spacer14;
    return _child;
  }
	T get my16 {
    marginTop = spacer16;
    marginBottom = spacer16;
    return _child;
  }
	T get my20 {
    marginTop = spacer20;
    marginBottom = spacer20;
    return _child;
  }
	T get my24 {
    marginTop = spacer24;
    marginBottom = spacer24;
    return _child;
  }
	T get my28 {
    marginTop = spacer28;
    marginBottom = spacer28;
    return _child;
  }
	T get my32 {
    marginTop = spacer32;
    marginBottom = spacer32;
    return _child;
  }
	T get my36 {
    marginTop = spacer36;
    marginBottom = spacer36;
    return _child;
  }
	T get my40 {
    marginTop = spacer40;
    marginBottom = spacer40;
    return _child;
  }
	T get my44 {
    marginTop = spacer44;
    marginBottom = spacer44;
    return _child;
  }
	T get my48 {
    marginTop = spacer48;
    marginBottom = spacer48;
    return _child;
  }
	T get my52 {
    marginTop = spacer52;
    marginBottom = spacer52;
    return _child;
  }
	T get my56 {
    marginTop = spacer56;
    marginBottom = spacer56;
    return _child;
  }
	T get my60 {
    marginTop = spacer60;
    marginBottom = spacer60;
    return _child;
  }
	T get my64 {
    marginTop = spacer64;
    marginBottom = spacer64;
    return _child;
  }
	/// Left Margin
	T get ml0 {
    marginLeft = spacer0;
    return _child;
  }
	T get ml1 {
    marginLeft = spacer1;
    return _child;
  }
	T get ml2 {
    marginLeft = spacer2;
    return _child;
  }
	T get ml3 {
    marginLeft = spacer3;
    return _child;
  }
	T get ml4 {
    marginLeft = spacer4;
    return _child;
  }
	T get ml5 {
    marginLeft = spacer5;
    return _child;
  }
	T get ml6 {
    marginLeft = spacer6;
    return _child;
  }
	T get ml7 {
    marginLeft = spacer7;
    return _child;
  }
	T get ml8 {
    marginLeft = spacer8;
    return _child;
  }
	T get ml9 {
    marginLeft = spacer9;
    return _child;
  }
	T get ml10 {
    marginLeft = spacer10;
    return _child;
  }
	T get ml11 {
    marginLeft = spacer11;
    return _child;
  }
	T get ml12 {
    marginLeft = spacer12;
    return _child;
  }
	T get ml14 {
    marginLeft = spacer14;
    return _child;
  }
	T get ml16 {
    marginLeft = spacer16;
    return _child;
  }
	T get ml20 {
    marginLeft = spacer20;
    return _child;
  }
	T get ml24 {
    marginLeft = spacer24;
    return _child;
  }
	T get ml28 {
    marginLeft = spacer28;
    return _child;
  }
	T get ml32 {
    marginLeft = spacer32;
    return _child;
  }
	T get ml36 {
    marginLeft = spacer36;
    return _child;
  }
	T get ml40 {
    marginLeft = spacer40;
    return _child;
  }
	T get ml44 {
    marginLeft = spacer44;
    return _child;
  }
	T get ml48 {
    marginLeft = spacer48;
    return _child;
  }
	T get ml52 {
    marginLeft = spacer52;
    return _child;
  }
	T get ml56 {
    marginLeft = spacer56;
    return _child;
  }
	T get ml60 {
    marginLeft = spacer60;
    return _child;
  }
	T get ml64 {
    marginLeft = spacer64;
    return _child;
  }
	/// Right Margin
	T get mt0 {
    marginTop = spacer0;
    return _child;
  }
	T get mt1 {
    marginTop = spacer1;
    return _child;
  }
	T get mt2 {
    marginTop = spacer2;
    return _child;
  }
	T get mt3 {
    marginTop = spacer3;
    return _child;
  }
	T get mt4 {
    marginTop = spacer4;
    return _child;
  }
	T get mt5 {
    marginTop = spacer5;
    return _child;
  }
	T get mt6 {
    marginTop = spacer6;
    return _child;
  }
	T get mt7 {
    marginTop = spacer7;
    return _child;
  }
	T get mt8 {
    marginTop = spacer8;
    return _child;
  }
	T get mt9 {
    marginTop = spacer9;
    return _child;
  }
	T get mt10 {
    marginTop = spacer10;
    return _child;
  }
	T get mt11 {
    marginTop = spacer11;
    return _child;
  }
	T get mt12 {
    marginTop = spacer12;
    return _child;
  }
	T get mt14 {
    marginTop = spacer14;
    return _child;
  }
	T get mt16 {
    marginTop = spacer16;
    return _child;
  }
	T get mt20 {
    marginTop = spacer20;
    return _child;
  }
	T get mt24 {
    marginTop = spacer24;
    return _child;
  }
	T get mt28 {
    marginTop = spacer28;
    return _child;
  }
	T get mt32 {
    marginTop = spacer32;
    return _child;
  }
	T get mt36 {
    marginTop = spacer36;
    return _child;
  }
	T get mt40 {
    marginTop = spacer40;
    return _child;
  }
	T get mt44 {
    marginTop = spacer44;
    return _child;
  }
	T get mt48 {
    marginTop = spacer48;
    return _child;
  }
	T get mt52 {
    marginTop = spacer52;
    return _child;
  }
	T get mt56 {
    marginTop = spacer56;
    return _child;
  }
	T get mt60 {
    marginTop = spacer60;
    return _child;
  }
	T get mt64 {
    marginTop = spacer64;
    return _child;
  }
	/// Right Margin
	T get mr0 {
    marginRight = spacer0;
    return _child;
  }
	T get mr1 {
    marginRight = spacer1;
    return _child;
  }
	T get mr2 {
    marginRight = spacer2;
    return _child;
  }
	T get mr3 {
    marginRight = spacer3;
    return _child;
  }
	T get mr4 {
    marginRight = spacer4;
    return _child;
  }
	T get mr5 {
    marginRight = spacer5;
    return _child;
  }
	T get mr6 {
    marginRight = spacer6;
    return _child;
  }
	T get mr7 {
    marginRight = spacer7;
    return _child;
  }
	T get mr8 {
    marginRight = spacer8;
    return _child;
  }
	T get mr9 {
    marginRight = spacer9;
    return _child;
  }
	T get mr10 {
    marginRight = spacer10;
    return _child;
  }
	T get mr11 {
    marginRight = spacer11;
    return _child;
  }
	T get mr12 {
    marginRight = spacer12;
    return _child;
  }
	T get mr14 {
    marginRight = spacer14;
    return _child;
  }
	T get mr16 {
    marginRight = spacer16;
    return _child;
  }
	T get mr20 {
    marginRight = spacer20;
    return _child;
  }
	T get mr24 {
    marginRight = spacer24;
    return _child;
  }
	T get mr28 {
    marginRight = spacer28;
    return _child;
  }
	T get mr32 {
    marginRight = spacer32;
    return _child;
  }
	T get mr36 {
    marginRight = spacer36;
    return _child;
  }
	T get mr40 {
    marginRight = spacer40;
    return _child;
  }
	T get mr44 {
    marginRight = spacer44;
    return _child;
  }
	T get mr48 {
    marginRight = spacer48;
    return _child;
  }
	T get mr52 {
    marginRight = spacer52;
    return _child;
  }
	T get mr56 {
    marginRight = spacer56;
    return _child;
  }
	T get mr60 {
    marginRight = spacer60;
    return _child;
  }
	T get mr64 {
    marginRight = spacer64;
    return _child;
  }
	/// Bottom Padding
	T get mb0 {
    marginBottom = spacer0;
    return _child;
  }
	T get mb1 {
    marginBottom = spacer1;
    return _child;
  }
	T get mb2 {
    marginBottom = spacer2;
    return _child;
  }
	T get mb3 {
    marginBottom = spacer3;
    return _child;
  }
	T get mb4 {
    marginBottom = spacer4;
    return _child;
  }
	T get mb5 {
    marginBottom = spacer5;
    return _child;
  }
	T get mb6 {
    marginBottom = spacer6;
    return _child;
  }
	T get mb7 {
    marginBottom = spacer7;
    return _child;
  }
	T get mb8 {
    marginBottom = spacer8;
    return _child;
  }
	T get mb9 {
    marginBottom = spacer9;
    return _child;
  }
	T get mb10 {
    marginBottom = spacer10;
    return _child;
  }
	T get mb11 {
    marginBottom = spacer11;
    return _child;
  }
	T get mb12 {
    marginBottom = spacer12;
    return _child;
  }
	T get mb14 {
    marginBottom = spacer14;
    return _child;
  }
	T get mb16 {
    marginBottom = spacer16;
    return _child;
  }
	T get mb20 {
    marginBottom = spacer20;
    return _child;
  }
	T get mb24 {
    marginBottom = spacer24;
    return _child;
  }
	T get mb28 {
    marginBottom = spacer28;
    return _child;
  }
	T get mb32 {
    marginBottom = spacer32;
    return _child;
  }
	T get mb36 {
    marginBottom = spacer36;
    return _child;
  }
	T get mb40 {
    marginBottom = spacer40;
    return _child;
  }
	T get mb44 {
    marginBottom = spacer44;
    return _child;
  }
	T get mb48 {
    marginBottom = spacer48;
    return _child;
  }
	T get mb52 {
    marginBottom = spacer52;
    return _child;
  }
	T get mb56 {
    marginBottom = spacer56;
    return _child;
  }
	T get mb60 {
    marginBottom = spacer60;
    return _child;
  }
	T get mb64 {
    marginBottom = spacer64;
    return _child;
  }
	  
}

