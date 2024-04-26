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
          color += twColorMixin.colorStub.replaceAll("%colorKey%", key);
        } else {
          String colorStubWithShade = twColorMixin.colorStubWithShade.replaceAll("%colorKey%", key);
          colorStubWithShade = colorStubWithShade.replaceAll("%colorShade%", k);
          color += colorStubWithShade;
        }
      });

      /// Generates Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            val = Utils.hexToColor("$val");
            color += """T get onDark${Utils.ucFirst(key, preserveAfter: true)} {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         twColor = TwColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            val = Utils.hexToColor("$val");
            color += """T get onDark${Utils.ucFirst(key, preserveAfter: true)}$k {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else if (value is String) {
      value = Utils.hexToColor("$value");
      color += """T get $key {
      if(!_needsDarkVariant) twColor = TwColors.$key;
      return _child;
  }\n\t""";

      if (Utils.configs.darkMode!) {
        color += """T get onDark${Utils.ucFirst(key, preserveAfter: true)} {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        twColor = TwColors.$key;
      }
      return _child;
  }\n\t""";
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
  spacer += "/// All Side Padding\n\t";

  /// Process All Side Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get p$key {
    paddingLeft = TwSizes.spacer$key;
    paddingTop = TwSizes.spacer$key;
    paddingRight = TwSizes.spacer$key;
    paddingBottom = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Padding\n\t";

  /// Process Horizontal Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get px$key {
    paddingLeft = TwSizes.spacer$key;
    paddingRight = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Padding\n\t";

  /// Process Vertical Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get py$key {
    paddingTop = TwSizes.spacer$key;
    paddingBottom = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Padding\n\t";

  /// Process Left Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pl$key {
    paddingLeft = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Top Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pt$key {
    paddingTop = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Right Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pr$key {
    paddingRight = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pb$key {
    paddingBottom = TwSizes.spacer$key;
    return _child;
  }\n\t""";
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
  spacer += "/// All Side Margin\n\t";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get m$key {
    marginLeft = TwSizes.spacer$key;
    marginTop = TwSizes.spacer$key;
    marginRight = TwSizes.spacer$key;
    marginBottom = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Margin\n\t";

  /// Process Horizontal Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mx$key {
    marginLeft = TwSizes.spacer$key;
    marginRight = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Margin\n\t";

  /// Process Vertical Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get my$key {
    marginTop = TwSizes.spacer$key;
    marginBottom = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Margin\n\t";

  /// Process Left Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get ml$key {
    marginLeft = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Top Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mt$key {
    marginTop = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Right Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mr$key {
    marginRight = TwSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mb$key {
    marginBottom = TwSizes.spacer$key;
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
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.$key;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.$key;
      return _child;
  }\n\t""";
        } else {
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.$key.shade$k;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.$key.shade$k;
      return _child;
  }\n\t""";
        }
      });

      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            color += """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.$key;
      }
      return _child;
  }\n\t""";
            color += """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            color += """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
            color += """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else {
      color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[0] = TwColors.$key;
      return _child;
  }\n\t""";
      color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[1] = TwColors.$key;
      return _child;
  }\n\t""";

      if (Utils.configs.darkMode!) {
        color += """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = TwColors.$key;
      }
      return _child;
  }\n\t""";
        color += """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = TwColors.$key;
      }
      return _child;
  }\n\t""";
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
          val = Utils.hexToColor("$val");
          color += """T get border${Utils.ucFirst(key, preserveAfter: true)} {
      if(!_needsDarkVariant) twBorderColor = TwColors.$key;
      return _child;
  }\n\t""";
        } else {
          val = Utils.hexToColor("$val");
          color += """T get border${Utils.ucFirst(key, preserveAfter: true)}$k {
      if(!_needsDarkVariant) twBorderColor = TwColors.$key.shade$k;
      return _child;
  }\n\t""";
        }
      });

      /// Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            val = Utils.hexToColor("$val");
            color += """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        twBorderColor = TwColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            val = Utils.hexToColor("$val");
            color += """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)}$k {
       if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        twBorderColor = TwColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else if (value is String) {
      value = Utils.hexToColor("$value");
      color += """T get border${Utils.ucFirst(key, preserveAfter: true)} {
      if(!_needsDarkVariant) twBorderColor = TwColors.$key;
      return _child;
  }\n\t""";

      /// Dark variants
      if (Utils.configs.darkMode!) {
        value = Utils.hexToColor("$value");
        color += """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        twBorderColor = TwColors.$key;
      }
      return _child;
  }\n\t""";
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
  }\n\t""";
    } else {
      spacer += """T get border$key {
    twBorderWidth = TwSizes.spacer$key; 
    return _child;
  }\n\t""";
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
