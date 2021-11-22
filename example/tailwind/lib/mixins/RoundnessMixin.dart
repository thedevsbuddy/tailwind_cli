import 'package:flutter/material.dart';

mixin TwRoundnessMixin<T> {
  late T _childToRound;

  @protected
  double? roundedValue;

  @protected
  BorderRadiusGeometry? radiusGeometry;

  T roundedCustom(BorderRadiusGeometry geometry) {
    roundedValue = 0.0;
    radiusGeometry = geometry;
    return _childToRound;
  }

  T roundedTopLeft({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.only(topLeft: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedTopRight({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.only(topRight: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedBottomLeft({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.only(bottomLeft: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedBottomRight({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.only(bottomRight: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedLeft({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.horizontal(left: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedRight({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.horizontal(right: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedTop({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.vertical(top: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T roundedBottom({double? value}) {
    roundedValue = value ?? 4.0;
    radiusGeometry = BorderRadius.vertical(bottom: Radius.circular(roundedValue!));
    return _childToRound;
  }

  T get roundedNone {
    roundedValue = 0.0;
    return _childToRound;
  }

  T get roundedSm {
    roundedValue = 2;
    return _childToRound;
  }

  T get rounded {
    roundedValue = 4;
    return _childToRound;
  }

  T get roundedMd {
    roundedValue = 6;
    return _childToRound;
  }

  T get roundedLg {
    roundedValue = 8;
    return _childToRound;
  }

  T get roundedXl {
    roundedValue = 12;
    return _childToRound;
  }

  T get roundedXl2 {
    roundedValue = 16;
    return _childToRound;
  }

  T get roundedXl3 {
    roundedValue = 20;
    return _childToRound;
  }

  @protected
  void setChildToRound(T child) {
    _childToRound = child;
  }
}

