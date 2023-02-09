/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwPadding` class
const String target = "tailwind/lib/widgets/";

/// Get the full file path for the `TwPadding` Class
///
/// [file] This gives a boilerplate for the `TwPadding` class
const String file = "tailwind/lib/widgets/TwPadding.dart";

/// Get the stub content for the `TwPadding` Class
///
/// [stub] This gives a boilerplate for the `TwPadding` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

import 'TwBuilder.dart';

class TwPadding extends TwWidgetBuilder<Widget> with TwPaddingMixin<TwPadding> {
  TwPadding({this.child}) {
    setChildForPadding(this);
  }
  TwPadding.existing(Widget this.child, this._padding) {
    setChildForPadding(this);
  }
  final Widget? child;

  EdgeInsetsGeometry? _padding;

  /// Sets the padding property of the box.
  TwPadding padding(EdgeInsetsGeometry val) => this.._padding = val;

  @override
  Widget render({Key? key}) {
    return Padding(
      key: key,
      child: child,
      padding: _padding ?? EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom),
    );
  }
}

extension PaddingWidgetExtension on Padding {
  /// Extension method to directly access material [Padding]
  /// with any widget without wrapping or with dot operator.
  @Deprecated('This method is deprecated and will be removed in the future please use [isPadding] instead.')
  TwPadding get twPadding => TwPadding.existing(child!, padding);


  TwPadding get isPadding => TwPadding.existing(child!, padding);
}

""";
