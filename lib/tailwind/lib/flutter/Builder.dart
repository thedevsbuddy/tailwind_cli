const String target = "tailwind/lib/flutter/";
const String file = "tailwind/lib/flutter/Builder.dart";

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
