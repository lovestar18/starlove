import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get backgroundGreyBackground => BoxDecoration(
        color: appTheme.gray10006,
      );
// Blue decorations
  static BoxDecoration get blue1 => BoxDecoration(
        color: appTheme.blueA40001,
      );
// Blur decorations
  static BoxDecoration get blurLight => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.8),
      );
// Drop decorations
  static BoxDecoration get dropShadow => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray60019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -8,
            ),
          )
        ],
      );
// Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.24),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA40001.withOpacity(0.1),
      );
  static BoxDecoration get fillBlueGrayEd => BoxDecoration(
        color: appTheme.blueGray100Ed,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan40001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA70001,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
      );
// Gradiant decorations
  static BoxDecoration get gradiant3 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1.03),
          colors: [appTheme.lightBlue100, appTheme.cyan400],
        ),
      );
  static BoxDecoration get gradiant5 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1.03),
          colors: [appTheme.tealA100, appTheme.teal500],
        ),
      );
// Gradient decorations
  static BoxDecoration get gradientIndigoAToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.indigoA70001, appTheme.cyan40001],
        ),
      );
  static BoxDecoration get gradientIndigoAToCyan40001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.indigoA70001.withOpacity(0.7), appTheme.cyan40001],
        ),
      );
  static BoxDecoration get gradientIndigoAToCyan400011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.indigoA70001.withOpacity(0.4),
            appTheme.cyan40001.withOpacity(0.4)
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToCyan400012 => BoxDecoration(
        border: Border(
          right: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.indigoA70001, appTheme.cyan40001],
        ),
      );
  static BoxDecoration get gradientIndigoAToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get gradientPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.gray10005
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.indigoA70001
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToIndigoA70001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.indigoA70001
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToIndigoA700011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.indigoA70001
          ],
        ),
      );
// Greyscale decorations
  static BoxDecoration get greyscaleGrey12 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get greyscaleGrey80 => BoxDecoration(
        color: appTheme.gray50,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray20001,
            width: 1.h,
          ),
        ),
      );
// Light decorations
  static BoxDecoration get lightShadow => BoxDecoration();
  static BoxDecoration get lightThemeBackground => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
// Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.gray10005
          ],
        ),
      );
  static BoxDecoration get linearDropShadow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.gray10005
          ],
        ),
      );
// Mainwhite decorations
  static BoxDecoration get mainwhite => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
// Monochromatic decorations
  static BoxDecoration get monochromatic10 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          )
        ],
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray6001901,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        color: appTheme.blueGray20002,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray400,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBluegray4001 => BoxDecoration(
        color: appTheme.blueA400,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray400,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.gray10003,
        border: Border.all(
          color: appTheme.indigo300,
          width: 2.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        border: Border.all(
          color: appTheme.teal50,
          width: 1.h,
        ),
      );
// Secondary decorations
  static BoxDecoration get secondary100 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray5001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray3003d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      );
  static BoxDecoration get secondary100Primary0 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray5001,
          width: 1.h,
        ),
      );
  static BoxDecoration get secondaryDarkGrey => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get secondaryDarkGreySecondaryDarkGrey => BoxDecoration(
        color: appTheme.blueGray90001,
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
        ),
      );
// White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
// Custom borders
  static BorderRadius get customBorderBL18 => BorderRadius.only(
        topLeft: Radius.circular(4.h),
        topRight: Radius.circular(18.h),
        bottomLeft: Radius.circular(18.h),
        bottomRight: Radius.circular(18.h),
      );
  static BorderRadius get customBorderBL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL18 => BorderRadius.only(
        topLeft: Radius.circular(18.h),
        topRight: Radius.circular(18.h),
        bottomLeft: Radius.circular(4.h),
        bottomRight: Radius.circular(18.h),
      );
  static BorderRadius get customBorderTL181 => BorderRadius.only(
        topLeft: Radius.circular(18.h),
        topRight: Radius.circular(18.h),
        bottomLeft: Radius.circular(18.h),
        bottomRight: Radius.circular(4.h),
      );
  static BorderRadius get customBorderTL70 => BorderRadius.vertical(
        top: Radius.circular(70.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL81 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL82 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(8.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
  static BorderRadius get roundedBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder82 => BorderRadius.circular(
        82.h,
      );
}
