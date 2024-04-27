import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/utils.dart';
import 'package:tailwind_cli/tailwind/lib/tailwind.dart' as tailwindTw;
import 'package:tailwind_cli/tailwind/pubspec.dart' as pubspecTw;

Future<void> generate(List<String> args) async {
  await generateTailwind();
  await generatePubspec();
}

Future<void> generateTailwind() async {
  /// Check and create
  Utils.makeDir(tailwindTw.target);

  /// Write File
  Utils.writeFile(tailwindTw.file, tailwindTw.stub);

  /// Show Success message
  print(green("Tailwind file generated successfully."));
}

Future<void> generatePubspec() async {
  /// Check and create
  Utils.makeDir(pubspecTw.target);

  /// Write File
  Utils.writeFile(pubspecTw.file, pubspecTw.stub);

  /// Show Success message
  print(green("Pubspec YAML file generated successfully."));
}
