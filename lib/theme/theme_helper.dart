import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: appTheme.blueGray80033,
          elevation: 15,
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
          return Colors.transparent;
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
        thickness: 1,
        space: 1,
        color: appTheme.black900.withOpacity(0.1),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray90002,
          fontSize: 16.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 13.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: 10.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray200,
          fontSize: 32.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 29.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 24.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 13.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: 10.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 16.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 14.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF4B39EF),
    primaryContainer: Color(0XFFF7F7F7),
    secondaryContainer: Color(0X144B39EF),
    errorContainer: Color(0XFF4B3EEE),
    onError: Color(0XFF05386B),
    onErrorContainer: Color(0X7FFFFFFF),
    onPrimary: Color(0X66FFFFFF),
    onPrimaryContainer: Color(0XFF2A2A2A),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue500 => Color(0XFF2E8AF6);
  Color get blue800 => Color(0XFF1360B1);
  Color get blue900 => Color(0XFF125096);
  Color get blueA400 => Color(0XFF2F80ED);
// BlueGray
  Color get blueGray100 => Color(0XFFD6DCE2);
  Color get blueGray10001 => Color(0XFFD7D7D7);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray300 => Color(0XFF9EA3B2);
  Color get blueGray30001 => Color(0XFF969AA8);
  Color get blueGray30002 => Color(0XFF8F8FA6);
  Color get blueGray400 => Color(0XFF78858F);
  Color get blueGray40001 => Color(0XFF888888);
  Color get blueGray40033 => Color(0X338A959E);
  Color get blueGray50 => Color(0XFFEEF2F3);
  Color get blueGray600 => Color(0XFF3E5B89);
  Color get blueGray60001 => Color(0XFF4E5D7B);
  Color get blueGray60019 => Color(0X19466087);
  Color get blueGray80033 => Color(0X333B3050);
  Color get blueGray900 => Color(0XFF323436);
  Color get blueGray90001 => Color(0XFF022150);
  Color get blueGray90002 => Color(0XFF15224F);
  Color get blueGray90003 => Color(0XFF102C56);
  Color get blueGray90007 => Color(0XFF263238);
// BlueGrayd
  Color get blueGray2003d => Color(0X3DB3BBCB);
// Cyan
  Color get cyan300 => Color(0XFF4CDBE2);
  Color get cyan400 => Color(0XFF3ACDC2);
  Color get cyan40001 => Color(0XFF39D2C0);
// DeepOrange
  Color get deepOrange500 => Color(0XFFFF4B26);
// DeepPurple
  Color get deepPurpleA200 => Color(0XFF736AF1);
// Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray10001 => Color(0XFFF5F6F8);
  Color get gray10002 => Color(0XFFF1FFF2);
  Color get gray10003 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray20001 => Color(0XFFEBEAEC);
  Color get gray20002 => Color(0XFFE8E8E8);
  Color get gray20003 => Color(0XFFECEDEE);
  Color get gray20066 => Color(0X66EEEDED);
  Color get gray300 => Color(0XFFDFDFDF);
  Color get gray30001 => Color(0XFFD6DFEE);
  Color get gray30002 => Color(0XFFE1E1E1);
  Color get gray400 => Color(0XFFBCC2C3);
  Color get gray40001 => Color(0XFFBDBDBD);
  Color get gray40002 => Color(0XFFC3C9CB);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray50001 => Color(0XFF989898);
  Color get gray5002 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF717477);
  Color get gray60001 => Color(0XFF828282);
  Color get gray60002 => Color(0XFF6C757D);
  Color get gray700 => Color(0XFF545454);
  Color get gray800 => Color(0XFF3C3C43);
  Color get gray900 => Color(0XFF191B23);
  Color get gray90001 => Color(0XFF18191B);
  Color get gray90002 => Color(0XFF232323);
  Color get gray90003 => Color(0XFF1E1E1E);
  Color get gray90004 => Color(0XFF242424);
// GrayDb
  Color get gray50Db => Color(0XDBF9F9F9);
// Graye
  Color get gray6001e => Color(0X1E767680);
// Green
  Color get green400 => Color(0XFF4CD964);
  Color get greenA700 => Color(0XFF09B410);
// Indigo
  Color get indigo500 => Color(0XFF5151C6);
  Color get indigo90001 => Color(0XFF05386B);
  Color get indigoA100 => Color(0XFF888BF4);
  Color get indigoA400 => Color(0XFF4B3EEE);
  Color get indigoA700 => Color(0XFF1236F3);
// Indigof
  Color get indigo7007f => Color(0X7F262BBB);
// LightBlue
  Color get lightBlue30066 => Color(0X665AC8FA);
  Color get lightBlue700 => Color(0XFF077AE3);
  Color get lightBlueA100 => Color(0XFF8ADEFF);
  Color get lightBlueA700 => Color(0XFF007AFF);
// LightBluef
  Color get lightBlue4007f => Color(0X7F20ABE7);
// LightGreen
  Color get lightGreen300 => Color(0XFFA5BB80);
// Pink
  Color get pinkA200 => Color(0XFFF62E8E);
// Purple
  Color get purpleA400 => Color(0XFFEA00FF);
// PurpleAf
  Color get purpleA7007f => Color(0X7FA721E8);
// Red
  Color get red400 => Color(0XFFDB4A4A);
  Color get redA200 => Color(0XFFFF6961);
  Color get redA20001 => Color(0XFFFF6060);
  Color get redA700 => Color(0XFFFF0000);
// Teal
  Color get teal90033 => Color(0X33002C51);
  Color get tealA700 => Color(0XFF00D09E);
// White
  Color get whiteA700 => Color(0XFFFEFEFE);
  Color get whiteA70001 => Color(0XFFFEFFFE);
// Yellow
  Color get yellow400 => Color(0XFFFFE159);
  Color get yellow800 => Color(0XFFFFAF19);
}
