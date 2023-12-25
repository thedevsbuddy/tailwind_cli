import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwButton.dart' as twButton;
import 'package:tailwind_cli/tailwind/lib/builders/TwColumn.dart' as twColumn;
import 'package:tailwind_cli/tailwind/lib/builders/TwContainer.dart'
    as twContainer;
import 'package:tailwind_cli/tailwind/lib/builders/TwImage.dart' as twImage;
import 'package:tailwind_cli/tailwind/lib/builders/TwPadding.dart' as twPadding;
import 'package:tailwind_cli/tailwind/lib/builders/TwRow.dart' as twRow;
import 'package:tailwind_cli/tailwind/lib/builders/TwStack.dart' as twStack;
import 'package:tailwind_cli/tailwind/lib/builders/TwWrap.dart' as twWrap;
import 'package:tailwind_cli/tailwind/lib/builders/TwInkwell.dart' as twInkWell;

// Builder Generators
import "BuilderGenerators/TwBuilderGenerator.dart" as twBuilderGenerator;

Future<void> generate(_) async {
  await twBuilderGenerator.generate(_);
  await generateTwContainer();
  await generateTwButton();
  await generateTwRow();
  await generateTwColumn();
  await generateTwWrap();
  await generateTwPadding();
  await generateTwStack();
  await generateTwInkWell();
  await generateTwImage();
}

/// Generate [TwRow]
Future<void> generateTwRow() async {
  /// Check and create
  Utils.makeDir(twRow.target);

  /// Write File
  Utils.writeFile(twRow.file, twRow.stub);

  /// Show Success message
  print(green("Tailwind Row generated successfully!"));
}

/// Generate [TwColumn]
Future<void> generateTwColumn() async {
  /// Check and create
  Utils.makeDir(twColumn.target);

  /// Write File
  Utils.writeFile(twColumn.file, twColumn.stub);

  /// Show Success message
  print(green("Tailwind Column generated successfully!"));
}

/// Generate [TwWrap]
Future<void> generateTwWrap() async {
  /// Check and create
  Utils.makeDir(twWrap.target);

  /// Write File
  Utils.writeFile(twWrap.file, twWrap.stub);

  /// Show Success message
  print(green("Tailwind Wrap generated successfully!"));
}

/// Generate [TwContainer]
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

/// Generate [TwButton]
Future<void> generateTwButton() async {
  /// Check and create
  Utils.makeDir(twButton.target);

  /// Write File
  Utils.writeFile(twButton.file, twButton.stub);

  /// Show Success message
  print(green("TwButton generated successfully!"));
}

/// Generate [TwPadding]
Future<void> generateTwPadding() async {
  /// Check and create
  Utils.makeDir(twPadding.target);

  /// Write File
  Utils.writeFile(twPadding.file, twPadding.stub);

  /// Show Success message
  print(green("TwPadding generated successfully!"));
}

/// Generate [TwStack]
Future<void> generateTwStack() async {
  /// Check and create
  Utils.makeDir(twStack.target);

  /// Write File
  Utils.writeFile(twStack.file, twStack.stub);

  /// Show Success message
  print(green("TwStack generated successfully!"));
}

/// Generate [TwInkWell]
Future<void> generateTwInkWell() async {
  /// Check and create
  Utils.makeDir(twInkWell.target);

  /// Write File
  Utils.writeFile(twInkWell.file, twInkWell.stub);

  /// Show Success message
  print(green("TwInkWell generated successfully!"));
}

/// Generate [TwImage]
Future<void> generateTwImage() async {
  /// Get Tw Utility stub Template / File
  var twImageData = twImage.stub;

  /// Process stub Template / File
  twImageData = twImageData.replaceAll(
      "%opacity%", processOpacity(Utils.configs.opacity));

  /// Check and create
  Utils.makeDir(twImage.target);

  /// Write File
  Utils.writeFile(twImage.file, twImageData);

  /// Show Success message
  print(green("TwImage generated successfully!"));
}

String processOpacity(Map<String, dynamic>? opacity) {
  if (opacity == null) {
    return "";
  }
  var op = "";
  opacity.forEach((key, value) {
    if (value != '' || key != '') {
      op +=
          "TwImage get o$key => this.._opacity = AlwaysStoppedAnimation($value);\n\t";
      op +=
          "TwImage get opacity$key => this.._opacity = AlwaysStoppedAnimation($value);\n\t\n\t";
    }
  });
  return op;
}

// TwImage get o20 => this.._opacity = AlwaysStoppedAnimation(.5);
// TwImage get opacity20 => this.._opacity = AlwaysStoppedAnimation(.5);
