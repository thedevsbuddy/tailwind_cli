import 'package:flutter/material.dart';

import 'TwBuilder.dart';

/// Flutter Wrap Builder Widget
/// to provide utilities in your Wrap Widget
@protected
class TwWrap extends TwWidgetBuilder<Widget> {
  TwWrap(List<Widget> this._children);
  TwWrap.existing(
    List<Widget> this._children,
    Axis this._direction,
    WrapAlignment this._alignment,
    WrapCrossAlignment this._crossAxisAlignment,
    Clip this._clipBehavior,
  );

  List<Widget>? _children;
  Axis? _direction = Axis.horizontal;
  Clip? _clipBehavior = Clip.none;
  WrapAlignment? _alignment = WrapAlignment.start;
  WrapCrossAlignment? _crossAxisAlignment = WrapCrossAlignment.center;

  /// WrapAlignment getter
  TwWrap get justifyCenter => this.._alignment = WrapAlignment.center;
  TwWrap get justifyStart => this.._alignment = WrapAlignment.start;
  TwWrap get justifyEnd => this.._alignment = WrapAlignment.end;
  TwWrap get justifyBetween => this.._alignment = WrapAlignment.spaceBetween;
  TwWrap get justifyAround => this.._alignment = WrapAlignment.spaceAround;
  TwWrap get justifyEvenly => this.._alignment = WrapAlignment.spaceEvenly;

  /// WrapCrossAlignment getter
  TwWrap get alignCenter =>
      this.._crossAxisAlignment = WrapCrossAlignment.center;
  TwWrap get alignStart => this.._crossAxisAlignment = WrapCrossAlignment.start;
  TwWrap get alignEnd => this.._crossAxisAlignment = WrapCrossAlignment.end;

  /// Direction
  TwWrap get horizontal => this.._direction = Axis.horizontal;
  TwWrap get vertical => this.._direction = Axis.vertical;

  /// Clip Behavior
  TwWrap get clipNone => this.._clipBehavior = Clip.none;
  TwWrap get clipAntiAlias => this.._clipBehavior = Clip.antiAlias;
  TwWrap get clipHardEdge => this.._clipBehavior = Clip.hardEdge;
  TwWrap get clipAntiAliasWithSaveLayer =>
      this.._clipBehavior = Clip.antiAliasWithSaveLayer;

  /// ============== RENDER WRAP WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Wrap(
      children: _children!,
      direction: _direction!,
      alignment: _alignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      clipBehavior: _clipBehavior!,
    );
  }
}

extension WrapExtensions on Wrap {
  /// Extension method to directly access [TwWrap]
  /// with any widget without wrapping or with dot operator.

  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isWrap] instead.')
  TwWrap get wrap => TwWrap.existing(
      children, direction, alignment, crossAxisAlignment, clipBehavior);

  TwWrap get isWrap => TwWrap.existing(
      children, direction, alignment, crossAxisAlignment, clipBehavior);
}
