// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hair_salon_app/core/app_export.dart';

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
      this.validator,
      this.onTap,
      this.inputFormatters,
      this.isReadOnly = false});

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

  GestureTapCallback? onTap;

  List<TextInputFormatter>? inputFormatters;

  bool isReadOnly;

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
      height: getVerticalSize(
        48.00,
      ),
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(

        readOnly: isReadOnly,
        inputFormatters: inputFormatters,
        onTap: onTap,
        controller: controller,
        obscuringCharacter: "•",
        focusNode: focusNode,
        autofocus: autofocus!,
        style: setTextStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        cursorColor: ColorConstant.black900,

        decoration: _buildDecoration(),

        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(

      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder:
          _setBorderStyle(variant: TextFormFieldVariant.OutlineBlack900),
      disabledBorder: _setBorderStyle(),
      errorStyle: _setFontStyle(
          fontStyle: TextFormFieldFontStyle.SFProTextRegular18Red),
      errorBorder: _setBorderStyle(variant: TextFormFieldVariant.OutlineRed700),
      focusedErrorBorder:
          _setBorderStyle(variant: TextFormFieldVariant.OutlineRed700),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints??BoxConstraints(
        maxHeight: 56,
        minHeight: 40,

      ),
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints??BoxConstraints(
        maxHeight: 56,
       minHeight: 40,
      ),
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  setTextStyle() {
    return TextStyle(
      color: ColorConstant.black900,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
    );
  }

  _setFontStyle({TextFormFieldFontStyle? fontStyle}) {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SFProTextRegular16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.SFProTextRegular17:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.SFProTextRegular18:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.SFProTextRegular18Red:
        return TextStyle(
          color: ColorConstant.red700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getVerticalSize(
            16.00,
          ),
        );
    }
  }

  _setBorderStyle({TextFormFieldVariant? variant}) {
    switch (variant) {
      case TextFormFieldVariant.OutlineRed700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.red700,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.NoneRadius:
        return OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineGray300:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray300,
          ),
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
      case TextFormFieldVariant.OutlineRed700:
        return ColorConstant.gray50;
      case TextFormFieldVariant.NoneRadius:
        return ColorConstant.gray50;
      default:
        return ColorConstant.gray50;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineRed700:
        return true;
      case TextFormFieldVariant.NoneRadius:
        return true;
      case TextFormFieldVariant.UnderLineGray300:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT13:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT21:
        return getPadding(
          left: 8,
          top: 21,
          right: 8,
          bottom: 21,
        );
      case TextFormFieldPadding.PaddingT1:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 8,
          top: 15,
          right: 8,
          bottom: 15,
        );
      default:
        return getPadding(
          left: 16,
          top: 20,
          right: 16,
          bottom: 20,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder16,
}

enum TextFormFieldPadding {
  PaddingT20,
  PaddingT13,
  PaddingT21,
  PaddingT1,
  PaddingT15,
}

enum TextFormFieldVariant {
  None,
  FillGray50,
  OutlineRed700,
  OutlineBlack900,
  UnderLineGray300,
  NoneRadius
}

enum TextFormFieldFontStyle {
  SFProTextRegular16,
  SFProTextRegular16Black900,
  SFProTextRegular17,
  SFProTextRegular18,
  SFProTextRegular18Red
}
