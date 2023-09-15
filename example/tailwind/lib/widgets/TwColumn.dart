import 'package:flutter/material.dart';

import 'TwBuilder.dart';

/// Flutter Column Builder Widget
/// to provide utilities in your Column Widget
@protected
class TwColumn extends TwWidgetBuilder<Widget> {
  TwColumn(List<Widget> this._children);
  TwColumn.existing(
    List<Widget> this._children,
    MainAxisAlignment this._mainAxisAlignment,
    CrossAxisAlignment this._crossAxisAlignment,
    MainAxisSize this._mainAxisSize,
  );

  List<Widget>? _children;
  MainAxisAlignment? _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment? _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize? _mainAxisSize = MainAxisSize.max;

  /// MainAxisAlignment getter
  // Main Center
  TwColumn get justifyCenter =>
      this.._mainAxisAlignment = MainAxisAlignment.center;
  // Main Start
  TwColumn get justifyStart =>
      this.._mainAxisAlignment = MainAxisAlignment.start;
  // Main End
  TwColumn get justifyEnd => this.._mainAxisAlignment = MainAxisAlignment.end;
  // Main between
  TwColumn get justifyBetween =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceBetween;
  // Main around
  TwColumn get justifyAround =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceAround;
  // Main Evenly
  TwColumn get justifyEvenly =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  /// CrossAxisAlignment getter
  // Cross Center
  TwColumn get alignCenter =>
      this.._crossAxisAlignment = CrossAxisAlignment.center;
  // Cross Start
  TwColumn get alignStart =>
      this.._crossAxisAlignment = CrossAxisAlignment.start;
  // Cross End
  TwColumn get alignEnd => this.._crossAxisAlignment = CrossAxisAlignment.end;
  // Cross Baseline
  TwColumn get alignBetween =>
      this.._crossAxisAlignment = CrossAxisAlignment.baseline;
  // Cross Stretch
  TwColumn get alignStretch =>
      this.._crossAxisAlignment = CrossAxisAlignment.stretch;

  /// Main Axis Size
  // Main Axis Size Max
  TwColumn get max => this.._mainAxisSize = MainAxisSize.max;
  // Main Axis Size Min
  TwColumn get min => this.._mainAxisSize = MainAxisSize.min;

  /// ============== RENDER COLUMN WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Column(
      children: _children!,
      mainAxisAlignment: _mainAxisAlignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      mainAxisSize: _mainAxisSize!,
    );
  }
}

extension ColumnExtensions on Column {
  /// Extension method to directly access [TwColumn]
  /// with any widget without wrapping or with dot operator.

  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isColumn] instead.')
  TwColumn get column => TwColumn.existing(
      children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);

  TwColumn get isColumn => TwColumn.existing(
      children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);
}
