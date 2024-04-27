import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwStack.dart' as twStack;

/// Generate [TwStack]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twStack.target);

  /// Write File
  Utils.writeFile(twStack.file, twStack.stub);

  /// Show Success message
  print(green("TwStack generated successfully."));
}
