import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/utilities/TwColors.dart' as utilityTwColors;
import 'package:tailwind_cli/tailwind/lib/utilities/TwSizes.dart' as utilityTwSizes;
import 'package:tailwind_cli/tailwind/lib/utilities/TwUtils.dart' as utilityTwUtils;

Future<void> generate(List<String> args) async {
  await generateTwColorsUtility();
  await generateTwUtilsUtility();
  await generateTwSpacersUtility();
}

Future<void> generateTwUtilsUtility() async {
  /// Get Tw Utility stub Template / File
  var utilityTwFile = utilityTwUtils.stub;

  /// Process stub Template / File
  utilityTwFile = processStub(stub: utilityTwFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityTwUtils.target);

  /// Write File
  Utils.writeFile(utilityTwUtils.file, utilityTwFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

Future<void> generateTwColorsUtility() async {
  /// Get Tw Utility stub Template / File
  var colorsUtilityTwFile = utilityTwColors.stub;

  /// Process stub Template / File
  colorsUtilityTwFile = processStub(stub: colorsUtilityTwFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityTwColors.target);

  /// Write File
  Utils.writeFile(utilityTwColors.file, colorsUtilityTwFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

Future<void> generateTwSpacersUtility() async {
  /// Get Tw Utility stub Template / File
  var spacerUtilityTwFile = utilityTwSizes.stub;

  /// Process stub Template / File
  spacerUtilityTwFile = processStub(stub: spacerUtilityTwFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityTwSizes.target);

  /// Write File
  Utils.writeFile(utilityTwSizes.file, spacerUtilityTwFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

String processStub({required String stub, dynamic data}) {
  stub = stub.replaceAll("//spacers", processSpacers(data.spacers));
  stub = stub.replaceAll("//colors", processColors(data.colors));
  stub = stub.replaceAll("//fontSizes", processFontSizes(data.fontSizes));

  return stub;
}

String processSpacers(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spaces = "";
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spaces += """/// Returns [spacer] where spacer is base size
  ///
  /// ```dart
  /// double spacer = $value;
  /// returns spacer;
  /// ```
  ///\n\t""";
      spaces += "static const double spacer = $value;\n\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', '_');
      spaces += """/// Returns [spacer * $value] where spacer is base size
  ///
  /// ```dart
  /// double spacer = ${spacers['DEFAULT']};
  /// returns 16 * $value = ${16 * num.parse(value)};
  /// ```
  ///\n\t""";
      spaces += "static const double spacer$dot = spacer * $value;\n\n\t";
    } else {
      spaces += """/// Returns [spacer * $value] where spacer is base size
  ///
  /// ```dart
  /// double spacer = ${spacers['DEFAULT']};
  /// returns 16 * $value = ${16 * num.parse(value)};
  /// ```
  ///\n\t""";
      spaces += "static const double spacer$key = spacer * $value;\n\n\t";
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
      color += "static const MaterialColor $key = MaterialColor(";
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += "$val, <int, Color>{\n\t\t";
        } else {
          val = Utils.hexToColor("$val");
          color += "$k: Color($val),\n\t\t";
        }
      });
      color += "});\n\n";
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
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize += "static const double text${dot[0].toUpperCase()}${dot.substring(1)}  = textBase * $value;\n\t";
    } else {
      fontSize += "static const double text${key[0].toUpperCase()}${key.substring(1)} = textBase * $value;\n\t";
    }
  });
  return fontSize;
}

String processFontSizeUtilities(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += "static const double textBase = $value;\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize += "static const double text${dot[0].toUpperCase()}${dot.substring(1)}  = textBase * $value;\n\t";
    } else {
      fontSize += "static const double text${key[0].toUpperCase()}${key.substring(1)} = textBase * $value;\n\t";
    }
    // if (key == 'DEFAULT') {
    //   spaces += "static const double spacer = $value;\n\t";
    // } else if (key.contains('.')) {
    //   var dot = key.replaceAll('.', '_');
    //   spaces += "static const double spacer$dot = spacer * $value;\n\t";
    // } else {
    //   spaces += "static const double spacer$key = spacer * $value;\n\t";
    // }
  });

  return fontSize;
}
