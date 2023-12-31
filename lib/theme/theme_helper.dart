import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.indigo5002,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray10002,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 24,
        space: 24,
        color: appTheme.red80001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.red800,
          fontSize: 16.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 11.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 34.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Proxima Nova Alt',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray50002,
          fontSize: 14.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF064782),
    primaryContainer: Color(0XFFD4D4E1),
    secondaryContainer: Color(0XFF064882),

    // Error colors
    errorContainer: Color(0XFFEA2222),
    onError: Color(0XFF0B3F81),
    onErrorContainer: Color(0XFF0D0D0D),

    // On colors(text colors)
    onPrimary: Color(0X1EFFFFFF),
    onPrimaryContainer: Color(0XFF232323),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue30033 => Color(0X3372BBFF);
  Color get blue900 => Color(0XFF1558AC);
  Color get blue90001 => Color(0XFF1658AC);

  // BlueGray
  Color get blueGray200 => Color(0XFFA6AFBC);
  Color get blueGray400 => Color(0XFF7F919D);
  Color get blueGray50 => Color(0XFFEEEEF2);
  Color get blueGray500 => Color(0XFF687890);
  Color get blueGray50001 => Color(0XFF6D7885);
  Color get blueGray50002 => Color(0XFF68778F);
  Color get blueGray700 => Color(0XFF525A6C);

  // Cyan
  Color get cyan700 => Color(0XFF1591AC);

  // Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray10001 => Color(0XFFF5F7FA);
  Color get gray10002 => Color(0XFFF2EEF6);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray30001 => Color(0XFFDBDBDB);
  Color get gray50 => Color(0XFFF8F8F9);
  Color get gray500 => Color(0XFF9A9DA0);
  Color get gray50001 => Color(0XFF979797);
  Color get gray700 => Color(0XFF5F676C);
  Color get gray70001 => Color(0XFF696969);
  Color get gray70002 => Color(0XFF5E5E5E);
  Color get gray70003 => Color(0XFF5E666C);
  Color get gray70004 => Color(0XFF58636A);
  Color get gray900 => Color(0XFF151515);
  Color get gray90019 => Color(0X19161616);
  Color get gray90075 => Color(0X7505113A);

  // Indigo
  Color get indigo100 => Color(0XFFBDCEE0);
  Color get indigo200 => Color(0XFF9FB0C8);
  Color get indigo50 => Color(0XFFDDE5F3);
  Color get indigo5001 => Color(0XFFEAF0F8);
  Color get indigo5002 => Color(0XFFEBF0F8);
  Color get indigo800 => Color(0XFF1C477E);
  Color get indigoA70075 => Color(0X750D42FF);

  // Orange
  Color get orange300 => Color(0XFFFFA95B);

  // Red
  Color get red100 => Color(0XFFFED4D9);
  Color get red400 => Color(0XFFED4844);
  Color get red40001 => Color(0XFFEC5864);
  Color get red50 => Color(0XFFFDEDEF);
  Color get red500 => Color(0XFFE9433F);
  Color get red50001 => Color(0XFFF44336);
  Color get red700 => Color(0XFFD52A25);
  Color get red70001 => Color(0XFFE12626);
  Color get red800 => Color(0XFFCD2127);
  Color get red80001 => Color(0XFFBE3531);
  Color get red80002 => Color(0XFFBD3430);
  Color get redA200 => Color(0XFFFF4848);
  Color get redA20001 => Color(0XFFF93C53);

  // Teal
  Color get teal400 => Color(0XFF1FBF8F);
  Color get teal40001 => Color(0XFF25B286);
  Color get teal50 => Color(0XFFDAE7EF);
  Color get teal700 => Color(0XFF15945E);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();