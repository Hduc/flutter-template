import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_2 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray60016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeInterBluegray600 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray600 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeNeutrifPro =>
      theme.textTheme.bodyLarge!.neutrifPro.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeRed700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red700,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray600_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumPlusJakartaSans =>
      theme.textTheme.bodyMedium!.plusJakartaSans.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPlusJakartaSans14 =>
      theme.textTheme.bodyMedium!.plusJakartaSans.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodySmallSFProDisplaySecondaryContainer =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Headline text style
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 22.fSize,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWorkSansWhiteA700 =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallAmberA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA700,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallGreenA700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnSecondaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRed700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red700,
      );
  static get titleSmallRed700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get neutrifPro {
    return copyWith(
      fontFamily: 'Neutrif Pro',
    );
  }
}
