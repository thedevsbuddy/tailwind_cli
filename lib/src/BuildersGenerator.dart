import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwBuilder.dart' as twBuilder;
import 'package:tailwind_cli/tailwind/lib/builders/TwTextBuilder.dart' as twTextBuilder;

Future<void> generate(List<String> args) async {
  await generateTwBuilder();
  await generateTwTextBuilder();
}

/// Generate TwBuilder
Future<void> generateTwBuilder() async {
  /// Check and create
  Utils.makeDir(twBuilder.target);

  /// Write File
  Utils.writeFile(twBuilder.file, twBuilder.stub);

  /// Show Success message
  print(green("Tailwind builder generated successfully!"));
}

/// Generate TwTextBuilder
Future<void> generateTwTextBuilder() async {
  /// Get Tw Utility stub Template / File
  var twTextBuilderFileData = twTextBuilder.stub;

  /// Process stub Template / File
  twTextBuilderFileData = twTextBuilderFileData.replaceAll("//fontSizes", processFontSizes(Utils.mergedConfigs()['fontSizes']));

  /// Check and create
  Utils.makeDir(twTextBuilder.target);

  /// Write File
  Utils.writeFile(twTextBuilder.file, twTextBuilderFileData);

  /// Show Success message
  print(green("Tailwind TextBuilder Generated successfully!"));
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += """TwTextBuilder get textBase => this.._fontSize = Tw.text${key[0].toUpperCase()}${key.substring(1, key.length)};\n\t""";
    } else {
      fontSize +=
          """TwTextBuilder get text${key[0].toUpperCase()}${key.substring(1, key.length)} => this.._fontSize = Tw.text${key[0].toUpperCase()}${key.substring(1, key.length)};\n\t""";
    }
  });

  return fontSize;
}
