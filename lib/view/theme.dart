import 'package:flutter/material.dart';

class Themes {
  static final lightMode = ThemeData(
    colorScheme: ColorScheme.light().copyWith(primary: primaryClr),
  );

  static final darkMode = ThemeData(
    colorScheme: ColorScheme.dark().copyWith(primary: darkGreyClr),
  );
}

const Color bluishClr = Color(0xFF4e5ae8);

const Color yellowClr = Color(0xFFFFB746);

const Color pinkClr = Color(0xFFff4667);

const Color white = Colors.white;

const Color primaryClr = bluishClr;

const Color darkGreyClr = Color(0xFF121212);

const Color darkHeaderClr = Color(0xFF424242);
