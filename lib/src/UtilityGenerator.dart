import 'package:dcli/dcli.dart';
import 'package:tailwind_cli/src/utilities/Utils.dart';
import 'package:tailwind_cli/tailwind/lib/utilities/Tw.dart' as utilityTw;

Future<void> generate(List<String> args) async {
  /// Get Tw Utility stub Template / File
  var utilityTwFile = utilityTw.stub;

  /// Process stub Template / File
  utilityTwFile = processStub(stub: utilityTwFile, data: Utils.mergedConfigs());

  /// Check and create
  Utils.makeDir(utilityTw.target);

  /// Write File
  Utils.writeFile(utilityTw.file, utilityTwFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

String processStub({required String stub, dynamic data}) {
  stub = stub.replaceAll("//spacers", processSpacers(data['spacers']));
  stub = stub.replaceAll("//colors", processColors(data['colors']));
  stub = stub.replaceAll("//fontSizes", processFontSizes(data['fontSizes']));

  return stub;
}

String processSpacers(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spaces = "";
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spaces += "const double spacer = $value;\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', '_');
      spaces += "const double spacer$dot = spacer * $value;\n\t";
    } else {
      spaces += "const double spacer$key = spacer * $value;\n\t";
    }
  });

  return spaces;
}

String processColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += "const Color tw${Utils.ucFirst(key, preserveAfter: true)} = Color($val);\n\t";
        } else {
          val = Utils.hexToColor("$val");
          color += "const Color tw${Utils.ucFirst(key, preserveAfter: true)}$k = Color($val);\n\t";
        }
      });
    } else {
      value = Utils.hexToColor("$value");
      color += "const Color tw${Utils.ucFirst(key, preserveAfter: true)} = Color($value);\n\t";
    }
  });
  return color;
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += "const double textBase = $value;\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize += "const double text${dot[0].toUpperCase()}${dot.substring(1)}  = textBase * $value;\n\t";
    } else {
      fontSize += "const double text${key[0].toUpperCase()}${key.substring(1)} = textBase * $value;\n\t";
    }
  });
  return fontSize;
}
