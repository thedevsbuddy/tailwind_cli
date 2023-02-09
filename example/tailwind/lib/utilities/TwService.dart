import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tailwind/tailwind.dart';

class TwService {
  static GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static Future<ThemeMode> getThemeMode() async => await TwAppBuilder.of(appKey.currentContext!)!.getThemeMode();
  static void setThemeMode(String mode) => TwAppBuilder.of(appKey.currentContext!)!.setThemeMode(mode);

  static Future<void> init() async => await GetStorage.init();
}

