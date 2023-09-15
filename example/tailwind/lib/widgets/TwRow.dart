import 'package:flutter/material.dart';

import 'TwBuilder.dart';

/// Flutter Row Builder Widget
/// to provide utilities in your Row Widget
@protected
class TwRow extends TwWidgetBuilder<Widget> {
  TwRow(List<Widget> this._children);
  TwRow.existing(
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
  TwRow get justifyCenter =>
      this.._mainAxisAlignment = MainAxisAlignment.center;
  // Main Start
  TwRow get justifyStart => this.._mainAxisAlignment = MainAxisAlignment.start;
  // Main End
  TwRow get justifyEnd => this.._mainAxisAlignment = MainAxisAlignment.end;
  // Main between
  TwRow get justifyBetween =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceBetween;
  // Main around
  TwRow get justifyAround =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceAround;
  // Main Evenly
  TwRow get justifyEvenly =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  /// CrossAxisAlignment getter
  // Cross Center
  TwRow get alignCenter =>
      this.._crossAxisAlignment = CrossAxisAlignment.center;
  // Cross Start
  TwRow get alignStart => this.._crossAxisAlignment = CrossAxisAlignment.start;
  // Cross End
  TwRow get alignEnd => this.._crossAxisAlignment = CrossAxisAlignment.end;
  // Cross Baseline
  TwRow get alignBetween =>
      this.._crossAxisAlignment = CrossAxisAlignment.baseline;
  // Cross Stretch
  TwRow get alignStretch =>
      this.._crossAxisAlignment = CrossAxisAlignment.stretch;

  /// Main Axis Size
  // Main Axis Size Max
  TwRow get max => this.._mainAxisSize = MainAxisSize.max;
  // Main Axis Size Min
  TwRow get min => this.._mainAxisSize = MainAxisSize.min;

  /// ============== RENDER ROW WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Row(
      children: _children!,
      mainAxisAlignment: _mainAxisAlignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      mainAxisSize: _mainAxisSize!,
    );
  }
}

extension RowExtensions on Row {
  /// Extension method to directly access [TwRow]
  /// with any widget without wrapping or with dot operator.

  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isRow] instead.')
  TwRow get row => TwRow.existing(
      children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);

  TwRow get isRow => TwRow.existing(
      children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);
}
