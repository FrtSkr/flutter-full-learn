import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor.blueMania,
        ),
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(
              fontSize: 25,
              color: _lightColor._textColor,
            ),
          ),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMania = const Color.fromARGB(95, 188, 248, 1);
}
