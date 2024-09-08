import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        primaryColor: const Color(0xFF245C3A),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
        ),
      );

  static OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFF245C3A),
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
