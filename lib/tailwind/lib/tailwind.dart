const String target = "tailwind/lib";
const String file = "tailwind/lib/tailwind.dart";
const String stub = """
library tailwind;

/// Flutter Widgets
/// export './builders/Container.dart';
export './builders/TwTextBuilder.dart';

/// Utilities
export "./utilities/Tw.dart";

/// Mixins
export "./mixins/ColorMixin.dart";
export "./mixins/PaddingMixin.dart";
export "./mixins/MarginMixin.dart";
export "./mixins/AlignmentMixin.dart";
export "./mixins/ShadowMixin.dart";
export "./mixins/RoundnessMixin.dart";
""";
