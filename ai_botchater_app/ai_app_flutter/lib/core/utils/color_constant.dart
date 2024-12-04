import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrange5001 = fromHex('#ffe6e5');

  static Color gray100A0 = fromHex('#a0f6f6f6');

  static Color red600 = fromHex('#e74040');

  static Color lightBlue500 = fromHex('#00a3ff');

  static Color red400 = fromHex('#c44e4e');

  static Color deepOrange5002 = fromHex('#ffe7db');

  static Color black90087 = fromHex('#87000000');

  static Color cyan5001 = fromHex('#ddfcff');

  static Color indigoA70001 = fromHex('#2346ff');

  static Color lightGreen600 = fromHex('#74c44e');

  static Color indigo5001 = fromHex('#e0ddff');

  static Color cyan5002 = fromHex('#e2fff1');

  static Color indigo5002 = fromHex('#dbdaff');

  static Color purpleA200 = fromHex('#fa1fff');

  static Color purple500 = fromHex('#9106d3');

  static Color redA700 = fromHex('#ff0000');

  static Color gray600 = fromHex('#707070');

  static Color gray400 = fromHex('#BABABA');

  static Color blueGray100 = fromHex('#c7ced4');

  static Color gray800 = fromHex('#424242');

  static Color black9000f = fromHex('#0f000000');

  static Color gray200 = fromHex('#efece8');

  static Color blue50 = fromHex('#dbe3ff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color indigo400 = fromHex('#4e6fc4');

  static Color deepPurple50 = fromHex('#eaddff');

  static Color indigoA700 = fromHex('#211cff');

  static Color cyan50 = fromHex('#d7f1fc');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange50 = fromHex('#ffdfda');

  static Color cyanA200 = fromHex('#00ffe0');

  static Color red40001 = fromHex('#f5484a');

  static Color gray50 = fromHex('#fff4f4');

  static Color red100 = fromHex('#ffdbdc');

  static Color black900 = fromHex('#000000');

  static Color deepPurpleA700 = fromHex('#4200ff');

  static Color deepOrangeA400 = fromHex('#ff3d00');

  static Color gray700 = fromHex('#616161');

  static Color red60001 = fromHex('#dd3333');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#dbe1ff');

  static Color lime800 = fromHex('#ac7728');

  static Color gray900 = fromHex('#212121');

  static Color lightGreen60001 = fromHex('#70b74e');

  static Color green50 = fromHex('#d9ffdb');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray30001 = fromHex('#e6e6e6');

  static Color orange100 = fromHex('#ffd6b1');

  static Color gray100 = fromHex('#f6f6f6');

  static Color green5002 = fromHex('#d8ffdd');

  static Color orange5003 = fromHex('#fffadd');

  static Color orange5004 = fromHex('#fff0d9');

  static Color orange50 = fromHex('#fff3d9');

  static Color orange5001 = fromHex('#fff5e0');

  static Color green5001 = fromHex('#e5fdef');

  static Color orange5002 = fromHex('#fff4df');

  static Color orange5005 = fromHex('#fffcdd');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
