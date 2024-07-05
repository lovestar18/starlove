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
            color: appTheme.black900,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
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
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: colorScheme.onErrorContainer.withOpacity(0.36),
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
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray40001,
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 48.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w800,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 35.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray90003,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 28.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 22.fSize,
          fontFamily: 'IBM Plex Sans',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF4B39EF),
    primaryContainer: Color(0XFFF7F7F7),
    errorContainer: Color(0XFF40434D),
    onError: Color(0XFF0A7AFF),
    onErrorContainer: Color(0X66FFFFFF),
    onPrimary: Color(0XFF0E0E0E),
    onPrimaryContainer: Color(0XFF9400D3),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amberA200 => Color(0XFFFFDA44);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue100 => Color(0XFFB3DAFF);
  Color get blue50 => Color(0XFFEAF2FF);
  Color get blue500 => Color(0XFF2E8AF6);
  Color get blue600 => Color(0XFF1A93D6);
  Color get blue60001 => Color(0XFF2D9CDB);
  Color get blue60026 => Color(0X262C9CDB);
  Color get blue800 => Color(0XFF1B72C0);
  Color get blueA200 => Color(0XFF4D81E7);
  Color get blueA400 => Color(0XFF2F80ED);
  Color get blueA40001 => Color(0XFF3671FF);
// BlueGray
  Color get blueGray100 => Color(0XFFCCCCCC);
  Color get blueGray10001 => Color(0XFFD8D0E3);
  Color get blueGray10002 => Color(0XFFD4D4D4);
  Color get blueGray200 => Color(0XFFACB5BB);
  Color get blueGray20001 => Color(0XFFB9BDCC);
  Color get blueGray20002 => Color(0XFFAAADB7);
  Color get blueGray300 => Color(0XFF8F8FA6);
  Color get blueGray30001 => Color(0XFF9EA3B2);
  Color get blueGray30002 => Color(0XFFA1A1BC);
  Color get blueGray400 => Color(0XFF898A8D);
  Color get blueGray40001 => Color(0XFF78858F);
  Color get blueGray40002 => Color(0XFF8D8D8D);
  Color get blueGray40003 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFEFF0F6);
  Color get blueGray5001 => Color(0XFFEDF1F3);
  Color get blueGray600 => Color(0XFF536471);
  Color get blueGray60001 => Color(0XFF4E5D7B);
  Color get blueGray60019 => Color(0X19466087);
  Color get blueGray700 => Color(0XFF24546F);
  Color get blueGray70001 => Color(0XFF50555C);
  Color get blueGray800 => Color(0XFF2F394B);
  Color get blueGray80001 => Color(0XFF363B4B);
  Color get blueGray900 => Color(0XFF282B35);
  Color get blueGray90001 => Color(0XFF323436);
  Color get blueGray90002 => Color(0XFF2E3036);
  Color get blueGray90003 => Color(0XFF333333);
  Color get blueGray90004 => Color(0XFF093030);
  Color get blueGray90005 => Color(0XFF363130);
  Color get blueGray90006 => Color(0XFF263238);
// BlueGrayEd
  Color get blueGray100Ed => Color(0XEDD5D7DD);
// BlueGrayd
  Color get blueGray2003d => Color(0X3DB3BBCB);
// Cyan
  Color get cyan400 => Color(0XFF28BAE2);
  Color get cyan40001 => Color(0XFF39D2C0);
  Color get cyanA400 => Color(0XFF01DCEE);
  Color get cyanA40001 => Color(0XFF00D9F5);
// DeepOrange
  Color get deepOrange500 => Color(0XFFFF512F);
// Gray
  Color get gray100 => Color(0XFFF1F1FD);
  Color get gray10001 => Color(0XFFF1FFF2);
  Color get gray10002 => Color(0XFFF2F4F6);
  Color get gray10003 => Color(0XFFF4F4F4);
  Color get gray10004 => Color(0XFFF5F6F8);
  Color get gray10005 => Color(0XFFF0F2F5);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray20001 => Color(0XFFE9E9EB);
  Color get gray20002 => Color(0XFFEBEAEC);
  Color get gray20003 => Color(0XFFECEDEE);
  Color get gray20004 => Color(0XFFEBEBEB);
  Color get gray20005 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFDFDFDF);
  Color get gray30001 => Color(0XFFDBDBDB);
  Color get gray30002 => Color(0XFFE6E6E6);
  Color get gray30003 => Color(0XFFE1E1E1);
  Color get gray30004 => Color(0XFFE3E4E8);
  Color get gray30005 => Color(0XFFDFE2E8);
  Color get gray400 => Color(0XFFBDBDBD);
  Color get gray40001 => Color(0XFFB4B5B6);
  Color get gray50 => Color(0XFFF7F8FD);
  Color get gray500 => Color(0XFF8F9098);
  Color get gray50001 => Color(0XFF9586A8);
  Color get gray50003 => Color(0XFF989898);
  Color get gray5001 => Color(0XFFF8F9FA);
  Color get gray5002 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF717477);
  Color get gray60001 => Color(0XFF6C7278);
  Color get gray60002 => Color(0XFF6C757D);
  Color get gray60003 => Color(0XFF828282);
  Color get gray60004 => Color(0XFF71727A);
  Color get gray60005 => Color(0XFF6F7380);
  Color get gray700 => Color(0XFF545454);
  Color get gray800 => Color(0XFF3C3C43);
  Color get gray900 => Color(0XFF191919);
  Color get gray90001 => Color(0XFF191B23);
  Color get gray90002 => Color(0XFF18191B);
  Color get gray90003 => Color(0XFF111827);
  Color get gray90004 => Color(0XFF232323);
  Color get gray90005 => Color(0XFF1E1E1E);
  Color get gray90006 => Color(0XFF262626);
  Color get gray90007 => Color(0XFF1F2024);
  Color get gray90008 => Color(0XFF232222);
  Color get gray90009 => Color(0XFF001E2F);
  Color get gray90010 => Color(0XFF2A2A2A);
  Color get gray90011 => Color(0XFF1A1C1E);
  Color get gray90012 => Color(0XFF262829);
  Color get gray90013 => Color(0XFF242424);
  Color get gray90014 => Color(0XFF212121);
// Grayd
  Color get gray3003d => Color(0X3DE4E5E7);
// GrayDb
  Color get gray50Db => Color(0XDBF9F9F9);
// Graye
  Color get gray6001e => Color(0X1E767680);
// Green
  Color get green400 => Color(0XFF4CD964);
// Indigo
  Color get indigo300 => Color(0XFF648DDB);
  Color get indigo500 => Color(0XFF5151C6);
  Color get indigo900 => Color(0XFF2D0C57);
  Color get indigo90001 => Color(0XFF05386B);
  Color get indigo90002 => Color(0XFF1B1A57);
  Color get indigoA100 => Color(0XFF888BF4);
  Color get indigoA400 => Color(0XFF375DFB);
  Color get indigoA700 => Color(0XFF1236F3);
// LightBlue
  Color get lightBlue100 => Color(0XFFB1EDFF);
  Color get lightBlue30066 => Color(0X665AC8FA);
  Color get lightBlueA100 => Color(0XFF8ADEFF);
  Color get lightBlueA700 => Color(0XFF007AFF);
  Color get lightBlueA70001 => Color(0XFF006FFD);
// Pink
  Color get pink400 => Color(0XFFC84E89);
  Color get pinkA200 => Color(0XFFF62E8E);
// Purple
  Color get purple900 => Color(0XFF4B0082);
  Color get purpleA700 => Color(0XFFAB1AF0);
// Red
  Color get red300 => Color(0XFFF15F79);
  Color get red30001 => Color(0XFFEF6363);
  Color get red500 => Color(0XFFEB4335);
  Color get redA700 => Color(0XFFD80027);
// Teal
  Color get teal50 => Color(0XFFD7F6F2);
  Color get teal500 => Color(0XFF00B287);
  Color get teal900 => Color(0XFF0E3E3E);
  Color get tealA100 => Color(0XFFA8FFE9);
  Color get tealA400 => Color(0XFF01F4A3);
  Color get tealA40001 => Color(0XFF00F5A0);
// White
  Color get whiteA700 => Color(0XFFFCFCFF);
  Color get whiteA70001 => Color(0XFFFCFCFE);
  Color get whiteA70002 => Color(0XFFFEFEFE);
// Yellow
  Color get yellow400 => Color(0XFFFFE159);
  Color get yellow800 => Color(0XFFF09819);
  Color get yellow80001 => Color(0XFFFFAF19);
}
