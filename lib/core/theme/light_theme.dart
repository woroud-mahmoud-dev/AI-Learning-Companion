import 'package:flutter/material.dart';
import 'app_colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,


  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    surface: AppColors.surface,
    error: AppColors.error,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(color: AppColors.textPrimary),
    bodyMedium: TextStyle(color: AppColors.textSecondary),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.background,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.primary),
  ),
);
