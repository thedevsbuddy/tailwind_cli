#! /usr/bin/env dcli

import "dart:io";

import "package:tailwind_cli/src/BuildersGenerator.dart" as builderGenerator;
import "package:tailwind_cli/src/ExtensionsGenerator.dart"
    as extensionGenerator;
import "package:tailwind_cli/src/MixinsGenerator.dart" as mixinsGenerator;
import "package:tailwind_cli/src/TailwindGenerator.dart" as tailwindGenerator;
import "package:tailwind_cli/src/UtilityGenerator.dart" as utilityGenerator;
import 'package:tailwind_cli/src/utilities/Utils.dart';

void main(List<String> args) async {
  Utils.createConfig();
  await utilityGenerator.generate(args);
  await tailwindGenerator.generate(args);
  await mixinsGenerator.generate(args);
  await builderGenerator.generate(args);
  await extensionGenerator.generate(args);
  formatGeneratedCode();
}

void formatGeneratedCode() async {
  print('Formatting Code....');
  try {
    final result = await Process.run('dart', ['format', 'tailwind']);
    if (result.exitCode == 0) {
      print(result.stdout);
    } else {
      print(
          'Command failed with error code ${result.exitCode}: ${result.stderr}');
    }
  } catch (e) {
    print('Error running command: $e');
  }
}
