import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

class Tw {
  /// [TwService] Related Getters And Setters
  static BuildContext get context => TwService.context;
  static GlobalKey<NavigatorState> get appKey => TwService.appKey;
  static Future<ThemeMode> getThemeMode() => TwService.getThemeMode();
  static void setThemeMode(ThemeMode mode) => TwService.setThemeMode(mode);
  static void setSystemTheme() => TwService.setThemeMode(ThemeMode.system);
  static void setDarkTheme() => TwService.setThemeMode(ThemeMode.dark);
  static void setLightTheme() => TwService.setThemeMode(ThemeMode.light);
  static Future<void> init() async => await TwService.init();
}
