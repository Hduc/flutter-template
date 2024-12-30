import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray50,
                  borderRadius: BorderRadius.circular(24.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo40001,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink30002,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPinkTL24 => BoxDecoration(
        color: appTheme.pink5001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple5002,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPinkTL241 => BoxDecoration(
        color: appTheme.pink50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillGrayTL17 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
        borderRadius: BorderRadius.circular(20.h),
      );
}
