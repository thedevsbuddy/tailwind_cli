import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwRow.dart' as twRow;

/// Generate [TwRow]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twRow.target);

  /// Write File
  Utils.writeFile(twRow.file, twRow.stub);

  /// Show Success message
  print(green("Tailwind Row generated successfully."));
}
