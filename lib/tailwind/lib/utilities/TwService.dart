/// Get the targetes directory
///
/// [target] Provides the target directory for the `TwService` class
const String target = "tailwind/lib/utilities/";

/// Get the full file path for the `TwService` Class
///
/// [file] This gives a boilerplate for the `TwService` class
const String file = "tailwind/lib/utilities/TwService.dart";

/// Get the stub content for the `TwService` Class
///
/// [stub] This gives a boilerplate for the `TwService` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tailwind/tailwind.dart';

class TwService {
  static GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static Future<ThemeMode> getThemeMode() async => await TwAppBuilder.of(appKey.currentContext!)!.getThemeMode();
  static void setThemeMode(String mode) => TwAppBuilder.of(appKey.currentContext!)!.setThemeMode(mode);

  static Future<void> init() async => await GetStorage.init();
}
""";
