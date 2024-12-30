import 'package:flutter/material.dart';

import '../SizeConfig.dart';
import 'PrefData.dart';
import 'package:html_unescape/html_unescape.dart';

Color cellColor = "#EEEEEE".toColor();
Color primaryColor = "#19498C".toColor();
Color bgColor = "#FAFAFA".toColor();
Color textColor = "#000000".toColor();
Color subTextColor = Colors.grey.shade600;
Color subPrimaryColor = "#084043".toColor();
Color defPrimaryColor = Colors.orange;
Color defBgColor = Colors.grey.shade200;

class ConstantData {
  static const double padding = 20;
  static const double avatarRadius = 40;

  static String fontsFamily = 'SFProText';
  static String assetImagesPath = 'assets/imgs/';
  static String assetHomeImagesPath = 'assets/homeImages/';
  static String assetVideoPath = 'assets';
  static String assetPath = 'assets/';
  static int defaultRepsCount = 12;

  static final String defTimeZoneName = "America/Detroit";

  static Color color1 = "#E46756".toColor();
  static Color color2 = "#E4BC39".toColor();
  static Color color3 = "#175AAE".toColor();
  static Color color4 = "#1BA454".toColor();
  static Color color5 = "#721FA2".toColor();

  static Color defColor = "#12153D".toColor();

  static double font15Px = SizeConfig.safeBlockVertical! / 0.6;

  static double font12Px = SizeConfig.safeBlockVertical! / 0.75;

  static double font18Px = SizeConfig.safeBlockVertical! / 0.5;
  static double font20Px = SizeConfig.safeBlockVertical! / 0.58;
  static double font22Px = SizeConfig.safeBlockVertical! / 0.4;
  static double font25Px = SizeConfig.safeBlockVertical! / 0.3;

  static String parseHtmlString(String htmlString) {
    var unescape = HtmlUnescape();
    var text = unescape.convert(htmlString);

    return text;
  }

  static setThemePosition() async {
    int themMode = await PrefData.getThemeMode();

    print("themeMode-----$themMode");

    if (themMode == 1) {
      textColor = Colors.white;
      bgColor = "#13151B".toColor();
      cellColor = "#1F1F1F".toColor();
      defBgColor = "#050708".toColor();
      subTextColor = Colors.white70;
    } else {
      textColor = "#000000".toColor();
      bgColor = "#FAFAFA".toColor();
      cellColor = "#ffffff".toColor();
      defBgColor = Colors.grey.shade200;
      subTextColor = Colors.grey.shade600;
    }
  }

  static colorList() {
    List<Color> colorList = [];
    colorList.add(color1);
    colorList.add(color2);
    colorList.add(color3);
    colorList.add(color4);
    colorList.add(color5);
    return colorList;
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
