import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

abstract class ThemeManager {
  static ThemeData getAppLightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: ColorsManager.background,
      primaryColor: ColorsManager.blue,
      fontFamily: 'Inter',
      useMaterial3: true,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(
            ColorsManager.blue.withValues(alpha: 0.1),
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(ColorsManager.blue),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorsManager.blue,
        selectionColor: ColorsManager.blue,
        selectionHandleColor: ColorsManager.blue,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.black,
        shape: CircleBorder(),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: ColorsManager.white,
        iconTheme: IconThemeData(color: ColorsManager.black),
        centerTitle: true,
        titleSpacing: 24,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
    );
  }
}
