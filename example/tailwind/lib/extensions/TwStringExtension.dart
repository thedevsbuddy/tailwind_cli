import 'package:tailwind/tailwind.dart';

/// Extension Methods & Widgets for the strings
extension StringExtension on String {
  ///Returns first letter of the string as Caps eg -> Flutter
  String firstLetterUpperCase() => length > 1
      ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}"
      : this;

  ///Removes first element
  String get removeFirst => length > 1 ? "${substring(1, length)}" : "";

  ///Removes last element
  String get removeLast => length > 1 ? "${substring(0, length - 1)}" : "";

  /// Return a bool if the string is null or empty
  bool get isEmpty => trimLeft().isEmpty;

  ///
  /// Uses regex to check if the provided string is a valid email address or not
  ///
  bool get isEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  /// Returns the string if it is not `null`, or the empty string otherwise
  String get orEmpty => this;

  // if the string is empty perform an action
  String ifEmpty(Function action) => isEmpty ? action() : this;

  /// Returns a String without white space at all
  /// "hello world" // helloworld
  String get removeSpaces => replaceAll(RegExp(r"\s+\b|\b\s"), "");

  /// Returns true if s is neither null, empty nor is solely made of whitespace characters.
  bool get isNotBlank => trim().isNotEmpty;

  ///
  /// Replaces chars of the given String [s] with [replace].
  ///
  String? hidePartial({int begin = 0, int? end, String replace = '*'}) {
    final buffer = StringBuffer();
    if (length <= 1) {
      return null;
    }
    if (end == null) {
      end = (length / 2).round();
    } else {
      if (end > length) {
        end = length;
      }
    }
    for (var i = 0; i < length; i++) {
      if (i >= end) {
        buffer.write(String.fromCharCode(runes.elementAt(i)));
        continue;
      }
      if (i >= begin) {
        buffer.write(replace);
        continue;
      }
      buffer.write(String.fromCharCode(runes.elementAt(i)));
    }
    return buffer.toString();
  }

  /// Capitalize First letter of the string
  String ucFirst() => Tw.ucFirst(this);

  ///Capitalize all words inside a string
  String ucWords() => Tw.ucWords(this);

  /// Returns the concatenation of [other] and [this].
  ///
  /// Example:
  /// ```dart
  /// 'word'.prepend('key'); // 'keyword'
  /// ```
  String prepend(String other) => other + this;

  /// Returns [this] with characters in reverse order.
  String reverse() {
    final stringBuffer = StringBuffer();
    for (var i = length - 1; i >= 0; i--) {
      stringBuffer.write(this[i]);
    }
    return stringBuffer.toString();
  }

  /// Checks the validity of the credit/debit card number using the Luhn algorithm.
  bool isCreditCardValid() {
    int _sum = 0;
    bool _alternate = false;

    for (int i = length - 1; i >= 0; i--) {
      int digit = int.parse(this[i]);

      if (_alternate) {
        digit *= 2;
        if (digit > 9) {
          digit = (digit % 10) + 1;
        }
      }

      _sum += digit;

      _alternate = !_alternate;
    }

    return _sum % 10 == 0;
  }

  bool isNumber() {
    return RegExp("[1-9]").hasMatch(this);
  }

  bool isLetter() {
    return RegExp("[A-Za-z]").hasMatch(this);
  }

  bool isSymbol() {
    const String pattern =
        "[`~!@#\$%^&*()_\-+=<>?:\"{}|,.//\/;'\\[\]·~！@#￥%……&*（）——\-+={}|《》？：“”【】、；‘’，。、]";
    for (int i = 0; i < length; i++) {
      if (pattern.contains(this[i])) {
        return true;
      }
    }
    return false;
  }

  /// Get Text Widget for the String
  TwText get twText => TwText(this);
}

extension NullableStringIsEmptyOrNullExtension on String? {
  /// Returns `true` if the String is either null or empty.
  bool get isEmptyOrNull => this?.isEmpty ?? true;
}

extension NullableStringIsEmptyOrNotNullExtension on String? {
  bool get isEmptyOrNotNull => !isEmptyOrNull;
}
