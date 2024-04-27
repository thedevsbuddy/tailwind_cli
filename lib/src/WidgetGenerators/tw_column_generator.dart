import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwColumn.dart' as twColumn;

/// Generate [TwColumn]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twColumn.target);

  /// Write File
  Utils.writeFile(twColumn.file, twColumn.stub);

  /// Show Success message
  print(green("Tailwind Column generated successfully."));
}
