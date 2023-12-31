import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray70002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70002,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimary17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 17.fSize,
      );
  static get bodyLargeOnPrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.8),
      );
  static get bodyMediumOpenSans => theme.textTheme.bodyMedium!.openSans;
  static get bodyMediumOpenSansBlack900 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumOpenSansGray70001 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumRubikBluegray500 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.blueGray500,
        fontSize: 13.fSize,
      );
  static get bodySmallOpenSans => theme.textTheme.bodySmall!.openSans;
  static get bodySmallOpenSansBluegray50001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray50001,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray50002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray50002,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray5000212 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray50002,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansErrorContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansOnPrimary =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.9),
        fontSize: 10.fSize,
      );
  // Cera text style
  static get ceraProBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.37),
        fontSize: 74.fSize,
        fontWeight: FontWeight.w900,
      ).ceraPro;
  // Headline text style
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineSmallProximaNovaAlt =>
      theme.textTheme.headlineSmall!.proximaNovaAlt;
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
      );
  static get labelLargeBluegray50002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray50002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansOnPrimary =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeOnPrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed80002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red80002,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumDMSansIndigo800 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.indigo800,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumDMSansPrimary =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumDMSansRed800 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  // Title style
  static get titleLargeDMSans => theme.textTheme.titleLarge!.dMSans;
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGray900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimary18_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRed800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProText => theme.textTheme.titleMedium!.sFProText;
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get titleSmallBlack90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDMSansOnPrimary =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray70004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70004,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red800,
      );
}

extension on TextStyle {
  TextStyle get ceraPro {
    return copyWith(
      fontFamily: 'Cera Pro',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get proximaNovaAlt {
    return copyWith(
      fontFamily: 'Proxima Nova Alt',
    );
  }
}
