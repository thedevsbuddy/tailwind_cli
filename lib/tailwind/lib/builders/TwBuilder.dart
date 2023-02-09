/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwBuilder` class
const String target = "tailwind/lib/widgets/";

/// Get the full file path for the `TwBuilder` Class
///
/// [file] This gives a boilerplate for the `TwBuilder` class
const String file = "tailwind/lib/widgets/TwBuilder.dart";

/// Get the stub content for the `TwBuilder` Class
///
/// [stub] This gives a boilerplate for the `TwBuilder` class
const String stub = """
import 'package:flutter/material.dart';

/// Being used internally by TwWidgetBuilders for eg [TwTextBuilder]
abstract class TwWidgetBuilder<T extends Widget> {
  T render({Key? key});
}

abstract class TwWidgetContextBuilder<T extends Widget> {
  T render(BuildContext context, {Key? key});
}

abstract class TwTextSpanBuilder<TextSpan> {
  TextSpan render({Key? key});
}
""";
