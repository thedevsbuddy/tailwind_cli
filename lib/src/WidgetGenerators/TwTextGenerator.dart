import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwText.dart' as twText;

/// Generate [TwText]
Future<void> generate(_) async {
  /// Get Tw Utility stub Template / File
  var twTextFileData = twText.stub;

  /// Process stub Template / File
  twTextFileData = twTextFileData.replaceAll(
      "%fontSizes%", processFontSizes(Utils.configs.fontSizes));

  /// Check and create
  Utils.makeDir(twText.target);

  /// Write File
  Utils.writeFile(twText.file, twTextFileData);

  /// Show Success message
  print(green("TwText Generated successfully."));
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize +=
          """TwText get textBase => this.._fontSize = TwSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize +=
          """TwText get text${dot[0].toUpperCase()}${dot.substring(1)} => this.._fontSize = TwSizes.text${dot[0].toUpperCase()}${dot.substring(1)};\n\t""";
    } else {
      fontSize +=
          """TwText get text${key[0].toUpperCase()}${key.substring(1)} => this.._fontSize = TwSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    }
  });

  return fontSize;
}
