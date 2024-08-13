import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get backgroundGreyBackground => BoxDecoration(
        color: appTheme.gray10001,
      );
// Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.62),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90003,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: appTheme.blueGray90001.withOpacity(0.1),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGrayDb => BoxDecoration(
        color: appTheme.gray50Db,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.05),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
// Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900.withOpacity(0.74),
            appTheme.black900.withOpacity(0)
          ],
        ),
      );
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [appTheme.blue900, appTheme.cyan300, appTheme.blue800],
        ),
      );
  static BoxDecoration get gradientErrorContainerToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
        ),
      );
  static BoxDecoration get gradientErrorContainerToCyan400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
        ),
      );
  static BoxDecoration get gradientIndigoAToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.indigoA400, appTheme.cyan40002],
        ),
      );
  static BoxDecoration get gradientIndigoAToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimary,
            theme.colorScheme.onPrimary.withOpacity(0.03)
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            theme.colorScheme.primary.withOpacity(0.4),
            appTheme.cyan40001.withOpacity(0.4)
          ],
        ),
      );
  static BoxDecoration get gradientTo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [],
        ),
      );
  static BoxDecoration get gradientTo1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [],
        ),
      );
// Greyscale decorations
  static BoxDecoration get greyscaleGrey12 => BoxDecoration(
        color: appTheme.gray900,
      );
// Light decorations
  static BoxDecoration get lightShadow => BoxDecoration();
// Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            appTheme.gray100
          ],
        ),
      );
// Mainwhite decorations
  static BoxDecoration get mainwhite => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
// Monochromatic decorations
  static BoxDecoration get monochromatic10 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
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
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 0.5.h,
        ),
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20004 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          right: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50001.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        color: appTheme.gray50Db,
        border: Border(
          top: BorderSide(
            color: appTheme.gray800.withOpacity(0.36),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(0.49),
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();
// White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
// Custom borders
  static BorderRadius get customBorderBL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.horizontal(
        left: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL301 => BorderRadius.only(
        topLeft: Radius.circular(30.h),
        topRight: Radius.circular(30.h),
        bottomRight: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(8.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
