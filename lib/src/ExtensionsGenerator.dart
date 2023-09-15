import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/extensions/TwColorExtension.dart' as twColorExtension;
import 'package:tailwind_cli/tailwind/lib/extensions/TwContextExtension.dart' as twContextExtension;
import 'package:tailwind_cli/tailwind/lib/extensions/TwNumbersExtension.dart' as twNumbersExtension;
import 'package:tailwind_cli/tailwind/lib/extensions/TwWidgetExtension.dart' as twWidgetExtension;

Future<void> generate(List<String> args) async {
  await generateTwColorExtension();
  await generateTwNumbersExtension();
  await generateTwWidgetExtension();
  await generateTwContextExtension();
}

/// Generate [TwStringExtension]
Future<void> generateTwColorExtension() async {
  /// Get Tw Utility stub Template / File
  var twColorExtensionData = twColorExtension.stub;

  /// Process stub Template / File
  twColorExtensionData = twColorExtensionData.replaceAll("//opacity", processOpacity(Utils.configs.opacity));

  /// Check and create
  Utils.makeDir(twColorExtension.target);

  /// Write File
  Utils.writeFile(twColorExtension.file, twColorExtensionData);

  /// Show Success message
  print(green("Tailwind Color Extension generated successfully!"));
}

String processOpacity(Map<String, dynamic>? opacity) {
  if (opacity == null) {
    return "";
  }
  var op = "";
  opacity.forEach((key, value) {
    if (value != '' || key != '') {
      op += "Color get o$key => this.withOpacity($value);\n\t";
      op += "Color get opacity$key => this.withOpacity($value);\n\t\n\t";
    }
  });
  return op;
}

/// Generate [TwWidgetExtension]
Future<void> generateTwWidgetExtension() async {
  /// Check and create
  Utils.makeDir(twWidgetExtension.target);

  /// Write File
  Utils.writeFile(twWidgetExtension.file, twWidgetExtension.stub);

  /// Show Success message
  print(green("Tailwind Widget Extension generated successfully!"));
}

/// Generate [TwNumbersExtension]
Future<void> generateTwNumbersExtension() async {
  /// Check and create
  Utils.makeDir(twNumbersExtension.target);

  /// Write File
  Utils.writeFile(twNumbersExtension.file, twNumbersExtension.stub);

  /// Show Success message
  print(green("Tailwind Widget Extension generated successfully!"));
}

/// Generate [TwNumbersExtension]
Future<void> generateTwContextExtension() async {
  /// Check and create
  Utils.makeDir(twContextExtension.target);

  /// Write File
  Utils.writeFile(twContextExtension.file, twContextExtension.stub);

  /// Show Success message
  print(green("Tailwind Context Extension generated successfully!"));
}
