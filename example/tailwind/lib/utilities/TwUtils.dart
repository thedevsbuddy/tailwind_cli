class TwUtils {
  static RegExp _regex = new RegExp(r"[\s|\-_+:;]");

  /// Convert String to have first letter in caps
  static String ucFirst(String text) {
    return text.trim()[0].toUpperCase() +
        text.trim().substring(1, text.length).toLowerCase();
  }

  /// Convert String to each word's first letter caps
  static String ucWords(String text) {
    return text.trim().split(_regex).map((e) => ucFirst(e)).join(' ');
  }

  /// Convert String to each word's first letter caps
  static String ucTitle(String text) {
    return ucWords(text);
  }

  /// Convert String snake case
  static String snake(String text) {
    return text.trim().split(_regex).map((e) => e.toLowerCase()).join('_');
  }

  /// Convert String snake case
  static String studly(String text) {
    return text.trim().split(_regex).map((e) => ucFirst(e)).join('');
  }

  /// Convert Hex Color To Dart [int] Color
  static String hexToColor(String code) {
    if (code.startsWith("0x")) {
      return "0xFF" + code.substring(4, 10).toUpperCase();
    } else if (code.startsWith("#")) {
      return "0xFF" + code.substring(1, 7).toUpperCase();
    }
    return "0xFF" + code.toUpperCase();
  }

  /// Get Color in [int]
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    hexColor = hexColor.replaceAll('0X', '');
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
