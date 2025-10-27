// lib/utils/constants.dart

import 'package:flutter/material.dart';

/// AppDimensions berisi konstanta untuk padding, margin, radius, dll.
/// Penggunaan:
/// ```dart
/// Padding(
///   padding: EdgeInsets.all(AppDimensions.paddingMedium),
///   child: Text('Hello'),
/// )
/// ```
class AppDimensions {
  AppDimensions._(); // Private constructor

  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;

  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 16.0;
}

/// AppStrings berisi semua teks statis yang ditampilkan di UI.
/// Ini akan sangat berguna untuk lokalisasi (penerjemahan) di masa depan.
/// Penggunaan:
/// ```dart
/// Text(AppStrings.welcomeMessage)
/// ```
class AppStrings {
  AppStrings._(); // Private constructor

  static const String appName = 'Flutter HRD Public';
  static const String welcomeMessage = 'Welcome!';
  static const String loginButton = 'Login';
  static const String errorGeneric = 'An unexpected error occurred.';
}

/// AppColors berisi palet warna utama aplikasi.
/// Penggunaan:
/// ```dart
/// Container(
///   color: AppColors.primary,
/// )
/// ```
class AppColors {
  AppColors._(); // Private constructor

  static const Color primary = Colors.deepPurple;
  static const Color accent = Colors.amber;
  static const Color background = Color(0xFFF5F5F5);
  static const Color textPrimary = Color(0xFF212121);
}
