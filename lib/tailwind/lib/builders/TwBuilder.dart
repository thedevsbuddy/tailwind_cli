/// Get Targeted Directory
const String target = "tailwind/lib/widgets/";

/// Get file's path with name
const String file = "tailwind/lib/widgets/TwBuilder.dart";

/// Get file's Raw Contents
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
