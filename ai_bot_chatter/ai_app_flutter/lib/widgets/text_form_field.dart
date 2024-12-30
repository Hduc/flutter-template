import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/home_one_container_screen/controller/home_one_container_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
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
      this.onChanged});

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

  ValueChanged<String>? onChanged;

  FocusNode textSecondFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(context),
          )
        : _buildTextFormFieldWidget(context);
  }

  _buildTextFormFieldWidget(BuildContext context) {
    return GetBuilder<HomeOneContainerController>(
      init: HomeOneContainerController(),
      builder: (homeController) => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          onTap: () {
            FocusScope.of(context).requestFocus(textSecondFocusNode);
          },
          onChanged: onChanged,
          cursorColor: ColorConstant.black900,
          controller: controller,
          focusNode: textSecondFocusNode,
          autofocus: autofocus!,
          style: setDefaultText(),
          obscureText: isObscureText!,
          obscuringCharacter: "*",
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: _buildDecoration(homeController),
          validator: validator,
        ),
      ),
    );
  }

  _buildDecoration(HomeOneContainerController homeController) {
    print("isfill ${homeController.isfill}");
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: setFillStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: textSecondFocusNode.hasFocus
          ? ColorConstant.gray100
          : _setFillColor(),
      filled: textSecondFocusNode.hasFocus ? true : _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  setDefaultText() {
    return TextStyle(
      color: ColorConstant.black900,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'AirbnbCereal_W_Md',
      fontWeight: FontWeight.w500,
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.AirbnbCerealWMd16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.AirbnbCerealWMd16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.AirbnbCerealWLt14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'AirbnbCereal_W_Lt',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.AirbnbCerealWMd16Red60001:
        return TextStyle(
          color: ColorConstant.red60001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.AirbnbCerealWBd16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Bd',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CustomBorderTL20:
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
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  setFillStyle() {
    return OutlineInputBorder(
      borderRadius: _setOutlineBorderRadius(),
      borderSide: BorderSide(
        color: ColorConstant.black900,
        width: 1,
      ),
    );
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray30001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray30001,
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
      case TextFormFieldVariant.FillBlack900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlack900:
        return ColorConstant.gray100;
      case TextFormFieldVariant.FillBlack900:
        return ColorConstant.black900;
      case TextFormFieldVariant.FillGray100:
        return ColorConstant.gray100;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray400:
        return false;
      case TextFormFieldVariant.OutlineGray30001:
        return false;
      case TextFormFieldVariant.OutlineBlack900:
        return true;
      case TextFormFieldVariant.FillBlack900:
        return true;
      case TextFormFieldVariant.FillGray100:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT17_1:
        return getPadding(
          left: 17,
          top: 17,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case TextFormFieldPadding.PaddingT22:
        return getPadding(
          left: 16,
          top: 22,
          right: 16,
          bottom: 22,
        );
      case TextFormFieldPadding.PaddingT17_2:
        return getPadding(
          top: 17,
          right: 17,
          bottom: 17,
        );
      default:
        return getPadding(
          left: 16,
          top: 16,
          right: 16,
          bottom: 16,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder16,
  CustomBorderTL20,
}

enum TextFormFieldPadding {
  PaddingT17,
  PaddingT17_1,
  PaddingAll13,
  PaddingT22,
  PaddingT17_2,
}

enum TextFormFieldVariant {
  None,
  OutlineGray400,
  OutlineGray30001,
  OutlineBlack900,
  FillBlack900,
  FillGray100,
}

enum TextFormFieldFontStyle {
  AirbnbCerealWMd16,
  AirbnbCerealWMd16Black900,
  AirbnbCerealWMd16WhiteA700,
  AirbnbCerealWLt14,
  AirbnbCerealWMd16Red60001,
  AirbnbCerealWBd16,
}
