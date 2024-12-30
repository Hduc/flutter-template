import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray90090,
      );
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.purple300,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.indigo5087,
      );
  static BoxDecoration get outline => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get black => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.gray100,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2,
    ),
  );

  static BorderRadius customBorderTL32 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    