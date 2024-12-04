import 'package:flutter/material.dart';

import 'color_category.dart';

/////whiteContainer ==focusColor
class Themes {
  static final light = ThemeData.light().copyWith(
    bottomAppBarTheme: BottomAppBarTheme(color: regularBlack),
    backgroundColor: regularWhite,
    bottomAppBarColor: Colors.cyan,
    primaryColor: regularBlack,
    focusColor: lightThemeContainer,
dialogTheme: DialogTheme(backgroundColor: Colors.white,surfaceTintColor: Colors.white),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: regularBlack,
    primaryColor: regularWhite,
    focusColor: darkThemeContainer,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
