import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 15,
    ),
    bodyLarge: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,)
  ),
);
