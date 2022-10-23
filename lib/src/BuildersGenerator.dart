import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwBuilder.dart' as twBuilder;
import 'package:tailwind_cli/tailwind/lib/builders/TwButton.dart' as twButton;
import 'package:tailwind_cli/tailwind/lib/builders/TwColumn.dart' as twColumn;
import 'package:tailwind_cli/tailwind/lib/builders/TwContainer.dart' as twContainer;
import 'package:tailwind_cli/tailwind/lib/builders/TwPadding.dart' as twPadding;
import 'package:tailwind_cli/tailwind/lib/builders/TwRow.dart' as twRow;
import 'package:tailwind_cli/tailwind/lib/builders/TwStack.dart' as twStack;
import 'package:tailwind_cli/tailwind/lib/builders/TwText.dart' as twText;
import 'package:tailwind_cli/tailwind/lib/builders/TwWrap.dart' as twWrap;

Future<void> generate(List<String> args) async {
  await generateTwBuilder();
  await generateTwText();
  await generateTwContainer();
  await generateTwButton();
  await generateTwRow();
  await generateTwColumn();
  await generateTwWrap();
  await generateTwPadding();
  await generateTwStack();
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

/// Generate TwRow
Future<void> generateTwRow() async {
  /// Check and create
  Utils.makeDir(twRow.target);

  /// Write File
  Utils.writeFile(twRow.file, twRow.stub);

  /// Show Success message
  print(green("Tailwind Row generated successfully!"));
}

/// Generate TwRow
Future<void> generateTwColumn() async {
  /// Check and create
  Utils.makeDir(twColumn.target);

  /// Write File
  Utils.writeFile(twColumn.file, twColumn.stub);

  /// Show Success message
  print(green("Tailwind Column generated successfully!"));
}

/// Generate TwWrap
Future<void> generateTwWrap() async {
  /// Check and create
  Utils.makeDir(twWrap.target);

  /// Write File
  Utils.writeFile(twWrap.file, twWrap.stub);

  /// Show Success message
  print(green("Tailwind Wrap generated successfully!"));
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
      fontSize += """TwText get textBase => this.._fontSize = TwSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize += """TwText get text${dot[0].toUpperCase()}${dot.substring(1)} => this.._fontSize = TwSizes.text${dot[0].toUpperCase()}${dot.substring(1)};\n\t""";
    } else {
      fontSize += """TwText get text${key[0].toUpperCase()}${key.substring(1)} => this.._fontSize = TwSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    }
  });

  return fontSize;
}

/// Generate TwContainer
Future<void> generateTwContainer() async {
  /// Get Tw Utility stub Template / File
  var twContainerFileData = twContainer.stub;

  /// Check and create
  Utils.makeDir(twContainer.target);

  /// Write File
  Utils.writeFile(twContainer.file, twContainerFileData);

  /// Show Success message
  print(green("TwContainer Generated successfully!"));
}

/// Generate TwButton
Future<void> generateTwButton() async {
  /// Check and create
  Utils.makeDir(twButton.target);

  /// Write File
  Utils.writeFile(twButton.file, twButton.stub);

  /// Show Success message
  print(green("TwButton generated successfully!"));
}

/// Generate TwPadding
Future<void> generateTwPadding() async {
  /// Check and create
  Utils.makeDir(twPadding.target);

  /// Write File
  Utils.writeFile(twPadding.file, twPadding.stub);

  /// Show Success message
  print(green("TwPadding generated successfully!"));
}

/// Generate TwStack
Future<void> generateTwStack() async {
  /// Check and create
  Utils.makeDir(twStack.target);

  /// Write File
  Utils.writeFile(twStack.file, twStack.stub);

  /// Show Success message
  print(green("TwStack generated successfully!"));
}
