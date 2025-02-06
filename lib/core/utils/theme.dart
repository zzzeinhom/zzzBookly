import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: Color(0xFFF5F5F5),
      primary: Color(0xFF4636CC),
      secondary: Color(0xFFFEFEFE),
      onSurface: Color(0xFF120E5F),
      onPrimary: Color(0xFFFFFFFD),
      onSecondary: Color.fromARGB(255, 154, 154, 156),
      tertiary: Color.fromARGB(64, 159, 159, 187),
    ),
    fontFamily: 'KeplerStd', // Apply KeplerStd as the default font family
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Color(0xFF120E5F), // onSurface
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFF120E5F), // onSurface
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF120E5F), // onSurface
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF120E5F), // onSurface
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Color(0xFF120E5F), // onSurface
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xFF120E5F), // onSurface
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFF120E5F), // onSurface
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF120E5F), // onSurface
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF120E5F), // onSurface
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 154, 154, 156),
      ),
      labelMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 154, 154, 156),
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 154, 154, 156),
      ),
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color(0xFF4636CC),
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF4636CC),
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF4636CC),
      ),
    ));
