import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwInkwell.dart' as twInkWell;

/// Generate [TwInkWell]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twInkWell.target);

  /// Write File
  Utils.writeFile(twInkWell.file, twInkWell.stub);

  /// Show Success message
  print(green("TwInkWell generated successfully."));
}
