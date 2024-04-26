/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwPaddingMixin` class
const String target = "tailwind/lib/mixins/";

/// Get the full file path for the `TwPaddingMixin` Class
///
/// [file] This gives a boilerplate for the `TwPaddingMixin` class
const String file = "tailwind/lib/mixins/TwPaddingMixin.dart";

/// Get the stub content for the `TwPaddingMixin` Class
///
/// [stub] This gives a boilerplate for the `TwPaddingMixin` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwPaddingMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _twPadding;

  double paddingLeft = 0;
  
  double paddingTop = 0;
  
  double paddingRight = 0;
  
  double paddingBottom = 0;

  
  void setChildForPadding(T child) {
    _child = child;
  }
 
  
  /// Sets the padding property of the box.
  T withPadding(EdgeInsetsGeometry val) {
    _twPadding = val;
    return _child;
  }

  EdgeInsetsGeometry get twPadding {
    _twPadding = EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom);
    return _twPadding!;
  }
    
  // Custom All Side Padding
  T padding(dynamic val){
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  T p(dynamic val){
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
  
  %paddingGetters%
}
""";

const String allSide = """
T get p%spacerValue% {
    paddingLeft = TwSizes.spacer%spacerValue%;
    paddingTop = TwSizes.spacer%spacerValue%;
    paddingRight = TwSizes.spacer%spacerValue%;
    paddingBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String horizontal = """
T get px%spacerValue% {
    paddingLeft = TwSizes.spacer%spacerValue%;
    paddingRight = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String vertical = """
T get py%spacerValue% {
    paddingTop = TwSizes.spacer%spacerValue%;
    paddingBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";

const String left = """
T get pl%spacerValue% {
    paddingLeft = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String top = """
T get pt%spacerValue% {
    paddingTop = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String right = """
T get pr%spacerValue% {
    paddingRight = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
const String bottom = """
T get pb%spacerValue% {
    paddingBottom = TwSizes.spacer%spacerValue%;
    return _child;
  }
""";
