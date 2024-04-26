import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwPadding.dart' as twPadding;

/// Generate [TwPadding]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twPadding.target);

  /// Write File
  Utils.writeFile(twPadding.file, twPadding.stub);

  /// Show Success message
  print(green("TwPadding generated successfully."));
}
