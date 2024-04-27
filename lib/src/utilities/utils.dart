import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/config_model.dart';
import 'package:tailwind_cli/tailwind.config.dart' as defaultConfig;

Map<String, dynamic>? baseConfigs = {
  "darkMode": false,
  "colors": null,
  "spacers": null,
  "fontSizes": null,
  "opacity": null,
};

class Utils {
  /// Checks the directory in the provided path
  ///
  /// If it doesn't exists it creates the directory
  static void makeDir(path) {
    if (!exists(path)) {
      createDir(path, recursive: true);
    }
  }

  static ConfigModel configs = ConfigModel();

  static void writeFile(file, content) {
    "$file".write(content);
  }

  /// Merge Default And User config files
  static createConfig() {
    ConfigModel _config = ConfigModel.fromJson(baseConfigs!);

    /// Get default config file
    final configFile = File("tailwind.config.json").readAsStringSync();

    /// Decode / Convert default config to map
    final ConfigModel userConfigs =
        ConfigModel.fromJson(jsonDecode(configFile));

    /// Add default config Colors in base config
    if (_config.colors == null) _config.colors = {};
    _config.colors!.addAll(defaultConfig.colors);

    /// Add default config Spacers in base config
    if (_config.spacers == null) _config.spacers = {};
    _config.spacers!.addAll(defaultConfig.spacers);

    /// Add default config FontSizes in base config
    if (_config.fontSizes == null) _config.fontSizes = {};
    _config.fontSizes!.addAll(defaultConfig.fontSizes);

    /// Add default config Opacity in base config
    if (_config.opacity == null) _config.opacity = {};
    _config.opacity!.addAll(defaultConfig.opacity);

    /// Check and user overrides to colors
    if (userConfigs.colors != null) _config.colors!.addAll(userConfigs.colors!);

    /// Check and user overrides to spacers
    if (userConfigs.spacers != null)
      _config.spacers!.addAll(userConfigs.spacers!);

    /// Check and user overrides to font sizes
    if (userConfigs.fontSizes != null)
      _config.fontSizes!.addAll(userConfigs.fontSizes!);

    /// Check and user overrides to opacity
    if (userConfigs.opacity != null)
      _config.opacity!.addAll(userConfigs.opacity!);

    /// Check if user overrides dark mode
    _config.darkMode = userConfigs.darkMode;

    /// Assign the config to the the exposed config variable
    configs = _config;
  }

  /// To publish in Tw Utility ///

  /// Convert Hex Color To Dart [int] Color
  static String hexToColor(String code) {
    if (code.startsWith("0x")) {
      return "0x" + code.substring(2, 10).toUpperCase();
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

  /// Check if string contains provided character or word
  static String replaceAll(String text, dynamic needle) {
    return text.replaceAll('.', needle);
  }
}
