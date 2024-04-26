/// Get Targeted Directory
const String target = "tailwind/lib/utilities/";

/// Get file's path with name
const String file = "tailwind/lib/utilities/TwService.dart";

/// Get file's Raw Contents
const String stub = """
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tailwind/tailwind.dart';

class TwService {
  static GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static Future<ThemeMode> getThemeMode() async => await TwAppBuilder.of(appKey.currentContext!)?.getThemeMode() ?? ThemeMode.system;
  static void setThemeMode(ThemeMode mode) => TwAppBuilder.of(appKey.currentContext!)!.setThemeMode(mode);

  static Future<void> init() async => await GetStorage.init();

  static BuildContext get context => appKey.currentContext!;
}
""";
