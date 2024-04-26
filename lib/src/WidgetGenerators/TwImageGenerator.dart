import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/builders/TwImage.dart' as twImage;

/// Generate [TwImage]
Future<void> generate(_) async {
  /// Get Tw Utility stub Template / File
  var twImageData = twImage.stub;

  /// Process stub Template / File
  twImageData = twImageData.replaceAll("%opacity%", processOpacity(Utils.configs.opacity));

  /// Check and create
  Utils.makeDir(twImage.target);

  /// Write File
  Utils.writeFile(twImage.file, twImageData);

  /// Show Success message
  print(green("TwImage generated successfully."));
}

String processOpacity(Map<String, dynamic>? opacity) {
  if (opacity == null) {
    return "";
  }
  var op = "";
  opacity.forEach((key, value) {
    if (value != '' || key != '') {
      op += "TwImage get o$key => this.._opacity = AlwaysStoppedAnimation($value);";
      op += "TwImage get opacity$key => this.._opacity = AlwaysStoppedAnimation($value);";
    }
  });
  return op;
}
