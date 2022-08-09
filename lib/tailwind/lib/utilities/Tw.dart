const String target = "tailwind/lib/utilities/";
const String file = "tailwind/lib/utilities/Tw.dart";

const String stub = """
import "package:flutter/material.dart";
import 'package:get/get.dart';

/// Mixin [Tw] provides config variables
/// For all utilities
  /// Spacers
  //spacers
  
  /// Colors
  
  /// Flutter Theme Colors
  Color get twPrimaryColor =>
      Theme.of(Get.context!).primaryColor;
  Color get twPrimaryColorDark =>
      Theme.of(Get.context!).primaryColorDark;
  Color get twSecondaryColor =>
      Theme.of(Get.context!).colorScheme.secondary;
  Color get twBackgroundColor =>
      Theme.of(Get.context!).backgroundColor;
  Color get twScaffoldBackgroundColor =>
      Theme.of(Get.context!).scaffoldBackgroundColor;
  Color get twCardColor => Theme.of(Get.context!).cardColor;
  
  /// Tailwind Colors
  //colors
  
  /// Font Sizes
  //fontSizes
  
  /// Convert Hex Color To Dart [int] Color
  String hexToColor(String code) {
    if (code.startsWith("0x")) {
      return "0xFF" + code.substring(4, 10).toUpperCase();
    } else if (code.startsWith("#")) {
      return "0xFF" + code.substring(1, 7).toUpperCase();
    }
    return "0xFF" + code.toUpperCase();
  }

  /// Get Color in [int]
  int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    hexColor = hexColor.replaceAll('0X', '');
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  /// Convert String to have first letter in caps
  String twUcFirst(String text) {
    return text.trim()[0].toUpperCase() + text.trim().substring(1, text.length).toLowerCase();
  }

  /// Convert String to each word's first letter caps
  String twUcWords(String text) {
    return text.trim().split(' ').map((e) => twUcFirst(e)).join(' ');
  }

""";
