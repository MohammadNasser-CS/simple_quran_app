import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/theme.dart';

class AppTheme {
  static ValueNotifier<Locale> currentLocale =
      ValueNotifier(const Locale('en'));
  static ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.grey[300],
      fontFamily: ThemeConstants.fontFamily);
}
