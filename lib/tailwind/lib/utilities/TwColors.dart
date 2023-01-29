const String target = "tailwind/lib/utilities/";
const String file = "tailwind/lib/utilities/TwColors.dart";

const String stub = """
import "package:flutter/material.dart";

/// [TwColors] Utility helper for [Tailwind] Colors
class TwColors {
  TwColors._();

  /// Theme Colors
  static Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;
  static Color primaryColorDark(BuildContext context) => Theme.of(context).primaryColorDark;
  static Color primaryColorLight(BuildContext context) => Theme.of(context).primaryColorLight;
  static Color secondary(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color secondaryColor(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color backgroundColor(BuildContext context) => Theme.of(context).backgroundColor;
  static Color scaffoldBackgroundColor(BuildContext context) => Theme.of(context).scaffoldBackgroundColor;
  static Color cardColor(BuildContext context) => Theme.of(context).cardColor;

  /// Tailwind Colors
  //colors
}

""";
