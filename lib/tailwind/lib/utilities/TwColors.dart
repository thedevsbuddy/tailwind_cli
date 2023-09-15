/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwColors` class
const String target = "tailwind/lib/utilities/";

/// Get the full file path for the `TwColors` Class
///
/// [file] This gives a boilerplate for the `TwColors` class
const String file = "tailwind/lib/utilities/TwColors.dart";

/// Get the stub content for the `TwColors` Class
///
/// [stub] This gives a boilerplate for the `TwColors` class
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
