import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.BlueWhite:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      case ButtonVariant.OutlineLightblueA700:
        return null;
      default:
        return ColorConstant.lightBlueA700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.BlueWhite:
        return BorderSide(
          color: ColorConstant.lightBlueA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineLightblueA700:
        return BorderSide(
          color: ColorConstant.lightBlueA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Blue:
      case ButtonVariant.White:
      case ButtonVariant.FillBluegray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.AeonikBold18:
        return TextStyle(
          color: ColorConstant.orange400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold18DeeppurpleA400:
        return TextStyle(
          color: ColorConstant.deepPurpleA400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold18Cyan400:
        return TextStyle(
          color: ColorConstant.cyan400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold21:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            21,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold18LightblueA700:
        return TextStyle(
          color: ColorConstant.lightBlueA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold14LightblueA700:
        return TextStyle(
          color: ColorConstant.lightBlueA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AeonikBold14Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder20,
  RoundedBorder14,
}
enum ButtonPadding {
  PaddingAll17,
  PaddingAll13,
  PaddingAll6,
}
enum ButtonVariant {
  Blue,
  White,
  BlueWhite,
  OutlineLightblueA700,
  FillBluegray50,
}
enum ButtonFontStyle {
  AeonikBold18WhiteA700,
  AeonikBold18,
  AeonikBold18DeeppurpleA400,
  AeonikBold18Cyan400,
  AeonikBold21,
  AeonikBold18LightblueA700,
  AeonikBold14,
  AeonikBold14LightblueA700,
  AeonikBold14Gray600,
}
