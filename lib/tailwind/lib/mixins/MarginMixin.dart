const String target = "tailwind/lib/mixins/";
const String file = "tailwind/lib/mixins/MarginMixin.dart";

const String stub = """
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
  
  //marginGetters  
}
""";
