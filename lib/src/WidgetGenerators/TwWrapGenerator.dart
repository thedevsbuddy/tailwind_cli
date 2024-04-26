import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwWrap.dart' as twWrap;

/// Generate [TwWrap]
Future<void> generate(_) async {
  /// Check and create
  Utils.makeDir(twWrap.target);

  /// Write File
  Utils.writeFile(twWrap.file, twWrap.stub);

  /// Show Success message
  print(green("Tailwind Wrap generated successfully."));
}
