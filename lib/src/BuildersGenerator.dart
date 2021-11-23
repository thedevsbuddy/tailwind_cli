import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwBuilder.dart' as twBuilder;
import 'package:tailwind_cli/tailwind/lib/builders/TwText.dart' as twText;

Future<void> generate(List<String> args) async {
  await generateTwBuilder();
  await generateTwText();
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

/// Generate TwText
Future<void> generateTwText() async {
  /// Get Tw Utility stub Template / File
  var twTextFileData = twText.stub;

  /// Process stub Template / File
  twTextFileData = twTextFileData.replaceAll("//fontSizes", processFontSizes(Utils.mergedConfigs()['fontSizes']));

  /// Check and create
  Utils.makeDir(twText.target);

  /// Write File
  Utils.writeFile(twText.file, twTextFileData);

  /// Show Success message
  print(green("TwText Generated successfully!"));
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += """TwText get textBase => this.._fontSize = Tw.text${key[0].toUpperCase()}${key.substring(1, key.length)};\n\t""";
    } else {
      fontSize +=
          """TwText get text${key[0].toUpperCase()}${key.substring(1, key.length)} => this.._fontSize = Tw.text${key[0].toUpperCase()}${key.substring(1, key.length)};\n\t""";
    }
  });

  return fontSize;
}
