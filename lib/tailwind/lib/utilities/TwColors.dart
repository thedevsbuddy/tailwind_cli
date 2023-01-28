const String target = "tailwind/lib/utilities/";
const String file = "tailwind/lib/utilities/TwColors.dart";

const String stub = """
import "package:flutter/material.dart";

/// [TwColors] Utility helper for [Tailwind] Colors
class TwColors {
  TwColors._();

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  static bool _hasDarkColor = false;

  /// Checkes if app is in dark mode
  /// And also checkes if [Widget] has [onDark<Color>] applied
  @protected
  static Brightness _brightness = MediaQueryData.fromWindow(WidgetsBinding.instance.window).platformBrightness;

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
