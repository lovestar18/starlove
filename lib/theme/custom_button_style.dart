import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueATL18 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA40001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillBlueATL182 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get fillBlueATL183 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              18.h,
            ),
            topRight: Radius.circular(
              4.h,
            ),
            bottomLeft: Radius.circular(
              18.h,
            ),
            bottomRight: Radius.circular(
              18.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueATL41 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillCyan => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan40001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillGrayBL161 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              16.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillGrayLR18 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              4.h,
            ),
            topRight: Radius.circular(
              18.h,
            ),
            bottomLeft: Radius.circular(
              4.h,
            ),
            bottomRight: Radius.circular(
              18.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillGrayTL14 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90012,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  static ButtonStyle get fillGrayTL161 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillGrayTL18 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              18.h,
            ),
            topRight: Radius.circular(
              18.h,
            ),
            bottomLeft: Radius.circular(
              4.h,
            ),
            bottomRight: Radius.circular(
              18.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  static ButtonStyle get fillOnErrorContainerTL22 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillPinkA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.pinkA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL12 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL22 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL26 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get fillTeal => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
// Gradient button style
  static BoxDecoration get gradientDeepOrangeToYellowDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [appTheme.deepOrange500, appTheme.yellow800],
        ),
      );
  static BoxDecoration get gradientIndigoAToIndigoDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 0),
          end: Alignment(0.0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get gradientLightBlueToCyanDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [appTheme.lightBlue100, appTheme.cyan400],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToPurpleDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [theme.colorScheme.onPrimaryContainer, appTheme.purple900],
        ),
      );
  static BoxDecoration get gradientPinkToRedDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [appTheme.pink400, appTheme.red300],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyanDecoration => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            theme.colorScheme.primary.withOpacity(0.4),
            appTheme.cyan40001.withOpacity(0.4)
          ],
        ),
      );
  static BoxDecoration get gradientTealAToCyanATL18Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [appTheme.tealA40001, appTheme.cyanA40001],
        ),
      );
// Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.black900,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get outlineBlueATL4 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.blueA400,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL10 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.blueGray50,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL161 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray90002,
        side: BorderSide(
          color: appTheme.blueGray90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL222 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray90002,
        side: BorderSide(
          color: appTheme.blueGray90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL223 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray90002,
        side: BorderSide(
          color: appTheme.blueGray90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get outlineGray1 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray10005,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlineTL101 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineTL121 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0),
      side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent)));
}
