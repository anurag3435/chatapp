import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.green,
  colorScheme: ColorScheme.light(
    primary: Colors.green,
    secondary: Colors.teal, // accent shade
    surface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black87,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white, // visible in daylight
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black87),
    bodyMedium: TextStyle(color: Colors.black87),
    titleLarge: TextStyle(color: Colors.black),
  ),
  iconTheme: const IconThemeData(color: Colors.black87),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.green,
  colorScheme: ColorScheme.dark(
    primary: Colors.greenAccent,
    secondary: Colors.tealAccent,
    surface: Colors.grey, // soft surface
    onPrimary: Colors.black, // text on green
    onSecondary: Colors.black,
    onSurface: Colors.white70, // softer white
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green[800],
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white70),
    bodyMedium: TextStyle(color: Colors.white70),
    titleLarge: TextStyle(color: Colors.white),
  ),
  iconTheme: const IconThemeData(color: Colors.white70),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[900],
    selectedItemColor: Colors.greenAccent,
    unselectedItemColor: Colors.white54,
  ),
);
