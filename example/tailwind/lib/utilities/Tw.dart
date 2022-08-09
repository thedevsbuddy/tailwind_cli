import "package:flutter/material.dart";
import 'package:get/get.dart';

/// Mixin [Tw] provides config variables
/// For all utilities
  /// Spacers
  const double spacer = 16.0;
	const double spacer0 = spacer * 0;
	const double spacer1 = spacer * 0.25;
	const double spacer2 = spacer * 0.5;
	const double spacer3 = spacer * 0.75;
	const double spacer4 = spacer * 1.0;
	const double spacer5 = spacer * 1.25;
	const double spacer6 = spacer * 1.5;
	const double spacer7 = spacer * 1.75;
	const double spacer8 = spacer * 2;
	const double spacer9 = spacer * 2.25;
	const double spacer10 = spacer * 2.5;
	const double spacer11 = spacer * 2.75;
	const double spacer12 = spacer * 3;
	const double spacer14 = spacer * 3.5;
	const double spacer16 = spacer * 4;
	const double spacer20 = spacer * 5;
	const double spacer24 = spacer * 6;
	const double spacer28 = spacer * 7;
	const double spacer32 = spacer * 8;
	const double spacer36 = spacer * 9;
	const double spacer40 = spacer * 10;
	const double spacer44 = spacer * 11;
	const double spacer48 = spacer * 12;
	const double spacer52 = spacer * 13;
	const double spacer56 = spacer * 14;
	const double spacer60 = spacer * 15;
	const double spacer64 = spacer * 16;
	
  
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
  const Color twBlack = Color(0xFF010101);
	const Color twWhite = Color(0xFFFFFFFF);
	const Color twTransparent = Color(0x00000000);
	const Color twGray50 = Color(0xFFFAFAFA);
	const Color twGray100 = Color(0xFFF4F4F5);
	const Color twGray200 = Color(0xFFE4E4E7);
	const Color twGray300 = Color(0xFFD4D4D8);
	const Color twGray400 = Color(0xFFA1A1AA);
	const Color twGray500 = Color(0xFF71717A);
	const Color twGray600 = Color(0xFF52525B);
	const Color twGray700 = Color(0xFF3F3F46);
	const Color twGray800 = Color(0xFF27272A);
	const Color twGray900 = Color(0xFF18181B);
	const Color twBlueGray50 = Color(0xFFF8FAFC);
	const Color twBlueGray100 = Color(0xFFF1F5F9);
	const Color twBlueGray200 = Color(0xFFE2E8F0);
	const Color twBlueGray300 = Color(0xFFCBD5E1);
	const Color twBlueGray400 = Color(0xFF94A3B8);
	const Color twBlueGray500 = Color(0xFF64748B);
	const Color twBlueGray600 = Color(0xFF475569);
	const Color twBlueGray700 = Color(0xFF334155);
	const Color twBlueGray800 = Color(0xFF1E293B);
	const Color twBlueGray900 = Color(0xFF0F172A);
	const Color twCoolGray50 = Color(0xFFF9FAFB);
	const Color twCoolGray100 = Color(0xFFF3F4F6);
	const Color twCoolGray200 = Color(0xFFE5E7EB);
	const Color twCoolGray300 = Color(0xFFD1D5DB);
	const Color twCoolGray400 = Color(0xFF9CA3AF);
	const Color twCoolGray500 = Color(0xFF6B7280);
	const Color twCoolGray600 = Color(0xFF4B5563);
	const Color twCoolGray700 = Color(0xFF4B5563);
	const Color twCoolGray800 = Color(0xFF1F2937);
	const Color twCoolGray900 = Color(0xFF111827);
	const Color twTrueGray50 = Color(0xFFFAFAFA);
	const Color twTrueGray100 = Color(0xFFF5F5F5);
	const Color twTrueGray200 = Color(0xFFE5E5E5);
	const Color twTrueGray300 = Color(0xFFD4D4D4);
	const Color twTrueGray400 = Color(0xFFA3A3A3);
	const Color twTrueGray500 = Color(0xFF737373);
	const Color twTrueGray600 = Color(0xFF525252);
	const Color twTrueGray700 = Color(0xFF404040);
	const Color twTrueGray800 = Color(0xFF262626);
	const Color twTrueGray900 = Color(0xFF171717);
	const Color twWarmGray50 = Color(0xFFFAFAF9);
	const Color twWarmGray100 = Color(0xFFF5F5F4);
	const Color twWarmGray200 = Color(0xFFE7E5E4);
	const Color twWarmGray300 = Color(0xFFD6D3D1);
	const Color twWarmGray400 = Color(0xFFA8A29E);
	const Color twWarmGray500 = Color(0xFF78716C);
	const Color twWarmGray600 = Color(0xFF57534E);
	const Color twWarmGray700 = Color(0xFF44403C);
	const Color twWarmGray800 = Color(0xFF292524);
	const Color twWarmGray900 = Color(0xFF1C1917);
	const Color twRed50 = Color(0xFFFEF2F2);
	const Color twRed100 = Color(0xFFFEE2E2);
	const Color twRed200 = Color(0xFFFECACA);
	const Color twRed300 = Color(0xFFFCA5A5);
	const Color twRed400 = Color(0xFFF87171);
	const Color twRed500 = Color(0xFFEF4444);
	const Color twRed600 = Color(0xFFDC2626);
	const Color twRed700 = Color(0xFFB91C1C);
	const Color twRed800 = Color(0xFF991B1B);
	const Color twRed900 = Color(0xFF7F1D1D);
	const Color twOrange50 = Color(0xFFFFF7ED);
	const Color twOrange100 = Color(0xFFFFEDD5);
	const Color twOrange200 = Color(0xFFFED7AA);
	const Color twOrange300 = Color(0xFFFDBA74);
	const Color twOrange400 = Color(0xFFFB923C);
	const Color twOrange500 = Color(0xFFF97316);
	const Color twOrange600 = Color(0xFFEA580C);
	const Color twOrange700 = Color(0xFFC2410C);
	const Color twOrange800 = Color(0xFF9A3412);
	const Color twOrange900 = Color(0xFF7C2D12);
	const Color twAmber50 = Color(0xFFFFFBEB);
	const Color twAmber100 = Color(0xFFFEF3C7);
	const Color twAmber200 = Color(0xFFFDE68A);
	const Color twAmber300 = Color(0xFFFCD34D);
	const Color twAmber400 = Color(0xFFFBBF24);
	const Color twAmber500 = Color(0xFFF59E0B);
	const Color twAmber600 = Color(0xFFD97706);
	const Color twAmber700 = Color(0xFFB45309);
	const Color twAmber800 = Color(0xFF92400E);
	const Color twAmber900 = Color(0xFF78350F);
	const Color twYellow50 = Color(0xFFFEFCE8);
	const Color twYellow100 = Color(0xFFFEF9C3);
	const Color twYellow200 = Color(0xFFFEF08A);
	const Color twYellow300 = Color(0xFFFDE047);
	const Color twYellow400 = Color(0xFFFACC15);
	const Color twYellow500 = Color(0xFFEAB308);
	const Color twYellow600 = Color(0xFFCA8A04);
	const Color twYellow700 = Color(0xFFA16207);
	const Color twYellow800 = Color(0xFF854D0E);
	const Color twYellow900 = Color(0xFF713F12);
	const Color twLime50 = Color(0xFFF7FEE7);
	const Color twLime100 = Color(0xFFECFCCB);
	const Color twLime200 = Color(0xFFD9F99D);
	const Color twLime300 = Color(0xFFBEF264);
	const Color twLime400 = Color(0xFFA3E635);
	const Color twLime500 = Color(0xFF84CC16);
	const Color twLime600 = Color(0xFF65A30D);
	const Color twLime700 = Color(0xFF4D7C0F);
	const Color twLime800 = Color(0xFF3F6212);
	const Color twLime900 = Color(0xFF365314);
	const Color twGreen50 = Color(0xFFF0FDF4);
	const Color twGreen100 = Color(0xFFDCFCE7);
	const Color twGreen200 = Color(0xFFBBF7D0);
	const Color twGreen300 = Color(0xFF86EFAC);
	const Color twGreen400 = Color(0xFF4ADE80);
	const Color twGreen500 = Color(0xFF22C55E);
	const Color twGreen600 = Color(0xFF16A34A);
	const Color twGreen700 = Color(0xFF15803D);
	const Color twGreen800 = Color(0xFF166534);
	const Color twGreen900 = Color(0xFF14532D);
	const Color twEmerald50 = Color(0xFFECFDF5);
	const Color twEmerald100 = Color(0xFFD1FAE5);
	const Color twEmerald200 = Color(0xFFA7F3D0);
	const Color twEmerald300 = Color(0xFF6EE7B7);
	const Color twEmerald400 = Color(0xFF34D399);
	const Color twEmerald500 = Color(0xFF10B981);
	const Color twEmerald600 = Color(0xFF059669);
	const Color twEmerald700 = Color(0xFF047857);
	const Color twEmerald800 = Color(0xFF065F46);
	const Color twEmerald900 = Color(0xFF064E3B);
	const Color twTeal50 = Color(0xFFF0FDFA);
	const Color twTeal100 = Color(0xFFCCFBF1);
	const Color twTeal200 = Color(0xFF99F6E4);
	const Color twTeal300 = Color(0xFF5EEAD4);
	const Color twTeal400 = Color(0xFF2DD4BF);
	const Color twTeal500 = Color(0xFF14B8A6);
	const Color twTeal600 = Color(0xFF0D9488);
	const Color twTeal700 = Color(0xFF0F766E);
	const Color twTeal800 = Color(0xFF115E59);
	const Color twTeal900 = Color(0xFF134E4A);
	const Color twCyan50 = Color(0xFFECFEFF);
	const Color twCyan100 = Color(0xFFCFFAFE);
	const Color twCyan200 = Color(0xFFA5F3FC);
	const Color twCyan300 = Color(0xFF67E8F9);
	const Color twCyan400 = Color(0xFF22D3EE);
	const Color twCyan500 = Color(0xFF06B6D4);
	const Color twCyan600 = Color(0xFF0891B2);
	const Color twCyan700 = Color(0xFF0E7490);
	const Color twCyan800 = Color(0xFF155E75);
	const Color twCyan900 = Color(0xFF164E63);
	const Color twLightBlue50 = Color(0xFFF0F9FF);
	const Color twLightBlue100 = Color(0xFFE0F2FE);
	const Color twLightBlue200 = Color(0xFFBAE6FD);
	const Color twLightBlue300 = Color(0xFF7DD3FC);
	const Color twLightBlue400 = Color(0xFF38BDF8);
	const Color twLightBlue500 = Color(0xFF0EA5E9);
	const Color twLightBlue600 = Color(0xFF0284C7);
	const Color twLightBlue700 = Color(0xFF0369A1);
	const Color twLightBlue800 = Color(0xFF075985);
	const Color twLightBlue900 = Color(0xFF0C4A6E);
	const Color twBlue50 = Color(0xFFEFF6FF);
	const Color twBlue100 = Color(0xFFDBEAFE);
	const Color twBlue200 = Color(0xFFBFDBFE);
	const Color twBlue300 = Color(0xFF93C5FD);
	const Color twBlue400 = Color(0xFF60A5FA);
	const Color twBlue500 = Color(0xFF3B82F6);
	const Color twBlue600 = Color(0xFF2563EB);
	const Color twBlue700 = Color(0xFF1D4ED8);
	const Color twBlue800 = Color(0xFF1E40AF);
	const Color twBlue900 = Color(0xFF1E3A8A);
	const Color twIndigo50 = Color(0xFFEEF2FF);
	const Color twIndigo100 = Color(0xFFE0E7FF);
	const Color twIndigo200 = Color(0xFFC7D2FE);
	const Color twIndigo300 = Color(0xFFA5B4FC);
	const Color twIndigo400 = Color(0xFF818CF8);
	const Color twIndigo500 = Color(0xFF6366F1);
	const Color twIndigo600 = Color(0xFF4F46E5);
	const Color twIndigo700 = Color(0xFF4338CA);
	const Color twIndigo800 = Color(0xFF3730A3);
	const Color twIndigo900 = Color(0xFF312E81);
	const Color twViolet50 = Color(0xFFF5F3FF);
	const Color twViolet100 = Color(0xFFEDE9FE);
	const Color twViolet200 = Color(0xFFDDD6FE);
	const Color twViolet300 = Color(0xFFC4B5FD);
	const Color twViolet400 = Color(0xFFA78BFA);
	const Color twViolet500 = Color(0xFF8B5CF6);
	const Color twViolet600 = Color(0xFF7C3AED);
	const Color twViolet700 = Color(0xFF6D28D9);
	const Color twViolet800 = Color(0xFF5B21B6);
	const Color twViolet900 = Color(0xFF4C1D95);
	const Color twPurple50 = Color(0xFFFAF5FF);
	const Color twPurple100 = Color(0xFFF3E8FF);
	const Color twPurple200 = Color(0xFFE9D5FF);
	const Color twPurple300 = Color(0xFFD8B4FE);
	const Color twPurple400 = Color(0xFFC084FC);
	const Color twPurple500 = Color(0xFFA855F7);
	const Color twPurple600 = Color(0xFF9333EA);
	const Color twPurple700 = Color(0xFF7E22CE);
	const Color twPurple800 = Color(0xFF6B21A8);
	const Color twPurple900 = Color(0xFF581C87);
	const Color twFuchsia50 = Color(0xFFFDF4FF);
	const Color twFuchsia100 = Color(0xFFFAE8FF);
	const Color twFuchsia200 = Color(0xFFF5D0FE);
	const Color twFuchsia300 = Color(0xFFF0ABFC);
	const Color twFuchsia400 = Color(0xFFE879F9);
	const Color twFuchsia500 = Color(0xFFD946EF);
	const Color twFuchsia600 = Color(0xFFC026D3);
	const Color twFuchsia700 = Color(0xFFA21CAF);
	const Color twFuchsia800 = Color(0xFF86198F);
	const Color twFuchsia900 = Color(0xFF701A75);
	const Color twPink50 = Color(0xFFFDF2F8);
	const Color twPink100 = Color(0xFFFCE7F3);
	const Color twPink200 = Color(0xFFFBCFE8);
	const Color twPink300 = Color(0xFFF9A8D4);
	const Color twPink400 = Color(0xFFF472B6);
	const Color twPink500 = Color(0xFFEC4899);
	const Color twPink600 = Color(0xFFDB2777);
	const Color twPink700 = Color(0xFFBE185D);
	const Color twPink800 = Color(0xFF9D174D);
	const Color twPink900 = Color(0xFF831843);
	const Color twRose50 = Color(0xFFFFF1F2);
	const Color twRose100 = Color(0xFFFFE4E6);
	const Color twRose200 = Color(0xFFFECDD3);
	const Color twRose300 = Color(0xFFFDA4AF);
	const Color twRose400 = Color(0xFFFB7185);
	const Color twRose500 = Color(0xFFF43F5E);
	const Color twRose600 = Color(0xFFE11D48);
	const Color twRose700 = Color(0xFFBE123C);
	const Color twRose800 = Color(0xFF9F1239);
	const Color twRose900 = Color(0xFF881337);
	const Color twPrimary = Color(0xFF20446A);
	
  
  /// Font Sizes
  const double textBase = 16.0;
	const double textXs = textBase * 0.75;
	const double textSm = textBase * 0.875;
	const double textLg = textBase * 1.125;
	const double textXl = textBase * 1.25;
	const double textXl2 = textBase * 1.5;
	const double textXl3 = textBase * 1.875;
	const double textXl4 = textBase * 2.25;
	const double textXl5 = textBase * 3;
	const double textXl6 = textBase * 3.75;
	const double textXl7 = textBase * 4.5;
	const double textXl8 = textBase * 6;
	const double textXl9 = textBase * 8;
	
  
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


