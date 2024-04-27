import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwButton.dart' as twButton;

/// Generate [TwButton]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twButton.target);

  /// Write File
  Utils.writeFile(twButton.file, twButton.stub);

  /// Show Success message
  print(green("TwButton generated successfully."));
}
