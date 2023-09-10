import 'package:event_manager/src/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Themes {
  ThemeData getTheme() {
    return ThemeData(
      unselectedWidgetColor: AppColors.black,
      primarySwatch: _colorToMaterialColor(AppColors.lightPurple),
      scaffoldBackgroundColor: AppColors.white,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.lightPurple),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.lightPurple,
        selectedItemColor: AppColors.white,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 15),
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30),
      ),
    );
  }

  MaterialColor _colorToMaterialColor(Color color) {
    final colorInt = color.value;
    return MaterialColor(colorInt, {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1),
    });
  }
}
