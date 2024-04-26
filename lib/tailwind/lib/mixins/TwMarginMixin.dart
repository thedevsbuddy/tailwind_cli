/// Get Targeted Directory
const String target = "tailwind/lib/mixins/";

/// Get file's path with name
const String file = "tailwind/lib/mixins/TwMarginMixin.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwMarginMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _twMargin;

  
  double marginLeft = 0;
  
  double marginTop = 0;
  
  double marginRight = 0;
  
  double marginBottom = 0;

  
  void setChildForMargining(T child) {
    _child = child;
  }
  
  /// Sets the margin property of the box.
  T withMargin(EdgeInsetsGeometry val) {
    _twMargin = val;
    return _child;
  }

  EdgeInsetsGeometry get twMargin {
    _twMargin = EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom);
    return _twMargin!;
  }

  /// Custom All Side Margin
  T margin(dynamic val){
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  } 
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
  
  %marginGetters%  
}
""";



const String allSide = """
T get m%spacerValue% {
    marginLeft = TwSizes.spacer%spacerValue%;
    marginTop = TwSizes.spacer%spacerValue%;
    marginRight = TwSizes.spacer%spacerValue%;
    marginBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String horizontal = """
T get mx%spacerValue% {
    marginLeft = TwSizes.spacer%spacerValue%;
    marginRight = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String vertical = """
T get my%spacerValue% {
    marginTop = TwSizes.spacer%spacerValue%;
    marginBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String left = """
T get ml%spacerValue% {
    marginLeft = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String top = """
T get mt%spacerValue% {
    marginTop = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String right = """
T get mr%spacerValue% {
    marginRight = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String bottom = """
T get mb%spacerValue% {
    marginBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";