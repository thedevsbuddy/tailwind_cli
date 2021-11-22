#! /usr/bin/env dcli

import "package:tailwind_cli/src/MixinsGenerator.dart" as mixinsGenerator;
import "package:tailwind_cli/src/TailwindGenerator.dart" as tailwindGenerator;
import "package:tailwind_cli/src/UtilityGenerator.dart" as utilityGenerator;

void main(List<String> args) {
  utilityGenerator.generate(args);
  tailwindGenerator.generate(args);
  mixinsGenerator.generate(args);
}
