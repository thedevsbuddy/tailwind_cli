import 'package:flutter/material.dart';

mixin TwGestureMixin<T> {
  late T _child;

  @protected
  void setChildForGestureDetection(T child) {
    _child = child;
  }

  @protected
  Function()? twOnTap;

  @protected
  Function()? twOnDoubleTap;

  @protected
  Function()? twOnLongPress;

  @protected
  Function(TapDownDetails)? twOnTapDown;

  @protected
  Function(TapUpDetails)? twOnTapUp;

  @protected
  Function(bool)? twOnFocusChange;

  @protected
  Function(bool)? twOnHighlightChanged;

  @protected
  Function()? twOnTapCancel;

  @protected
  Function(bool)? twOnHover;

  /// Handle Methods
  T onTap(Function()? onTap) {
    twOnTap = onTap;
    return _child;
  }

  T onDoubleTap(Function()? onDoubleTap) {
    twOnDoubleTap = onDoubleTap;
    return _child;
  }

  T onLongPress(Function()? onLongPress) {
    twOnLongPress = onLongPress;
    return _child;
  }

  T onTapDown(Function(TapDownDetails)? onTapDown) {
    twOnTapDown = onTapDown;
    return _child;
  }

  T onTapUp(Function(TapUpDetails)? onTapUp) {
    twOnTapUp = onTapUp;
    return _child;
  }

  T onTapCancel(Function()? onTapCancel) {
    twOnTapCancel = onTapCancel;
    return _child;
  }

  T onHighlightChanged(Function(bool)? onHighlightChanged) {
    twOnHighlightChanged = onHighlightChanged;
    return _child;
  }

  T onHover(Function(bool)? onHover) {
    twOnHover = onHover;
    return _child;
  }

  T onFocusChange(Function(bool)? onFocusChange) {
    twOnFocusChange = onFocusChange;
    return _child;
  }
}
