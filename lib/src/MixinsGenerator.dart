import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind.config.dart' as defaultConfig;
import 'package:tailwind_cli/tailwind/lib/mixins/AlignmentMixin.dart' as twAlignmentMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/ColorMixin.dart' as twColorMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/GradientMixin.dart' as twGradientMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/MarginMixin.dart' as twMarginMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/PaddingMixin.dart' as twPaddingMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/RoundnessMixin.dart' as twRoundnessMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/ShadowMixin.dart' as twShadowMixin;

Future<void> generate(List<String> args) async {
  await generateColorMixin();
  await generateSpacingMixin();
  await generateAlignmentMixin();
  await generateRoundnessMixin();
  await generateShadowMixin();
  await generateGradientMixin();
}

/// Generate Color Mixin
Future<void> generateColorMixin() async {
  /// Get default config file
  final configFile = File("tailwind.config.json").readAsStringSync();

  /// Decode / Convert default config to map
  final dynamic userConfigs = jsonDecode(configFile)['extends'];

  /// Initialize base config map
  Map<String, Map<String, dynamic>> configs = {"colors": {}};

  /// Add default config colors in base config
  configs['colors']!.addAll(defaultConfig.colors);

  /// Check and user overrides to colors
  if (userConfigs.containsKey('colors')) {
    configs['colors']!.addAll(userConfigs['colors']);
  }

  /// Get Tw Utility stub Template / File
  var twColorMixinFileData = twColorMixin.stub;

  /// Process stub Template / File
  twColorMixinFileData = twColorMixinFileData.replaceAll("//colorGetters", processColors(configs['colors']));

  /// Check and create
  Utils.makeDir(twColorMixin.target);

  /// Write File
  Utils.writeFile(twColorMixin.file, twColorMixinFileData);

  /// Show Success message
  print(green("Color Mixin Generated successfully!"));
}

/// Processes colors
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
          color += """T get $key {
      twColor = Tw.$key;
      return _child;
  }\n\t""";
        } else {
          val = Utils.hexToColor("$val");
          color += """T get $key$k {
      twColor = Tw.$key$k;
      return _child;
  }\n\t""";
        }
      });
    } else {
      value = Utils.hexToColor("$value");
      color += """T get $key {
      twColor = Tw.$key;
      return _child;
  }\n\t""";
    }
  });
  return color;
}

/// Generate Padding & Margin Mixin
Future<void> generateSpacingMixin() async {
  /// Get Tw Utility stub Template / File
  var twPaddingMixinFileData = twPaddingMixin.stub;
  var twMarginMixinFileData = twMarginMixin.stub;

  /// Process stub Template / File
  twPaddingMixinFileData = twPaddingMixinFileData.replaceAll("//paddingGetters", processPaddings(Utils.mergedConfigs()['spacers']));
  twMarginMixinFileData = twMarginMixinFileData.replaceAll("//marginGetters", processMargins(Utils.mergedConfigs()['spacers']));

  /// Check and create
  Utils.makeDir(twPaddingMixin.target);
  Utils.makeDir(twMarginMixin.target);

  /// Write File
  Utils.writeFile(twPaddingMixin.file, twPaddingMixinFileData);
  Utils.writeFile(twMarginMixin.file, twMarginMixinFileData);

  /// Show Success message
  print(green("Padding Mixin Generated successfully!"));
  print(green("Margin Mixin Generated successfully!"));
}

/// Processes Paddings
String processPaddings(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";
  spacer += "/// All Side Padding\n\t";

  /// Process All Side Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get p$key {
    paddingLeft = Tw.spacer$key;
    paddingTop = Tw.spacer$key;
    paddingRight = Tw.spacer$key;
    paddingBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Padding\n\t";

  /// Process Horizontal Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get px$key {
    paddingLeft = Tw.spacer$key;
    paddingRight = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Padding\n\t";

  /// Process Vertical Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get py$key {
    paddingTop = Tw.spacer$key;
    paddingBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Padding\n\t";

  /// Process Left Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pl$key {
    paddingLeft = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Top Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pt$key {
    paddingTop = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Right Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pr$key {
    paddingRight = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pb$key {
    paddingBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  return spacer;
}

/// Processes Paddings
String processMargins(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";
  spacer += "/// All Side Margin\n\t";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get m$key {
    marginLeft = Tw.spacer$key;
    marginTop = Tw.spacer$key;
    marginRight = Tw.spacer$key;
    marginBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Margin\n\t";

  /// Process Horizontal Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mx$key {
    marginLeft = Tw.spacer$key;
    marginRight = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Margin\n\t";

  /// Process Vertical Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get my$key {
    marginTop = Tw.spacer$key;
    marginBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Margin\n\t";

  /// Process Left Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get ml$key {
    marginLeft = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Top Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mt$key {
    marginTop = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Right Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mr$key {
    marginRight = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mb$key {
    marginBottom = Tw.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  return spacer;
}

/// Generate Alignment Mixin
Future<void> generateAlignmentMixin() async {
  /// Check and create
  Utils.makeDir(twAlignmentMixin.target);

  /// Write File
  Utils.writeFile(twAlignmentMixin.file, twAlignmentMixin.stub);

  /// Show Success message
  print(green("Alignment Mixin generated successfully!"));
}

/// Generate Roundness Mixin
Future<void> generateRoundnessMixin() async {
  /// Check and create
  Utils.makeDir(twRoundnessMixin.target);

  /// Write File
  Utils.writeFile(twRoundnessMixin.file, twRoundnessMixin.stub);

  /// Show Success message
  print(green("Roundness Mixin generated successfully!"));
}

/// Generate Roundness Mixin
Future<void> generateShadowMixin() async {
  /// Check and create
  Utils.makeDir(twShadowMixin.target);

  /// Write File
  Utils.writeFile(twShadowMixin.file, twShadowMixin.stub);

  /// Show Success message
  print(green("Shadow Mixin generated successfully!"));
}

/// Generate Gradient Mixin
Future<void> generateGradientMixin() async {
  /// Get Tw Utility stub Template / File
  var twGradientMixinFileData = twGradientMixin.stub;

  /// Process stub Template / File
  twGradientMixinFileData = twGradientMixinFileData.replaceAll("//gradientColors", processGradientColors(Utils.mergedConfigs()['colors']));

  /// Check and create directory
  Utils.makeDir(twGradientMixin.target);

  /// Write File
  Utils.writeFile(twGradientMixin.file, twGradientMixinFileData);

  /// Show Success message
  print(green("Gradient Mixin Generated successfully!"));
}

/// Processes colors
String processGradientColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      gradientColors[0] = Tw.$key;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      gradientColors[1] = Tw.$key;
      return _child;
  }\n\t""";
        } else {
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)}$k {
      gradientColors[0] = Tw.$key$k;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)}$k {
      gradientColors[1] = Tw.$key$k;
      return _child;
  }\n\t""";
        }
      });
    } else {
      color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      gradientColors[0] = Tw.$key;
      return _child;
  }\n\t""";
      color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      gradientColors[1] = Tw.$key;
      return _child;
  }\n\t""";
    }
  });
  return color;
}
