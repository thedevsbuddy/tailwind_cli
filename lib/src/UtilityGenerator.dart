import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind.config.dart' as defaultConfig;
import 'package:tailwind_cli/tailwind/lib/utilities/Tw.dart' as utilityTw;

/// Initialize base config map
Map<String, Map<String, dynamic>> baseConfigs = {
  "colors": {},
  "spacers": {},
  "fontSizes": {},
};

Future<void> generate(List<String> args) async {
  /// Get Tw Utility stub Template / File
  var utilityTwFile = utilityTw.stub;

  /// Process stub Template / File
  utilityTwFile = processStub(stub: utilityTwFile, data: mergedConfigs());

  /// Check and create
  Utils.makeDir(utilityTw.target);

  /// Write File
  Utils.writeFile(utilityTw.file, utilityTwFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

Map<String, Map<String, dynamic>> mergedConfigs() {
  /// Get default config file
  final configFile = File("tailwind.config.json").readAsStringSync();

  /// Decode / Convert default config to map
  final dynamic userConfigs = jsonDecode(configFile)['extends'];

  /// Add default config colors in base config
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

String processStub({required String stub, dynamic data}) {
  stub = stub.replaceAll("//spacers", processSpacers(data['spacers']));
  stub = stub.replaceAll("//colors", processColors(data['colors']));
  stub = stub.replaceAll("//fontSizes", processFontSizes(data['fontSizes']));

  return stub;
}

String processSpacers(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spaces = "";
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spaces += "static const double spacer = $value;\n\t";
    } else {
      spaces += "static const double spacer$key = spacer * $value;\n\t";
    }
  });

  return spaces;
}

String processColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += "static const Color $key = Color($val);\n\t";
        } else {
          val = Utils.hexToColor("$val");
          color += "static const Color $key$k = Color($val);\n\t";
        }
      });
    } else {
      value = Utils.hexToColor("$value");
      color += "static const Color $key = Color($value);\n\t";
    }
  });
  return color;
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += "static const double textBase = $value;\n\t";
    } else {
      fontSize += "static const double text${key[0].toUpperCase()}${key.substring(1, key.length)} = textBase * $value;\n\t";
    }
  });
  return fontSize;
}
