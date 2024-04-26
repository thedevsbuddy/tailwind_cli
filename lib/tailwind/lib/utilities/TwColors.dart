/// Get Targeted Directory
const String target = "tailwind/lib/utilities/";

/// Get file's path with name
const String file = "tailwind/lib/utilities/TwColors.dart";

/// Get file's Raw Contents
const String stub = """
import "package:flutter/material.dart";

/// [TwColors] Utility helper for [Tailwind] Colors
class TwColors {
  TwColors._();

  /// Theme Colors
  static Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;
  static Color primaryLightColor(BuildContext context) => Theme.of(context).primaryColorLight;
  static Color primaryDarkColor(BuildContext context) => Theme.of(context).primaryColorDark;
  static Color secondaryColor(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color backgroundColor(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color scaffoldBackgroundColor(BuildContext context) => Theme.of(context).scaffoldBackgroundColor;
  static Color cardColor(BuildContext context) => Theme.of(context).cardColor;

  /// Tailwind Colors
  //colors
}

""";
