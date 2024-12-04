import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.onChanged,

    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator, this.scrollPadding, this.isEnable, this.enableBorderDecoration,
  }) : super(
    key: key,
  );

  final Alignment? alignment;

  final double? width;

  ValueChanged<String>? onChanged;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;



  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;
  final InputBorder? enableBorderDecoration;

  final Color? fillColor;

  final bool? filled;
  final EdgeInsets? scrollPadding;
  final bool? isEnable;



  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: textFormFieldWidget,
    )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
    width: width ?? double.maxFinite,
    margin: margin,
    child: TextFormField(
      scrollPadding: scrollPadding??EdgeInsets.zero,
      enabled: isEnable??true,
      onChanged: onChanged,
      controller: controller,
      scrollController: ScrollController(),
      style: textStyle ?? theme.textTheme.bodyLarge,

      obscureText: obscureText!,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? theme.textTheme.bodyLarge!.copyWith(color: Color(0xFF7C7C7C)),
    errorStyle: theme.textTheme.bodyLarge!.copyWith(color: Colors.red),
    prefixIcon: prefix??SizedBox(
      width: getSize(16),
    ),
    prefixIconConstraints: prefixConstraints??BoxConstraints(
        maxHeight: getHorizontalSize(56)  ),
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding?? getPadding(
      left: 0,
      top: 17,
      right: 16,
      bottom: 18,
    ),
    fillColor: fillColor ??Colors.white,
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          borderSide: BorderSide(
            color: Color(0xFFD9D9D9),
            width: 1,
          ),
        ),
   disabledBorder: borderDecoration ??
        OutlineInputBorder(

          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          borderSide: BorderSide(
            color: Color(0xFFD9D9D9),
            width: 1,
          ),

        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          borderSide: BorderSide(
            color: Color(0xFFD9D9D9),
            width: 1,
          ),
        ),
    focusedBorder: enableBorderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
      borderSide: BorderSide(
        color:Colors.red,
        width: 1,
      ),
    ),
  );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineBluegray100 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineRed700 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.red700,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryContainer => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray200 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryContainerTL8 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1,
        ),
      );
  static UnderlineInputBorder get underLineOnPrimaryContainer =>
      UnderlineInputBorder(
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      );
  static OutlineInputBorder get fillGray50TL16 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineGray50 => OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              12.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              12.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.gray50,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillGray50TL8 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
