import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
        surface: Color(0xFFFCFCFC),
        primary: Color(0xFF4636CC),
        secondary: Color(0xFFFEFEFE),
        onSurface: Color(0xFF000008),
        onPrimary: Color(0xFFFFFFFD),
        onSecondary: Color(0xFFCBCBD4)),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000008), // onSurface
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000008), // onSurface
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000008), // onSurface
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000008), // onSurface
      ),
      labelLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Color(0xFFCBCBD4), // secondary
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFFCBCBD4), // secondary
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFFCBCBD4), // secondary
      ),
    ));
