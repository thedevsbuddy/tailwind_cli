import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

mixin TwSizeMixin<T> {
  late T _child;

  @protected
  double? twWidth;

  @protected
  double? twHeight;

  @protected
  void setChildForSizing(T child) {
    _child = child;
  }

  T square(double value) {
    twHeight = value;
    twWidth = value;
    return _child;
  }

  /// Sets the size (width & height) property of the box.
  T size(double width, double height) {
    twWidth = width;
    twHeight = height;
    return _child;
  }

  /// Sets the height property of the box.
  T height(double value) {
    twHeight = value;
    return _child;
  }

  T get hFull {
    twHeight = MediaQuery.of(TwService.context).size.height;
    return _child;
  }

  T get hScreen {
    twHeight = MediaQuery.of(TwService.context).size.height;
    return _child;
  }

  T get hHalf {
    twHeight = MediaQuery.of(TwService.context).size.height / 2;
    return _child;
  }

  T get hQuarter {
    twHeight = MediaQuery.of(TwService.context).size.height * .25;
    return _child;
  }

  T get h5 {
    twHeight = MediaQuery.of(TwService.context).size.height * .05;
    return _child;
  }

  T get h10 {
    twHeight = MediaQuery.of(TwService.context).size.height * .1;
    return _child;
  }

  T get h15 {
    twHeight = MediaQuery.of(TwService.context).size.height * .15;
    return _child;
  }

  T get h20 {
    twHeight = MediaQuery.of(TwService.context).size.height * .2;
    return _child;
  }

  T get h25 {
    twHeight = MediaQuery.of(TwService.context).size.height * .25;
    return _child;
  }

  T get h30 {
    twHeight = MediaQuery.of(TwService.context).size.height * .3;
    return _child;
  }

  T get h35 {
    twHeight = MediaQuery.of(TwService.context).size.height * .35;
    return _child;
  }

  T get h40 {
    twHeight = MediaQuery.of(TwService.context).size.height * .4;
    return _child;
  }

  T get h45 {
    twHeight = MediaQuery.of(TwService.context).size.height * .45;
    return _child;
  }

  T get h50 {
    twHeight = MediaQuery.of(TwService.context).size.height * .5;
    return _child;
  }

  T get h55 {
    twHeight = MediaQuery.of(TwService.context).size.height * .55;
    return _child;
  }

  T get h60 {
    twHeight = MediaQuery.of(TwService.context).size.height * .6;
    return _child;
  }

  T get h65 {
    twHeight = MediaQuery.of(TwService.context).size.height * .65;
    return _child;
  }

  T get h70 {
    twHeight = MediaQuery.of(TwService.context).size.height * .7;
    return _child;
  }

  T get h75 {
    twHeight = MediaQuery.of(TwService.context).size.height * .75;
    return _child;
  }

  T get h80 {
    twHeight = MediaQuery.of(TwService.context).size.height * .8;
    return _child;
  }

  T get h85 {
    twHeight = MediaQuery.of(TwService.context).size.height * .85;
    return _child;
  }

  T get h90 {
    twHeight = MediaQuery.of(TwService.context).size.height * .9;
    return _child;
  }

  T get h95 {
    twHeight = MediaQuery.of(TwService.context).size.height * .95;
    return _child;
  }

  T get h100 {
    twHeight = MediaQuery.of(TwService.context).size.height;
    return _child;
  }

  /// Sets the width property of the box.
  T width(double value) {
    twWidth = value;
    return _child;
  }

  T get wFull {
    twWidth = MediaQuery.of(TwService.context).size.width;
    return _child;
  }

  T get wScreen {
    twWidth = MediaQuery.of(TwService.context).size.width;
    return _child;
  }

  T get wHalf {
    twWidth = MediaQuery.of(TwService.context).size.width / 2;
    return _child;
  }

  T get wQuarter {
    twWidth = MediaQuery.of(TwService.context).size.width * .25;
    return _child;
  }

  T get w5 {
    twWidth = MediaQuery.of(TwService.context).size.width * .05;
    return _child;
  }

  T get w10 {
    twWidth = MediaQuery.of(TwService.context).size.width * .1;
    return _child;
  }

  T get w15 {
    twWidth = MediaQuery.of(TwService.context).size.width * .15;
    return _child;
  }

  T get w20 {
    twWidth = MediaQuery.of(TwService.context).size.width * .2;
    return _child;
  }

  T get w25 {
    twWidth = MediaQuery.of(TwService.context).size.width * .25;
    return _child;
  }

  T get w30 {
    twWidth = MediaQuery.of(TwService.context).size.width * .3;
    return _child;
  }

  T get w35 {
    twWidth = MediaQuery.of(TwService.context).size.width * .35;
    return _child;
  }

  T get w40 {
    twWidth = MediaQuery.of(TwService.context).size.width * .4;
    return _child;
  }

  T get w45 {
    twWidth = MediaQuery.of(TwService.context).size.width * .45;
    return _child;
  }

  T get w50 {
    twWidth = MediaQuery.of(TwService.context).size.width * .5;
    return _child;
  }

  T get w55 {
    twWidth = MediaQuery.of(TwService.context).size.width * .55;
    return _child;
  }

  T get w60 {
    twWidth = MediaQuery.of(TwService.context).size.width * .6;
    return _child;
  }

  T get w65 {
    twWidth = MediaQuery.of(TwService.context).size.width * .65;
    return _child;
  }

  T get w70 {
    twWidth = MediaQuery.of(TwService.context).size.width * .7;
    return _child;
  }

  T get w75 {
    twWidth = MediaQuery.of(TwService.context).size.width * .75;
    return _child;
  }

  T get w80 {
    twWidth = MediaQuery.of(TwService.context).size.width * .8;
    return _child;
  }

  T get w85 {
    twWidth = MediaQuery.of(TwService.context).size.width * .85;
    return _child;
  }

  T get w90 {
    twWidth = MediaQuery.of(TwService.context).size.width * .9;
    return _child;
  }

  T get w95 {
    twWidth = MediaQuery.of(TwService.context).size.width * .95;
    return _child;
  }

  T get w100 {
    twWidth = MediaQuery.of(TwService.context).size.width;
    return _child;
  }
}
