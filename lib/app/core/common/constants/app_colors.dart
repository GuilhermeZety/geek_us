// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = violet_600;

  static const Color white = Color(0xFFFFFFFF);
  static const Color grey_50 = Color(0xFFF9FAFB);
  static const Color grey_100 = Color(0xFFF3F4F6);
  static const Color grey_200 = Color(0xFFE5E7EB);
  static const Color grey_300 = Color(0xFFD1D5DB);
  static const Color grey_400 = Color(0xFF9CA3AF);
  static const Color grey_500 = Color(0xFF6B7280);
  static const Color grey_600 = Color(0xFF4B5563);
  static const Color grey_700 = Color(0xFF374151);
  static const Color grey_800 = Color(0xFF1F2937);
  static const Color grey_900 = Color(0xFF111827);
  static const Color grey_950 = Color(0xFF181C24);
  static const Color black = Color(0xFF020912);

  static const Color fire_bush_400 = Color(0xFFE3A049);
  static const Color watermelon_500 = Color(0xFFE76875);
  static const Color violet_600 = Color(0xFF6D45F5);

  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      violet_600,
      watermelon_500,
      fire_bush_400,
    ],
  );

  static const Color blue_700 = Color(0xFF21242E);
  static const Color blue_800 = Color(0xFF21242E);
  static const Color blue_900 = Color(0xFF181C24);

  static const Color error = Color(0xFFD22121);
}
