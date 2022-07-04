import 'package:flutter/material.dart';

mixin TwShadowMixin<T> {
  late T _child;

  @protected
  List<BoxShadow>? twShadow;

  @protected
  void setChildForShadow(T child) {
    _child = child;
  }

  /// Shadow None
  T get shadowNone => _addShadow(
        shadows: [
          BoxShadow(
            color: Colors.transparent,
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      );

  /// Shadow Small
  T get shadowSm => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.075),
            blurRadius: 4,
            spreadRadius: -1,
            offset: Offset(0, 1),
          ),
        ],
      );

  /// Shadow Base
  T get shadow => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 8,
            spreadRadius: -2,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 8,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
        ],
      );

  /// Shadow Medium
  T get shadowMd => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 12,
            spreadRadius: -3,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 10,
            spreadRadius: -3,
            offset: Offset(0, 1),
          ),
        ],
      );

  /// Shadow Large
  T get shadowLg => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 16,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.075),
            blurRadius: 12,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
        ],
      );

  /// Shadow Extra Large
  T get shadowXl => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 20,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.075),
            blurRadius: 16,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
        ],
      );

  /// Shadow Extra Large
  T get shadowXl2 => _addShadow(
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 28,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 24,
            spreadRadius: -4,
            offset: Offset(0, 1),
          ),
        ],
      );

  T _addShadow({required List<BoxShadow>? shadows}) {
    twShadow = shadows;
    return _child;
  }
}
