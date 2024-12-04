// ignore_for_file: deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

Color primaryColor = "#5E57FF".toColor();
Color defBgColor = "#FCE8E2".toColor();
// Color purpleColor = "#5E57FF".toColor();
Color backgroundColor = "#0F172A".toColor();
Color fontPrimary = ("#2A190D".toColor()).withOpacity(0.9);
Color accentColor = "#FE7225".toColor();
Color greyFont = "#616161".toColor();
Color greenColor = "#04B155".toColor();
Color redColor = "#DD3333".toColor();
Color indicatorColor = "#CED0D3".toColor();
Color itemGreyColor = "#E8E6E5".toColor();
Color orangeColor = accentColor.withOpacity(0.3);
Color detailHeaderColor = orangeColor;
Color edtBorderColor = "#525E7B".toColor();
Color appBarColor = "#FEE3E4".toColor();
Color black40 = "#7C7C7C".toColor();
Color dividerColor = "#E6E6E6".toColor();
Color redFontColor = "#F44144".toColor();

Color cardColor = "#FFFBF8".toColor();
Color shadowColor = Colors.black12;

getFontColor(BuildContext context) {
  return getCurrentTheme(context).textTheme.titleMedium!.color;
}
getFontBlackColor(BuildContext context) {
  return getCurrentTheme(context).textTheme.titleLarge!.color;
}getFontGreyColor(BuildContext context) {
  var caption;
  return getCurrentTheme(context).textTheme.bodySmall!.color;
}

getCardColor(BuildContext context) {
  return getCurrentTheme(context).cardColor;
}
ThemeData getLightThemeData()
{
  return ThemeData(
      scaffoldBackgroundColor: "#FFFFFF".toColor(),
      textTheme: TextTheme(
          titleMedium: TextStyle(color: "#000000".toColor()),
          titleSmall: TextStyle(color: "#525E7B".toColor()),
          titleLarge: TextStyle(color: "#000000".toColor()),
          // caption: TextStyle(color: "#7C7C7C".toColor())
      ),
      hoverColor: "#F7F7FF".toColor(),
      cardColor: "#F2F5FF".toColor(),
      dialogBackgroundColor: "#FFFFFF".toColor(),
      focusColor: "#B9C1D3".toColor(),
      hintColor: "#525E7B".toColor(),
      disabledColor: "#525E7B".toColor(),
      canvasColor: "#F7F8FB".toColor(),
      dividerColor: "#D7DDEC".toColor(),
      shadowColor: const Color.fromRGBO(131, 157, 216, 0.11999999731779099), colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: "#F44144".toColor()).copyWith(background: "#E5E5E5".toColor()));
}
ThemeData getDarkThemeData()
{
  return ThemeData(
      scaffoldBackgroundColor: "#161E2D".toColor(),
      hoverColor: "#21F6F7FF".toColor(),
      dialogBackgroundColor: "#283048".toColor(),
      focusColor: "#525E7B".toColor(),
      cardColor: "#2D354F".toColor(),
      dividerColor: "#2B354D".toColor(),
      canvasColor: "#525E7B".toColor(),
      hintColor: "#A6ADBE".toColor(),
      disabledColor: "#FFFFFF".toColor(),
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.4699999988079071),
      textTheme: TextTheme(
          titleMedium: TextStyle(color: "#FFFFFF".toColor()),
          titleSmall: TextStyle(color: "#A6ADBE".toColor()),
          titleLarge: TextStyle(color: "#FFFFFF".toColor()),
          // caption: TextStyle(color: "#7C7C7C".toColor())
      ), colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: "#F44144".toColor()).copyWith(background: "#161E2D".toColor()));
}

Color getAccentColor(BuildContext context) {
  return getCurrentTheme(context).colorScheme.secondary;
}

getFontSkip(BuildContext context) {
  return getCurrentTheme(context).textTheme.titleSmall!.color;
}

getFontHint(BuildContext context) {
  return getCurrentTheme(context).hintColor;
}

ThemeData getCurrentTheme(BuildContext context) {
  return Theme.of(context);
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
