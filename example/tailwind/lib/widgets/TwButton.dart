import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

import 'TwBuilder.dart';

/// Flutter Button Builder Widget
/// to provide utilities in your Text Widget
@protected
class TwButton extends TwWidgetBuilder<Widget>
    with TwColorMixin<TwButton>, TwPaddingMixin<TwButton>, TwAlignmentMixin<TwButton>, TwRoundnessMixin<TwButton> {
  TwButton(this._child) {
    setChildForColoring(this);
    setChildForPadding(this);
    setChildForAlignment(this);
    setChildForRoundness(this);
  }

  TwButton.existing(this._child, this._style, this._onPressed, this._onLongPress) {
    setChildForColoring(this);
    setChildForPadding(this);
    setChildForAlignment(this);
    setChildForRoundness(this);
  }

  EdgeInsetsGeometry? _padding;
  TextStyle? _textStyle;
  VoidCallback? _onPressed;
  VoidCallback? _onLongPress;
  ButtonStyle? _style;
  FocusNode? _focusNode;
  bool _autofocus = false;
  Clip _clipBehavior = Clip.none;
  Widget _child;

  /// Sets the padding property.
  TwButton padding(EdgeInsetsGeometry val) => this.._padding = val;

  /// Sets the padding property.
  TwButton style(ButtonStyle val) => this.._style = val;

  /// Sets the TextStyle property.
  TwButton textStyle(TextStyle textStyle) => this.._textStyle = textStyle;

  /// ============== RENDER BUTTON WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    final bs = TextButton.styleFrom(
      padding: _padding ?? EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom),
      alignment: twAlignment,
      backgroundColor: twColor,
      textStyle: _textStyle,
    );

    return TextButton(
      onPressed: _onPressed,
      onLongPress: _onLongPress,
      style: _style?.merge(bs) ?? bs,
      autofocus: _autofocus,
      focusNode: _focusNode,
      clipBehavior: _clipBehavior,
      child: _child,
    );
  }
}

extension TextButtonExtensions on TextButton {
  /// Extension method to directly access [TwText]
  /// with any widget without wrapping or with dot operator.

  TwButton get button => TwButton.existing(child!, style, onPressed, onLongPress);
}

