import 'package:flutter/material.dart';
import 'TwBuilder.dart';

/// Flutter Stack Builder Widget
/// to provide utilities in your Stack Widget
@protected
class TwStack extends TwWidgetBuilder<Widget> {
  TwStack(List<Widget> this._children);

  TwStack.existing(
    List<Widget> this._children,
    AlignmentGeometry this._alignment,
    Clip this._clipBehavior,
    TextDirection this._textDirection,
    StackFit this._stackFit,
  );

  List<Widget>? _children;
  Clip? _clipBehavior = Clip.none;
  AlignmentGeometry? _alignment = AlignmentDirectional.topStart;
  TextDirection? _textDirection;
  StackFit? _stackFit;

  /// AlignmentDirectional getter
  TwStack get alignTopStart => this.._alignment = AlignmentDirectional.topStart;

  TwStack get alignTopCenter => this.._alignment = AlignmentDirectional.topCenter;

  TwStack get alignTopEnd => this.._alignment = AlignmentDirectional.topEnd;

  TwStack get alignCenterStart => this.._alignment = AlignmentDirectional.centerStart;

  TwStack get alignCenter => this.._alignment = AlignmentDirectional.center;

  TwStack get alignCenterEnd => this.._alignment = AlignmentDirectional.centerEnd;

  TwStack get alignBottomStart => this.._alignment = AlignmentDirectional.bottomStart;

  TwStack get alignBottomCenter => this.._alignment = AlignmentDirectional.bottomCenter;

  TwStack get alignBottomEnd => this.._alignment = AlignmentDirectional.bottomEnd;

  /// Clip Behavior
  TwStack get clipNone => this.._clipBehavior = Clip.none;

  TwStack get clipAntiAlias => this.._clipBehavior = Clip.antiAlias;

  TwStack get clipHardEdge => this.._clipBehavior = Clip.hardEdge;

  TwStack get clipAntiAliasWithSaveLayer => this.._clipBehavior = Clip.antiAliasWithSaveLayer;

  /// ============== RENDER STACK WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Stack(
      key: key,
      children: _children!,
      alignment: _alignment!,
      clipBehavior: _clipBehavior!,
      fit: _stackFit!,
      textDirection: _textDirection,
    );
  }
}

extension StackExtensions on Stack {
  /// Extension method to directly access [TwStack]
  /// with any widget without wrapping or with dot operator.

  @Deprecated('This method is deprecated and will be removed in the future please use [isStack] instead.')
  TwStack get stack => TwStack.existing(children, alignment, clipBehavior, textDirection!, fit);

  TwStack get isStack => TwStack.existing(children, alignment, clipBehavior, textDirection!, fit);
}


