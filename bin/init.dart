#! /usr/bin/env dcli

import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/tailwind.config.dart' as configFile;

void main(List<String> args) {
  Utils.writeFile(configFile.file, configFile.stub);

  print(green("Config file generated successfully."));
}
