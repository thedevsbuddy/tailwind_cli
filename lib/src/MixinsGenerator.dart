import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind.config.dart' as defaultConfig;
import 'package:tailwind_cli/tailwind/lib/mixins/TwAlignmentMixin.dart' as twAlignmentMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwBorderMixin.dart' as twBorderMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwColorMixin.dart' as twColorMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwGestureMixin.dart' as twGestureMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwGradientMixin.dart' as twGradientMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwMarginMixin.dart' as twMarginMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwPaddingMixin.dart' as twPaddingMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwRoundnessMixin.dart' as twRoundnessMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwShadowMixin.dart' as twShadowMixin;
import 'package:tailwind_cli/tailwind/lib/mixins/TwSizeMixin.dart' as twSizeMixin;

Future<void> generate(List<String> args) async {
  await generateColorMixin();
  await generateSpacingMixin();
  await generateAlignmentMixin();
  await generateRoundnessMixin();
  await generateShadowMixin();
  await generateGradientMixin();
  await generateBorderMixin();
  await generateGestureMixin();
  await generateSizeMixin();
}

/// Generate Color Mixin
Future<void> generateColorMixin() async {
  /// Get default config file
  final configFile = File("tailwind.config.json").readAsStringSync();

  /// Decode / Convert default config to map
  final dynamic userConfigs = jsonDecode(configFile);

  /// Initialize base config map
  Map<String, Map<String, dynamic>> configs = {"colors": {}};

  /// Add default config colors in base config
  configs['colors']!.addAll(defaultConfig.colors);

  /// Check and user overrides to colors
  if (userConfigs.containsKey('colors')) {
    configs['colors']!.addAll(userConfigs['colors']);
  }

  /// Get TwColorMixin stub
  var twColorMixinFileData = twColorMixin.stub;

  /// Process stub
  twColorMixinFileData = twColorMixinFileData.replaceAll("%colorGetters%", processColors(configs['colors']));

  /// Check and create
  Utils.makeDir(twColorMixin.target);

  /// Write File
  Utils.writeFile(twColorMixin.file, twColorMixinFileData);

  /// Show Success message
  print(green("Color Mixin Generated successfully."));
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
          color += twColorMixin.colorStub.replaceAll("%colorName%", key);
        } else {
          String colorStubWithShade =
              twColorMixin.colorStubWithShade.replaceAll("%colorName%", key).replaceAll("%colorShade%", k);
          color += colorStubWithShade;
        }
      });

      /// Generates Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            color += twColorMixin.colorStubDark
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorName%", key);
          } else {
            color += twColorMixin.colorStubDarkWithShade
                .replaceAll("%colorName%", key)
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorShade%", k);
          }
        });
      }
    } else if (value is String) {
      color += twColorMixin.colorStub.replaceAll("%colorName%", key);
      if (Utils.configs.darkMode!) {
        color += twColorMixin.colorStubDark
            .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
            .replaceAll("%colorName%", key);
      }
    } else {
      throw new Exception('Invalid value for colors["$key"] in "tailwind.config.json" file');
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
  twPaddingMixinFileData = twPaddingMixinFileData.replaceAll("%paddingGetters%", processPaddings(Utils.configs.spacers));
  twMarginMixinFileData = twMarginMixinFileData.replaceAll("%marginGetters%", processMargins(Utils.configs.spacers));

  /// Check and create
  Utils.makeDir(twPaddingMixin.target);
  Utils.makeDir(twMarginMixin.target);

  /// Write File
  Utils.writeFile(twPaddingMixin.file, twPaddingMixinFileData);
  Utils.writeFile(twMarginMixin.file, twMarginMixinFileData);

  /// Show Success message
  print(green("Padding Mixin Generated successfully."));
  print(green("Margin Mixin Generated successfully."));
}

/// Processes Paddings
String processPaddings(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";

  /// Process All Side Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.allSide.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Horizontal Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.horizontal.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Vertical Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.vertical.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Left Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.left.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Top Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.top.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Right Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.right.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twPaddingMixin.bottom.replaceAll("%spacerValue%", key);
    }
  });

  return spacer;
}

/// Processes Margins
String processMargins(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.allSide.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Horizontal Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.horizontal.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Vertical Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.vertical.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Left Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.left.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Top Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.top.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Right Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.right.replaceAll("%spacerValue%", key);
    }
  });

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += twMarginMixin.bottom.replaceAll("%spacerValue%", key);
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
  print(green("Alignment Mixin generated successfully."));
}

/// Generate Roundness Mixin
Future<void> generateRoundnessMixin() async {
  /// Check and create
  Utils.makeDir(twRoundnessMixin.target);

  /// Write File
  Utils.writeFile(twRoundnessMixin.file, twRoundnessMixin.stub);

  /// Show Success message
  print(green("Roundness Mixin generated successfully."));
}

/// Generate Roundness Mixin
Future<void> generateShadowMixin() async {
  /// Check and create
  Utils.makeDir(twShadowMixin.target);

  /// Write File
  Utils.writeFile(twShadowMixin.file, twShadowMixin.stub);

  /// Show Success message
  print(green("Shadow Mixin generated successfully."));
}

/// Generate Gradient Mixin
Future<void> generateGradientMixin() async {
  /// Get Tw Utility stub Template / File
  var twGradientMixinFileData = twGradientMixin.stub;

  /// Process stub Template / File
  twGradientMixinFileData = twGradientMixinFileData.replaceAll("%gradientColors%", processGradientColors(Utils.configs.colors));

  /// Check and create directory
  Utils.makeDir(twGradientMixin.target);

  /// Write File
  Utils.writeFile(twGradientMixin.file, twGradientMixinFileData);

  /// Show Success message
  print(green("Gradient Mixin Generated successfully."));
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
          color += twGradientMixin.colorStub
              .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
              .replaceAll("%colorName%", key);
        } else {
          color += twGradientMixin.colorStubWithShade
              .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
              .replaceAll("%colorName%", key)
              .replaceAll("%colorShade%", k);
        }
      });

      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            color += twGradientMixin.colorStubDark
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorName%", key);
          } else {
            color += twGradientMixin.colorStubDarkWithShade
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorName%", key)
                .replaceAll("%colorShade%", k);
          }
        });
      }
    } else {
      color += twGradientMixin.colorStub
          .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
          .replaceAll("%colorName%", key);

      if (Utils.configs.darkMode!) {
        color += twGradientMixin.colorStubDark
            .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
            .replaceAll("%colorName%", key);
      }
    }
  });
  return color;
}

/// Generate Border Mixin
Future<void> generateBorderMixin() async {
  /// Get Tw Utility stub Template / File
  var twBorderMixinFileData = twBorderMixin.stub;

  /// Process stub Template / File
  twBorderMixinFileData = twBorderMixinFileData.replaceAll("%colors%", processBorderColors(Utils.configs.colors));
  twBorderMixinFileData = twBorderMixinFileData.replaceAll("%sizes%", processBorderWidths(Utils.configs.spacers));

  /// Check and create
  Utils.makeDir(twBorderMixin.target);

  /// Write File
  Utils.writeFile(twBorderMixin.file, twBorderMixinFileData);

  /// Show Success message
  print(green("Padding Mixin Generated successfully."));
}

/// Processes borderColors
String processBorderColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          color += twBorderMixin.borderColorStub
              .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
              .replaceAll("%colorName%", key);
        } else {
          color += twBorderMixin.borderColorWithShadeStub
              .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
              .replaceAll("%colorName%", key)
              .replaceAll("%colorShade%", k);
        }
      });

      /// Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            color += twBorderMixin.borderColorDarkStub
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorName%", key);
          } else {
            color += twBorderMixin.borderColorDarkWithShadeStub
                .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
                .replaceAll("%colorName%", key)
                .replaceAll("%colorShade%", k);
          }
        });
      }
    } else if (value is String) {
      color += twBorderMixin.borderColorStub
          .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
          .replaceAll("%colorName%", key);

      /// Dark variants
      if (Utils.configs.darkMode!) {
        color += twBorderMixin.borderColorDarkStub
            .replaceAll("%colorNameCamel%", Utils.ucFirst(key, preserveAfter: true))
            .replaceAll("%colorName%", key);
      }
    } else {
      throw new Exception('Invalid value for colors["$key"]');
    }
  });
  return color;
}

/// Processes Paddings
String processBorderWidths(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spacer += """T get borderBase {
    twBorderWidth = TwSizes.spacer; 
    return _child;
  }""";
    } else {
      spacer += """T get border$key {
    twBorderWidth = TwSizes.spacer$key; 
    return _child;
  }""";
    }
  });

  return spacer;
}

/// Generate [TwGestureMixin] Mixin
Future<void> generateGestureMixin() async {
  /// Check and create
  Utils.makeDir(twGestureMixin.target);

  /// Write File
  Utils.writeFile(twGestureMixin.file, twGestureMixin.stub);

  /// Show Success message
  print(green("TwGesture Mixin generated successfully."));
}

/// Generate [TwSizeMixin] Mixin
Future<void> generateSizeMixin() async {
  /// Check and create
  Utils.makeDir(twSizeMixin.target);

  /// Write File
  Utils.writeFile(twSizeMixin.file, twSizeMixin.stub);

  /// Show Success message
  print(green("TwSize Mixin generated successfully."));
}
