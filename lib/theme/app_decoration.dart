import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGrayEd => BoxDecoration(
        color: appTheme.blueGray100Ed,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001.withOpacity(0.5),
      );
  static BoxDecoration get fillGrayDb => BoxDecoration(
        color: appTheme.gray50Db,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA70001,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.8),
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA200,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientCyanToOnErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0.5),
          end: Alignment(0, 0.5),
          colors: [
            appTheme.cyan40001,
            theme.colorScheme.onErrorContainer.withOpacity(1)
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get gradientLightBlueToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1.03),
          colors: [appTheme.lightBlue100, appTheme.cyan400],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onErrorContainer.withOpacity(1),
            appTheme.gray10003
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [theme.colorScheme.onPrimaryContainer, appTheme.purple900],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.primary, appTheme.cyan40001],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyan40001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.7),
            appTheme.cyan40001
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyan400011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            theme.colorScheme.primary.withOpacity(0.4),
            appTheme.cyan40001.withOpacity(0.4)
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyan400012 => BoxDecoration(
        border: Border(
          right: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.primary, appTheme.cyan40001],
        ),
      );
  static BoxDecoration get gradientTealAToCyanA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [appTheme.tealA40001, appTheme.cyanA40001],
        ),
      );
  static BoxDecoration get gradientTealAToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1.03),
          colors: [appTheme.tealA100, appTheme.teal500],
        ),
      );
// Greyscale decorations
  static BoxDecoration get greyscaleGrey12 => BoxDecoration(
        color: appTheme.gray90001,
      );
// Light decorations
  static BoxDecoration get lightShadow => BoxDecoration();
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
            theme.colorScheme.onErrorContainer.withOpacity(1),
            appTheme.gray10003
          ],
        ),
      );
// Mainwhite decorations
  static BoxDecoration get mainwhite => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
// Monochromatic decorations
  static BoxDecoration get monochromatic10 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
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
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
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
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA70001,
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
        color: theme.colorScheme.onError,
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
  static BoxDecoration get outlineBluegray90001 => BoxDecoration(
        color: appTheme.gray90002,
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray900011 => BoxDecoration(
        color: appTheme.blueGray90001,
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray50Db,
        border: Border(
          top: BorderSide(
            color: appTheme.gray800.withOpacity(0.36),
            width: 1.h,
          ),
        ),
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
  static BorderRadius get circleBorder34 => BorderRadius.circular(
        34.h,
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
  static BorderRadius get customBorderTL8 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL81 => BorderRadius.only(
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
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder82 => BorderRadius.circular(
        82.h,
      );
}
