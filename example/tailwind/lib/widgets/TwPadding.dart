import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

import 'TwBuilder.dart';

class TwPadding extends TwWidgetBuilder<Widget> with TwPaddingMixin<TwPadding> {
  TwPadding({this.child}) {
    setChildForPadding(this);
  }
  TwPadding.existing(Widget this.child) {
    setChildForPadding(this);
  }

  final Widget? child;

  @override
  Widget render({Key? key}) {
    return Padding(
      key: key,
      child: child,
      padding: twPadding,
    );
  }
}

extension PaddingWidgetExtension on Padding {
  /// Extension method to directly access material [Padding]
  /// with any widget without wrapping or with dot operator.
  @Deprecated(
      'This method is deprecated and will be removed in the future please use [isPadding] instead.')
  TwPadding get twPadding => TwPadding.existing(child!);

  TwPadding get isPadding => TwPadding.existing(child!);
}

extension PaddingOnWidgetExtension on Widget {
  TwPadding get hasPadding => TwPadding.existing(this);
}
