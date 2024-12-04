import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    Key? key,
    this.alignment,
    this.margin,
    this.backgroundColor,
    this.onTap,
    this.width,
    this.height,
    this.decoration,
    this.child,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: FloatingActionButton(
          backgroundColor: backgroundColor,
          onPressed: onTap,
          child: Container(
            alignment: Alignment.center,
            width: getSize(width ?? 0),
            height: getSize(height ?? 0),
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray50,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
            child: child,
          ),
        ),
      );
}

/// Extension on [CustomFloatingButton] to facilitate inclusion of all types of border style etc
extension FloatingButtonStyleHelper on CustomFloatingButton {
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        ),
      );
}
