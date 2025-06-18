import 'package:flutter/material.dart';
import 'app_colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBackground,
  primaryColor: AppColors.darkPrimary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    surface: AppColors.darkSurface,
    error: AppColors.darkError,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(color: AppColors.darkTextPrimary),
    bodyMedium: TextStyle(color: AppColors.darkTextSecondary),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBackground,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.darkPrimary),
  ),
);
