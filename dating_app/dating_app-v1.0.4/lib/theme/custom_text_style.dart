import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeRed70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red70001,
      );
  static get bodyLargeRubik => theme.textTheme.bodyLarge!.rubik;
  static get bodyLargeSFProText => theme.textTheme.bodyLarge!.sFProText;
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeSFProTextWhiteA700 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeSFProTextGray600 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeGray60017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyMediumGray60014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
    fontWeight: FontWeight.w400,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  // Title text style
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumRubikBlack900 =>
      theme.textTheme.titleMedium!.rubik.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProTextBlack900 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBlack900SemiBold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Display text style
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmallPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

}
