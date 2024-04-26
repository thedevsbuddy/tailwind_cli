import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwContainer.dart' as twContainer;

/// Generate [TwContainer]
Future<void> generate(_) async {
  /// Get Tw Utility stub Template / File
  var twContainerFileData = twContainer.stub;

  /// Check and create
  Utils.makeDir(twContainer.target);

  /// Write File
  Utils.writeFile(twContainer.file, twContainerFileData);

  /// Show Success message
  print(green("TwContainer Generated successfully."));
}
