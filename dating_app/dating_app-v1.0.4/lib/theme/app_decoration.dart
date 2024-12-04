import 'package:flutter/material.dart';
import 'package:dating_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outline10 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(
              1,
            ),
          ),
          right: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientnameblack900opacity0nameblack900 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.78,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900,
          ],
        ),
      );
  static BoxDecoration get fill9 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get white => BoxDecoration(
        color: Colors.white,
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.purpleA100,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.02),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.deepPurple50,
      );
  static BoxDecoration get fill7 => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get outline4 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -6,
            ),
          ),
        ],
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.pink200,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color:Colors.white,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.deepPurple5001,
      );
  static BoxDecoration get outline6 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray50,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outline5 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.blue300,
      );
  static BoxDecoration get outline8 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray50,
          width: getHorizontalSize(
            2,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.blue400,
      );
  static BoxDecoration get outline7 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(
            2,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientnameblack900opacity0nameblack900opacity085 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900.withOpacity(0.85),
          ],
        ),
      );
  static BoxDecoration get gradientnamedeeppurple300namesecondaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.35,
            0.58,
          ),
          end: Alignment(
            0.6,
            1.52,
          ),
          colors: [
            appTheme.deepPurple300,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
  static BoxDecoration get outline9 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL33 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        33,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        33,
      ),
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius circleBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius customBorderTL81 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius circleBorder52 = BorderRadius.circular(
    getHorizontalSize(
      52,
    ),
  );

  static BorderRadius roundedBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32,
    ),
  );

  static BorderRadius customBorderTL82 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder94 = BorderRadius.circular(
    getHorizontalSize(
      94,
    ),
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
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
    