#! /usr/bin/env dcli

import "package:tailwind_cli/src/BuildersGenerator.dart" as builderGenerator;
import "package:tailwind_cli/src/ExtensionsGenerator.dart" as extensionGenerator;
import "package:tailwind_cli/src/MixinsGenerator.dart" as mixinsGenerator;
import "package:tailwind_cli/src/TailwindGenerator.dart" as tailwindGenerator;
import "package:tailwind_cli/src/UtilityGenerator.dart" as utilityGenerator;
import 'package:tailwind_cli/src/utilities/Utils.dart';

void main(List<String> args) {
  Utils.createConfig();
  utilityGenerator.generate(args);
  tailwindGenerator.generate(args);
  mixinsGenerator.generate(args);
  builderGenerator.generate(args);
  extensionGenerator.generate(args);
}
