const String target = "tailwind/lib";
const String file = "tailwind/lib/tailwind.dart";
const String stub = """
library tailwind;

/// Extensions
export "./extensions/TwColorExtension.dart";
export "./extensions/TwWidgetExtension.dart";
export "./extensions/TwNumbersExtension.dart";
export "./extensions/TwContextExtension.dart";

/// Flutter Widgets
export './widgets/TwContainer.dart';
export './widgets/TwText.dart';
export './widgets/TwButton.dart';
export './widgets/TwRow.dart';
export './widgets/TwColumn.dart';
export './widgets/TwWrap.dart';
export './widgets/TwPadding.dart';

/// Utilities
export "./utilities/Tw.dart";

/// Mixins
export "./mixins/ColorMixin.dart";
export "./mixins/GradientMixin.dart";
export "./mixins/PaddingMixin.dart";
export "./mixins/MarginMixin.dart";
export "./mixins/AlignmentMixin.dart";
export "./mixins/ShadowMixin.dart";
export "./mixins/RoundnessMixin.dart";
export "./mixins/BorderMixin.dart";
""";
