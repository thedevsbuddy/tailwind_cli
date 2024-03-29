/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwMarginMixin` class
const String target = "tailwind/lib/mixins/";

/// Get the full file path for the `TwMarginMixin` Class
///
/// [file] This gives a boilerplate for the `TwMarginMixin` class
const String file = "tailwind/lib/mixins/TwMarginMixin.dart";

/// Get the stub content for the `TwMarginMixin` Class
///
/// [stub] This gives a boilerplate for the `TwMarginMixin` class
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
