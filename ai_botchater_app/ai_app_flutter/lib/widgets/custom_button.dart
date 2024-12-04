import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      case ButtonPadding.PaddingT10:
        return getPadding(
          top: 10,
          right: 10,
          bottom: 10,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray30001:
        return null;
      default:
        return ColorConstant.black900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray30001:
        return BorderSide(
          color: ColorConstant.gray30001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlack900:
      case ButtonVariant.FillGray50:
      case ButtonVariant.FillWhiteA700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CustomBorderTL20:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.AirbnbCerealWMd16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.AirbnbCerealWBd14:
        return TextStyle(
          color: ColorConstant.red40001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'AirbnbCereal_W_Bd',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AirbnbCerealWBd16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Bd',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AirbnbCerealWBd18Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'AirbnbCereal_W_Bd',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'AirbnbCereal_W_Bd',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder16,
  CustomBorderTL20,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll13,
  PaddingT10,
}

enum ButtonVariant {
  FillBlack900,
  FillGray50,
  FillWhiteA700,
  OutlineGray30001,
}

enum ButtonFontStyle {
  AirbnbCerealWBd18,
  AirbnbCerealWMd16,
  AirbnbCerealWBd14,
  AirbnbCerealWBd16,
  AirbnbCerealWBd18Black900,
}
