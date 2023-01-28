const String target = "tailwind/lib/widgets/";
const String file = "tailwind/lib/widgets/TwInkWell.dart";

const String stub = """
import 'package:flutter/material.dart';

import 'TwBuilder.dart';

/// Flutter Wrap Builder Widget
/// to provide utilities in your Wrap Widget
@protected
class TwInkWell extends TwWidgetBuilder<Widget> {
  TwInkWell(Widget this._child);
  TwInkWell.existing(
    Widget this._child,
    Function()? _onTap,
    Function()? _onDoubleTap,
    Function()? _onLongPress,
    Function(TapDownDetails)? _onTapDown,
    Function(TapUpDetails)? _onTapUp,
    Function(bool)? _onFocusChange,
    Function(bool)? _onHighlightChanged,
    Function()? _onTapCancel,
    Function(bool)? _onHover,
    bool _autofocus,
    BorderRadius? _borderRadius,
    MouseCursor? _mouseCursor,
    Color? _focusColor,
    Color? _hoverColor,
    Color? _highlightColor,
    MaterialStateProperty<Color?>? _overlayColor,
    Color? _splashColor,
    double? _radius,
    ShapeBorder? _customBorder,
    bool? _enableFeedback,
    bool _excludeFromSemantics,
    FocusNode? _focusNode,
    bool _canRequestFocus,
    MaterialStatesController? _statesController,
  );

  Widget? _child;
  InteractiveInkFeatureFactory? _splashFactory;
  Function()? _onTap;
  Function()? _onDoubleTap;
  Function()? _onLongPress;
  Function(TapDownDetails)? _onTapDown;
  Function(TapUpDetails)? _onTapUp;
  Function(bool)? _onFocusChange;
  Function(bool)? _onHighlightChanged;
  Function()? _onTapCancel;
  Function(bool)? _onHover;
  bool _autofocus = false;
  BorderRadius? _borderRadius;
  MouseCursor? _mouseCursor;
  Color? _focusColor;
  Color? _hoverColor;
  Color? _highlightColor;
  MaterialStateProperty<Color?>? _overlayColor;
  Color? _splashColor;
  double? _radius;
  ShapeBorder? _customBorder;
  bool? _enableFeedback = true;
  bool _excludeFromSemantics = false;
  FocusNode? _focusNode;
  bool _canRequestFocus = true;
  MaterialStatesController? _statesController;

  /// Provided splash factory to [InkWell]
  TwInkWell get noSplash => this.._splashFactory = NoSplash.splashFactory;

  /// Handle Methods
  TwInkWell onTap(Function()? onTap) => this.._onTap = onTap;
  TwInkWell onDoubleTap(Function()? onDoubleTap) => this.._onDoubleTap = onDoubleTap;
  TwInkWell onLongPress(Function()? onLongPress) => this.._onLongPress = onLongPress;
  TwInkWell onTapDown(Function(TapDownDetails)? onTapDown) => this.._onTapDown = onTapDown;
  TwInkWell onTapUp(Function(TapUpDetails)? onTapUp) => this.._onTapUp = onTapUp;
  TwInkWell onTapCancel(Function()? onTapCancel) => this.._onTapCancel = onTapCancel;
  TwInkWell onHighlightChanged(Function(bool)? onHighlightChanged) => this.._onHighlightChanged = onHighlightChanged;
  TwInkWell onHover(Function(bool)? onHover) => this.._onHover = onHover;
  TwInkWell onFocusChange(Function(bool)? onFocusChange) => this.._onFocusChange = onFocusChange;

  /// Handle Booleans
  TwInkWell autoFocus(bool autoFocus) => this.._autofocus = autoFocus;
  TwInkWell enableFeedback(bool enableFeedback) => this.._enableFeedback = enableFeedback;
  TwInkWell excludeFromSemantics(bool excludeFromSemantics) => this.._excludeFromSemantics = excludeFromSemantics;
  TwInkWell canRequestFocus(bool canRequestFocus) => this.._canRequestFocus = canRequestFocus;

  /// Handle Colors
  TwInkWell focusColor(Color focusColor) => this.._focusColor = focusColor;
  TwInkWell hoverColor(Color hoverColor) => this.._hoverColor = hoverColor;
  TwInkWell highlightColor(Color highlightColor) => this.._highlightColor = highlightColor;
  TwInkWell overlayColor(MaterialStateProperty<Color?> overlayColor) => this.._overlayColor = overlayColor;
  TwInkWell splashColor(Color splashColor) => this.._splashColor = splashColor;

  /// Handle Misc Options
  TwInkWell borderRadius(BorderRadius borderRadius) => this.._borderRadius = borderRadius;
  TwInkWell mouseCursor(MouseCursor mouseCursor) => this.._mouseCursor = mouseCursor;
  TwInkWell customBorder(ShapeBorder customBorder) => this.._customBorder = customBorder;
  TwInkWell focusNode(FocusNode focusNode) => this.._focusNode = focusNode;
  TwInkWell statesController(MaterialStatesController statesController) => this.._statesController = statesController;

  /// ============== RENDER INKWELL WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return InkWell(
      child: _child!,
      splashFactory: _splashFactory,
      onTap: _onTap,
      onDoubleTap: _onDoubleTap,
      onLongPress: _onLongPress,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onFocusChange: _onFocusChange,
      onHighlightChanged: _onHighlightChanged,
      onTapCancel: _onTapCancel,
      onHover: _onHover,
      autofocus: _autofocus,
      borderRadius: _borderRadius,
      mouseCursor: _mouseCursor,
      focusColor: _focusColor,
      hoverColor: _hoverColor,
      highlightColor: _highlightColor,
      overlayColor: _overlayColor,
      splashColor: _splashColor,
      radius: _radius,
      customBorder: _customBorder,
      enableFeedback: _enableFeedback,
      excludeFromSemantics: _excludeFromSemantics,
      focusNode: _focusNode,
      canRequestFocus: _canRequestFocus,
      statesController: _statesController,
    );
  }
}

extension InkwellExtensions on InkWell {
  /// Extension method to directly access [TwInkWell]
  /// with any widget without wrapping or with dot operator.

  TwInkWell get inkWell => TwInkWell.existing(
        child!,
        onTap,
        onDoubleTap,
        onLongPress,
        onTapDown,
        onTapUp,
        onFocusChange,
        onHighlightChanged,
        onTapCancel,
        onHover,
        autofocus,
        borderRadius,
        mouseCursor,
        focusColor,
        hoverColor,
        highlightColor,
        overlayColor,
        splashColor,
        radius,
        customBorder,
        enableFeedback,
        excludeFromSemantics,
        focusNode,
        canRequestFocus,
        statesController,
      );
}

""";
