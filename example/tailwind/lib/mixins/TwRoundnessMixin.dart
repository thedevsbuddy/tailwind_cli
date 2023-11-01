import 'package:flutter/material.dart';

mixin TwRoundnessMixin<T> {
  late T _child;

  @protected
  double? roundness;

  @protected
  BorderRadiusGeometry? radiusGeometry;

  @protected
  void setChildForRoundness(T child) {
    _child = child;
  }

  T roundedCustom(BorderRadiusGeometry geometry) {
    roundness = 0.0;
    radiusGeometry = geometry;
    return _child;
  }

  T roundedTopLeft({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.only(topLeft: Radius.circular(roundness!));
    return _child;
  }

  T roundedTopRight({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.only(topRight: Radius.circular(roundness!));
    return _child;
  }

  T roundedBottomLeft({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.only(bottomLeft: Radius.circular(roundness!));
    return _child;
  }

  T roundedBottomRight({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry =
        BorderRadius.only(bottomRight: Radius.circular(roundness!));
    return _child;
  }

  T roundedLeft({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.horizontal(left: Radius.circular(roundness!));
    return _child;
  }

  T roundedRight({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry =
        BorderRadius.horizontal(right: Radius.circular(roundness!));
    return _child;
  }

  T roundedTop({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.vertical(top: Radius.circular(roundness!));
    return _child;
  }

  T roundedBottom({double? value}) {
    roundness = value ?? 4.0;
    radiusGeometry = BorderRadius.vertical(bottom: Radius.circular(roundness!));
    return _child;
  }

  T get roundedNone {
    roundness = 0.0;
    return _child;
  }

  T get roundedSm {
    roundness = 2;
    return _child;
  }

  T get rounded {
    roundness = 4;
    return _child;
  }

  T get roundedMd {
    roundness = 6;
    return _child;
  }

  T get roundedLg {
    roundness = 8;
    return _child;
  }

  T get roundedXl {
    roundness = 12;
    return _child;
  }

  T get roundedXl2 {
    roundness = 16;
    return _child;
  }

  T get roundedXl3 {
    roundness = 20;
    return _child;
  }
}
