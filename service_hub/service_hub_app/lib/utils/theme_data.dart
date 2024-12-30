// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'color_category.dart';

/////whiteContainer ==focusColor
class Themes {
  static final light = ThemeData.light().copyWith(
    bottomAppBarTheme: BottomAppBarTheme(color: regularBlack),
    splashColor: regularWhite,
    primaryColorLight: Colors.cyan,
    primaryColor: regularBlack,
    focusColor: lightThemeContainer,
dialogTheme: DialogTheme(backgroundColor: Colors.white,surfaceTintColor: Colors.white),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    splashColor: regularBlack,
    primaryColor: regularWhite,
    focusColor: darkThemeContainer,
    primaryColorDark: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
