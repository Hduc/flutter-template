import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      errorStyle: TextStyle(
        color: ColorConstant.red500,
        fontSize: getFontSize(
          13,
        ),
        fontFamily: 'Aeonik',
        fontWeight: FontWeight.w400,
      ),
      hintText: hintText ?? "",
      hintStyle: TextStyle(
        color: ColorConstant.gray,
        fontSize: getFontSize(
          15,
        ),
        fontFamily: 'Aeonik',
        fontWeight: FontWeight.w400,
      ),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(variant: TextFormFieldVariant.Blue),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.AeonikRegular15Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.Headline:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.Body:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setBorderStyle({TextFormFieldVariant? variant}) {
    switch (variant) {
      case TextFormFieldVariant.Blue:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.lightBlueA700,
            width: 1,
          ),
        );
      case TextFormFieldVariant.White:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.Blue:
        return ColorConstant.gray50;
      case TextFormFieldVariant.White:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.gray50;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.Blue:
        return true;
      case TextFormFieldVariant.White:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT19_1:
        return getPadding(
          top: 19,
          bottom: 19,
        );
      case TextFormFieldPadding.PaddingT88:
        return getPadding(
          left: 16,
          top: 88,
          right: 16,
          bottom: 88,
        );
      case TextFormFieldPadding.PaddingT19_2:
        return getPadding(
          left: 16,
          top: 19,
          right: 16,
          bottom: 19,
        );
      case TextFormFieldPadding.PaddingT16:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          top: 19,
          right: 19,
          bottom: 19,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder20,
}
enum TextFormFieldPadding {
  PaddingT19,
  PaddingT19_1,
  PaddingT88,
  PaddingT19_2,
  PaddingT16,
  PaddingAll16,
}
enum TextFormFieldVariant {
  None,
  FillGray50,
  Blue,
  White,
}
enum TextFormFieldFontStyle {
  AeonikRegular15,
  AeonikRegular15Black900,
  Headline,
  Body,
}
