import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/tailwind.config.dart' as defaultConfig;

Map<String, Map<String, dynamic>> baseConfigs = {
  "colors": {},
  "spacers": {},
  "fontSizes": {},
};

class Utils {
  static void makeDir(path) {
    if (!exists(path)) {
      createDir(path, recursive: true);
    }
  }

  static void writeFile(file, content) {
    "$file".write(content);
  }

  /// Merge Default And User config files
  static Map<String, Map<String, dynamic>> mergedConfigs() {
    /// Get default config file
    final configFile = File("tailwind.config.json").readAsStringSync();

    /// Decode / Convert default config to map
    final dynamic userConfigs = jsonDecode(configFile)['extends'];

    /// Add default config Colors in base config
    baseConfigs['colors']!.addAll(defaultConfig.colors);

    /// Add default config Spacers in base config
    baseConfigs['spacers']!.addAll(defaultConfig.spacers);

    /// Add default config FontSizes in base config
    baseConfigs['fontSizes']!.addAll(defaultConfig.fontSizes);

    /// Check and user overrides to colors
    if (userConfigs.containsKey('colors')) {
      baseConfigs['colors']!.addAll(userConfigs['colors']);
    }

    /// Check and user overrides to spacers
    if (userConfigs.containsKey('spacers')) {
      baseConfigs['spacers']!.addAll(userConfigs['spacers']);
    }

    /// Check and user overrides to font sizes
    if (userConfigs.containsKey('fontSizes')) {
      baseConfigs['fontSizes']!.addAll(userConfigs['fontSizes']);
    }

    return baseConfigs;
  }

  /// To publish in Tw Utility ///

  /// Convert Hex Color To Dart [int] Color
  static String hexToColor(String code) {
    if (code.startsWith("0x")) {
      return "0xFF" + code.substring(4, 10).toUpperCase();
    } else if (code.startsWith("#")) {
      return "0xFF" + code.substring(1, 7).toUpperCase();
    }
    return "0xFF" + code.toUpperCase();
  }

  /// Get Color in [int]
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    hexColor = hexColor.replaceAll('0X', '');
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  /// Convert String to have first letter in caps
  static String ucFirst(String text, {bool preserveAfter = false}) {
    if (preserveAfter) {
      return text.trim()[0].toUpperCase() + text.substring(1);
    }
    return text.trim()[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  /// Convert String to each word's first letter caps
  static String ucWords(String text) {
    return text.trim().split(' ').map((e) => ucFirst(e)).join(' ');
  }
}
