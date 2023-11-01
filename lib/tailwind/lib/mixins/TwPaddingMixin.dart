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
  
  %paddingGetters%
}
""";
