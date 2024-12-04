import 'dart:ui';

class ConstantData {
  static Color primaryColor = "#be7a33".toColor();
  static Color accentColor = "#be7a33".toColor();
  static Color bgColor = "#F2F6F9".toColor();
  static Color viewColor = "#CCCCCC".toColor();
  static Color whiteColor = "#FFFFFF".toColor();
  static Color disableIconColor = "#A7ABAE".toColor();
  static Color primaryTextColor = "#3F3F41".toColor();
  static Color textColor = "#000000".toColor();
  static Color filterColor = "#D8DCDF".toColor();
  static Color blueColor = "#254296".toColor();
  static Color purpleColor = "#6961DA".toColor();
  static Color greyColor = "#C3C3C3".toColor();
  static Color iconColor = "#783E01".toColor();

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
