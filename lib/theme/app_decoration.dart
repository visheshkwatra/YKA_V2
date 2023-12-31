import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5002,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900,
            appTheme.black900,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray50,
            theme.colorScheme.primaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray100,
            appTheme.gray300,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray50,
            appTheme.teal50,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToBlue => BoxDecoration(
        border: Border.all(
          color: appTheme.blue90001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            theme.colorScheme.onError,
            appTheme.blue900,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            theme.colorScheme.onError,
            appTheme.cyan700,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.redA20001,
            appTheme.red80002,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.red50,
            appTheme.red100,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0.01, 0.33),
          colors: [
            appTheme.red70001,
            appTheme.redA200,
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToSecondaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.secondaryContainer.withOpacity(0),
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientTealToTeal => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.1),
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal400,
            appTheme.teal700,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outlineRed => BoxDecoration(
        border: Border.all(
          color: appTheme.red800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
