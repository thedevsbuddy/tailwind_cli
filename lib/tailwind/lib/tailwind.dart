const String target = "tailwind/lib";
const String file = "tailwind/lib/tailwind.dart";
const String stub = """
library tailwind;

/// Flutter Widgets
export './widgets/TwContainer.dart';
export './widgets/TwText.dart';
export './widgets/TwButton.dart';

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
""";
