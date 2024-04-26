#! /usr/bin/env dcli

import "dart:io";

import "package:dcli/dcli.dart";
import "package:tailwind_cli/src/BuildersGenerator.dart" as buildersGenerator;
import "package:tailwind_cli/src/WidgetsGenerator.dart" as widgetsGenerator;
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
  await buildersGenerator.generate(args);
  await widgetsGenerator.generate(args);
  await extensionGenerator.generate(args);
  formatGeneratedCode();
}

void formatGeneratedCode() async {
  print(blue('Formatting Code....'));
  try {
    final result = await Process.run('dart', ['format', 'tailwind']);
    if (result.exitCode == 0) {
      print(blue(result.stdout));
    } else {
      print(red('Command failed with error code ${result.exitCode}: ${result.stderr}'));
    }
  } catch (e) {
    print(red('Error running command: $e'));
  }
}
