import "package:flutter/material.dart";

/// Mixin [Tw] provides config variables
/// For all utilities

mixin Tw {
  /// Spacers
  static const double spacer = 16.0;
	static const double spacer0 = spacer * 0;
	static const double spacer1 = spacer * 0.25;
	static const double spacer2 = spacer * 0.5;
	static const double spacer3 = spacer * 0.75;
	static const double spacer4 = spacer * 1.0;
	static const double spacer5 = spacer * 1.25;
	static const double spacer6 = spacer * 1.5;
	static const double spacer7 = spacer * 1.75;
	static const double spacer8 = spacer * 2;
	static const double spacer9 = spacer * 2.25;
	static const double spacer10 = spacer * 2.5;
	static const double spacer11 = spacer * 2.75;
	static const double spacer12 = spacer * 3;
	static const double spacer14 = spacer * 3.5;
	static const double spacer16 = spacer * 4;
	static const double spacer20 = spacer * 5;
	static const double spacer24 = spacer * 6;
	static const double spacer28 = spacer * 7;
	static const double spacer32 = spacer * 8;
	static const double spacer36 = spacer * 9;
	static const double spacer40 = spacer * 10;
	static const double spacer44 = spacer * 11;
	static const double spacer48 = spacer * 12;
	static const double spacer52 = spacer * 13;
	static const double spacer56 = spacer * 14;
	static const double spacer60 = spacer * 15;
	static const double spacer64 = spacer * 16;
	static const double spacer0_5 = spacer * 2;
	
  
  /// Colors
  
  /// Flutter Theme Colors
  static Color primaryColor(BuildContext context) =>
      Theme.of(context).primaryColor;
  static Color primaryColorDark(BuildContext context) =>
      Theme.of(context).primaryColorDark;
  static Color accentColor(BuildContext context) =>
      Theme.of(context).accentColor;
  static Color backgroundColor(BuildContext context) =>
      Theme.of(context).backgroundColor;
  static Color scaffoldBackgroundColor(BuildContext context) =>
      Theme.of(context).scaffoldBackgroundColor;
  static Color buttonColor(BuildContext context) =>
      Theme.of(context).buttonColor;
  static Color cardColor(BuildContext context) => Theme.of(context).cardColor;
  
  /// Tailwind Colors
  static const Color black = Color(0xFF010101);
	static const Color white = Color(0xFFFFFFFF);
	static const Color transparent = Color(0x00000000);
	static const Color gray50 = Color(0xFFFAFAFA);
	static const Color gray100 = Color(0xFFF4F4F5);
	static const Color gray200 = Color(0xFFE4E4E7);
	static const Color gray300 = Color(0xFFD4D4D8);
	static const Color gray400 = Color(0xFFA1A1AA);
	static const Color gray500 = Color(0xFF71717A);
	static const Color gray600 = Color(0xFF52525B);
	static const Color gray700 = Color(0xFF3F3F46);
	static const Color gray800 = Color(0xFF27272A);
	static const Color gray900 = Color(0xFF18181B);
	static const Color blueGray50 = Color(0xFFF8FAFC);
	static const Color blueGray100 = Color(0xFFF1F5F9);
	static const Color blueGray200 = Color(0xFFE2E8F0);
	static const Color blueGray300 = Color(0xFFCBD5E1);
	static const Color blueGray400 = Color(0xFF94A3B8);
	static const Color blueGray500 = Color(0xFF64748B);
	static const Color blueGray600 = Color(0xFF475569);
	static const Color blueGray700 = Color(0xFF334155);
	static const Color blueGray800 = Color(0xFF1E293B);
	static const Color blueGray900 = Color(0xFF0F172A);
	static const Color coolGray50 = Color(0xFFF9FAFB);
	static const Color coolGray100 = Color(0xFFF3F4F6);
	static const Color coolGray200 = Color(0xFFE5E7EB);
	static const Color coolGray300 = Color(0xFFD1D5DB);
	static const Color coolGray400 = Color(0xFF9CA3AF);
	static const Color coolGray500 = Color(0xFF6B7280);
	static const Color coolGray600 = Color(0xFF4B5563);
	static const Color coolGray700 = Color(0xFF4B5563);
	static const Color coolGray800 = Color(0xFF1F2937);
	static const Color coolGray900 = Color(0xFF111827);
	static const Color trueGray50 = Color(0xFFFAFAFA);
	static const Color trueGray100 = Color(0xFFF5F5F5);
	static const Color trueGray200 = Color(0xFFE5E5E5);
	static const Color trueGray300 = Color(0xFFD4D4D4);
	static const Color trueGray400 = Color(0xFFA3A3A3);
	static const Color trueGray500 = Color(0xFF737373);
	static const Color trueGray600 = Color(0xFF525252);
	static const Color trueGray700 = Color(0xFF404040);
	static const Color trueGray800 = Color(0xFF262626);
	static const Color trueGray900 = Color(0xFF171717);
	static const Color warmGray50 = Color(0xFFFAFAF9);
	static const Color warmGray100 = Color(0xFFF5F5F4);
	static const Color warmGray200 = Color(0xFFE7E5E4);
	static const Color warmGray300 = Color(0xFFD6D3D1);
	static const Color warmGray400 = Color(0xFFA8A29E);
	static const Color warmGray500 = Color(0xFF78716C);
	static const Color warmGray600 = Color(0xFF57534E);
	static const Color warmGray700 = Color(0xFF44403C);
	static const Color warmGray800 = Color(0xFF292524);
	static const Color warmGray900 = Color(0xFF1C1917);
	static const Color red50 = Color(0xFFFEF2F2);
	static const Color red100 = Color(0xFFFEE2E2);
	static const Color red200 = Color(0xFFFECACA);
	static const Color red300 = Color(0xFFFCA5A5);
	static const Color red400 = Color(0xFFF87171);
	static const Color red500 = Color(0xFFEF4444);
	static const Color red600 = Color(0xFFDC2626);
	static const Color red700 = Color(0xFFB91C1C);
	static const Color red800 = Color(0xFF991B1B);
	static const Color red900 = Color(0xFF7F1D1D);
	static const Color orange50 = Color(0xFFFFF7ED);
	static const Color orange100 = Color(0xFFFFEDD5);
	static const Color orange200 = Color(0xFFFED7AA);
	static const Color orange300 = Color(0xFFFDBA74);
	static const Color orange400 = Color(0xFFFB923C);
	static const Color orange500 = Color(0xFFF97316);
	static const Color orange600 = Color(0xFFEA580C);
	static const Color orange700 = Color(0xFFC2410C);
	static const Color orange800 = Color(0xFF9A3412);
	static const Color orange900 = Color(0xFF7C2D12);
	static const Color amber50 = Color(0xFFFFFBEB);
	static const Color amber100 = Color(0xFFFEF3C7);
	static const Color amber200 = Color(0xFFFDE68A);
	static const Color amber300 = Color(0xFFFCD34D);
	static const Color amber400 = Color(0xFFFBBF24);
	static const Color amber500 = Color(0xFFF59E0B);
	static const Color amber600 = Color(0xFFD97706);
	static const Color amber700 = Color(0xFFB45309);
	static const Color amber800 = Color(0xFF92400E);
	static const Color amber900 = Color(0xFF78350F);
	static const Color yellow50 = Color(0xFFFEFCE8);
	static const Color yellow100 = Color(0xFFFEF9C3);
	static const Color yellow200 = Color(0xFFFEF08A);
	static const Color yellow300 = Color(0xFFFDE047);
	static const Color yellow400 = Color(0xFFFACC15);
	static const Color yellow500 = Color(0xFFEAB308);
	static const Color yellow600 = Color(0xFFCA8A04);
	static const Color yellow700 = Color(0xFFA16207);
	static const Color yellow800 = Color(0xFF854D0E);
	static const Color yellow900 = Color(0xFF713F12);
	static const Color lime50 = Color(0xFFF7FEE7);
	static const Color lime100 = Color(0xFFECFCCB);
	static const Color lime200 = Color(0xFFD9F99D);
	static const Color lime300 = Color(0xFFBEF264);
	static const Color lime400 = Color(0xFFA3E635);
	static const Color lime500 = Color(0xFF84CC16);
	static const Color lime600 = Color(0xFF65A30D);
	static const Color lime700 = Color(0xFF4D7C0F);
	static const Color lime800 = Color(0xFF3F6212);
	static const Color lime900 = Color(0xFF365314);
	static const Color green50 = Color(0xFFF0FDF4);
	static const Color green100 = Color(0xFFDCFCE7);
	static const Color green200 = Color(0xFFBBF7D0);
	static const Color green300 = Color(0xFF86EFAC);
	static const Color green400 = Color(0xFF4ADE80);
	static const Color green500 = Color(0xFF22C55E);
	static const Color green600 = Color(0xFF16A34A);
	static const Color green700 = Color(0xFF15803D);
	static const Color green800 = Color(0xFF166534);
	static const Color green900 = Color(0xFF14532D);
	static const Color emerald50 = Color(0xFFECFDF5);
	static const Color emerald100 = Color(0xFFD1FAE5);
	static const Color emerald200 = Color(0xFFA7F3D0);
	static const Color emerald300 = Color(0xFF6EE7B7);
	static const Color emerald400 = Color(0xFF34D399);
	static const Color emerald500 = Color(0xFF10B981);
	static const Color emerald600 = Color(0xFF059669);
	static const Color emerald700 = Color(0xFF047857);
	static const Color emerald800 = Color(0xFF065F46);
	static const Color emerald900 = Color(0xFF064E3B);
	static const Color teal50 = Color(0xFFF0FDFA);
	static const Color teal100 = Color(0xFFCCFBF1);
	static const Color teal200 = Color(0xFF99F6E4);
	static const Color teal300 = Color(0xFF5EEAD4);
	static const Color teal400 = Color(0xFF2DD4BF);
	static const Color teal500 = Color(0xFF14B8A6);
	static const Color teal600 = Color(0xFF0D9488);
	static const Color teal700 = Color(0xFF0F766E);
	static const Color teal800 = Color(0xFF115E59);
	static const Color teal900 = Color(0xFF134E4A);
	static const Color cyan50 = Color(0xFFECFEFF);
	static const Color cyan100 = Color(0xFFCFFAFE);
	static const Color cyan200 = Color(0xFFA5F3FC);
	static const Color cyan300 = Color(0xFF67E8F9);
	static const Color cyan400 = Color(0xFF22D3EE);
	static const Color cyan500 = Color(0xFF06B6D4);
	static const Color cyan600 = Color(0xFF0891B2);
	static const Color cyan700 = Color(0xFF0E7490);
	static const Color cyan800 = Color(0xFF155E75);
	static const Color cyan900 = Color(0xFF164E63);
	static const Color lightBlue50 = Color(0xFFF0F9FF);
	static const Color lightBlue100 = Color(0xFFE0F2FE);
	static const Color lightBlue200 = Color(0xFFBAE6FD);
	static const Color lightBlue300 = Color(0xFF7DD3FC);
	static const Color lightBlue400 = Color(0xFF38BDF8);
	static const Color lightBlue500 = Color(0xFF0EA5E9);
	static const Color lightBlue600 = Color(0xFF0284C7);
	static const Color lightBlue700 = Color(0xFF0369A1);
	static const Color lightBlue800 = Color(0xFF075985);
	static const Color lightBlue900 = Color(0xFF0C4A6E);
	static const Color blue50 = Color(0xFFEFF6FF);
	static const Color blue100 = Color(0xFFDBEAFE);
	static const Color blue200 = Color(0xFFBFDBFE);
	static const Color blue300 = Color(0xFF93C5FD);
	static const Color blue400 = Color(0xFF60A5FA);
	static const Color blue500 = Color(0xFF3B82F6);
	static const Color blue600 = Color(0xFF2563EB);
	static const Color blue700 = Color(0xFF1D4ED8);
	static const Color blue800 = Color(0xFF1E40AF);
	static const Color blue900 = Color(0xFF1E3A8A);
	static const Color indigo50 = Color(0xFFEEF2FF);
	static const Color indigo100 = Color(0xFFE0E7FF);
	static const Color indigo200 = Color(0xFFC7D2FE);
	static const Color indigo300 = Color(0xFFA5B4FC);
	static const Color indigo400 = Color(0xFF818CF8);
	static const Color indigo500 = Color(0xFF6366F1);
	static const Color indigo600 = Color(0xFF4F46E5);
	static const Color indigo700 = Color(0xFF4338CA);
	static const Color indigo800 = Color(0xFF3730A3);
	static const Color indigo900 = Color(0xFF312E81);
	static const Color violet50 = Color(0xFFF5F3FF);
	static const Color violet100 = Color(0xFFEDE9FE);
	static const Color violet200 = Color(0xFFDDD6FE);
	static const Color violet300 = Color(0xFFC4B5FD);
	static const Color violet400 = Color(0xFFA78BFA);
	static const Color violet500 = Color(0xFF8B5CF6);
	static const Color violet600 = Color(0xFF7C3AED);
	static const Color violet700 = Color(0xFF6D28D9);
	static const Color violet800 = Color(0xFF5B21B6);
	static const Color violet900 = Color(0xFF4C1D95);
	static const Color purple50 = Color(0xFFFAF5FF);
	static const Color purple100 = Color(0xFFF3E8FF);
	static const Color purple200 = Color(0xFFE9D5FF);
	static const Color purple300 = Color(0xFFD8B4FE);
	static const Color purple400 = Color(0xFFC084FC);
	static const Color purple500 = Color(0xFFA855F7);
	static const Color purple600 = Color(0xFF9333EA);
	static const Color purple700 = Color(0xFF7E22CE);
	static const Color purple800 = Color(0xFF6B21A8);
	static const Color purple900 = Color(0xFF581C87);
	static const Color fuchsia50 = Color(0xFFFDF4FF);
	static const Color fuchsia100 = Color(0xFFFAE8FF);
	static const Color fuchsia200 = Color(0xFFF5D0FE);
	static const Color fuchsia300 = Color(0xFFF0ABFC);
	static const Color fuchsia400 = Color(0xFFE879F9);
	static const Color fuchsia500 = Color(0xFFD946EF);
	static const Color fuchsia600 = Color(0xFFC026D3);
	static const Color fuchsia700 = Color(0xFFA21CAF);
	static const Color fuchsia800 = Color(0xFF86198F);
	static const Color fuchsia900 = Color(0xFF701A75);
	static const Color pink50 = Color(0xFFFDF2F8);
	static const Color pink100 = Color(0xFFFCE7F3);
	static const Color pink200 = Color(0xFFFBCFE8);
	static const Color pink300 = Color(0xFFF9A8D4);
	static const Color pink400 = Color(0xFFF472B6);
	static const Color pink500 = Color(0xFFEC4899);
	static const Color pink600 = Color(0xFFDB2777);
	static const Color pink700 = Color(0xFFBE185D);
	static const Color pink800 = Color(0xFF9D174D);
	static const Color pink900 = Color(0xFF831843);
	static const Color rose50 = Color(0xFFFFF1F2);
	static const Color rose100 = Color(0xFFFFE4E6);
	static const Color rose200 = Color(0xFFFECDD3);
	static const Color rose300 = Color(0xFFFDA4AF);
	static const Color rose400 = Color(0xFFFB7185);
	static const Color rose500 = Color(0xFFF43F5E);
	static const Color rose600 = Color(0xFFE11D48);
	static const Color rose700 = Color(0xFFBE123C);
	static const Color rose800 = Color(0xFF9F1239);
	static const Color rose900 = Color(0xFF881337);
	static const Color primary = Color(0xFF20446A);
	
  
  /// Font Sizes
  static const double textBase = 16.0;
	static const double textXs = textBase * 0.75;
	static const double textSm = textBase * 0.875;
	static const double textLg = textBase * 1.125;
	static const double textXl = textBase * 1.25;
	static const double textXl2 = textBase * 1.5;
	static const double textXl3 = textBase * 1.875;
	static const double textXl4 = textBase * 2.25;
	static const double textXl5 = textBase * 3;
	static const double textXl6 = textBase * 3.75;
	static const double textXl7 = textBase * 4.5;
	static const double textXl8 = textBase * 6;
	static const double textXl9 = textBase * 8;
	
  
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

  /// Convert String to have first letter in caps
  static String ucFirst(String text) {
    return text.trim()[0].toUpperCase() + text.trim().substring(1, text.length).toLowerCase();
  }

  /// Convert String to each word's first letter caps
  static String ucWords(String text) {
    return text.trim().split(' ').map((e) => ucFirst(e)).join(' ');
  }
}


