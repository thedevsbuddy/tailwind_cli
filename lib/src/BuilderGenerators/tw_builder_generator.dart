import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwAppBuilder.dart'
    as twAppBuilder;
import 'package:tailwind_cli/tailwind/lib/builders/TwBuilder.dart' as twBuilder;

Future<void> generate(_) async {
  await generateTwBuilder();
  await generateTwAppBuilder();
}

/// Generate [TwBuilder]
Future<void> generateTwBuilder() async {
  /// Check and create
  Utils.makeDir(twBuilder.target);

  /// Write File
  Utils.writeFile(twBuilder.file, twBuilder.stub);

  /// Show Success message
  print(green("Tailwind builder generated successfully."));
}

/// Generate [TwAppBuilder]
Future<void> generateTwAppBuilder() async {
  /// Check and create
  Utils.makeDir(twAppBuilder.target);

  /// Write File
  Utils.writeFile(twAppBuilder.file, twAppBuilder.stub);

  /// Show Success message
  print(green("TwAppBuilder generated successfully."));
}
