import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get iBMPlexSans {
    return copyWith(
      fontFamily: 'IBM Plex Sans',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get gothicA1 {
    return copyWith(
      fontFamily: 'Gothic A1',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeGothicA1OnPrimary =>
      theme.textTheme.bodyLarge!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60002,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60003,
        fontSize: 17.fSize,
      );
  static get bodyLargeIBMPlexSans =>
      theme.textTheme.bodyLarge!.iBMPlexSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeIBMPlexSansOnErrorContainer =>
      theme.textTheme.bodyLarge!.iBMPlexSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeInterBluegray600 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeInterGray50001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 17.fSize,
      );
  static get bodyLargeOpenSans => theme.textTheme.bodyLarge!.openSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSans16 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansBluegray30001 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansBluegray80001 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyLargeOpenSansBluegray90004 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray60005 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray60005,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray90001 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeOpenSansGray90004 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray90004,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray90009 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray90009,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansIndigo90002 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodyLargeOpenSansOnErrorContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansRed30001 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.red30001,
      );
  static get bodyLargePoppinsGray90001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeSFProTextGray800 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray800.withOpacity(0.3),
        fontSize: 17.fSize,
      );
  static get bodyLargeSFProTextLightblueA700 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get bodyMediumBluegray90005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray90005_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90005,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumGothicA1OnPrimary =>
      theme.textTheme.bodyMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60005,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90004,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90006 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90006,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray90008 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90008,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90011 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90011,
        fontSize: 14.fSize,
      );
  static get bodyMediumIndigo90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumIndigo90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray60001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray60003 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray60003,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterOnErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsBluegray90004 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRobotoBluegray40001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray40002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoGray60002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray60002,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumSFProText =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        fontSize: 13.fSize,
      );
  static get bodySmallBlue60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue60001,
      );
  static get bodySmallBlueA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodySmallBluegray10002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodySmallBluegray30002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30002,
      );
  static get bodySmallBluegray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get bodySmallBluegray60001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray60001.withOpacity(0.6),
      );
  static get bodySmallBluegray90005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90005,
      );
  static get bodySmallCyanA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyanA400,
      );
  static get bodySmallIndigo90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodySmallInterGray60001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallInterGray60003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60003,
      );
  static get bodySmallInterGray60004 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60004,
      );
  static get bodySmallInterIndigo90002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodySmallInterOnErrorContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallRalewayBluegray10002 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallRobotoBlueA400 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueA400,
      );
// Display text style
  static get displayMediumRoboto =>
      theme.textTheme.displayMedium!.roboto.copyWith(
        fontWeight: FontWeight.w900,
      );
// Headline text style
  static get headlineLargeOpenSansBlack900 =>
      theme.textTheme.headlineLarge!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 30.fSize,
      );
  static get headlineLargeOpenSansGray90009 =>
      theme.textTheme.headlineLarge!.openSans.copyWith(
        color: appTheme.gray90009,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 29.fSize,
      );
  static get headlineMediumGothicA1OnPrimary =>
      theme.textTheme.headlineMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumOpenSansBlack900 =>
      theme.textTheme.headlineMedium!.openSans.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallInterPrimary =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallOpenSansBlack900 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
      );
  static get headlineSmallOpenSansGray90008 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.gray90008,
      );
  static get headlineSmallOpenSansWhiteA70001 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallTealA40001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.tealA40001,
        fontSize: 25.fSize,
      );
// Label style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargeInterBlueA200 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterBluegray60001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray60001,
      );
  static get labelLargeInterGray90006 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90006,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray90007 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90007,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterLightblueA70001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBlack900 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBlueA400 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBluegray60001 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray60001.withOpacity(0.6),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBluegray90004 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansGray20002 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.gray20002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansGray60003 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.gray60003,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansGray90006 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.gray90006,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansOnErrorContainer =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansOnErrorContainerBold =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRobotoBlack900 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoCyan40001 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.cyan40001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoIndigoA100 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.indigoA100,
      );
  static get labelLargeRobotoOnErrorContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeRobotoPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProTextBlack900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack90013 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelMediumInterBlack900 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterOnErrorContainer =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get labelMediumRoboto => theme.textTheme.labelMedium!.roboto;
  static get labelMediumRobotoOnErrorContainer =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
// Title text style
  static get titleLargeInterOnErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterOnErrorContainerBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansBluegray90004 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansBluegray90005 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 20.fSize,
      );
  static get titleLargeOpenSansBluegray90005Bold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansGray90004 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.gray90004,
        fontSize: 20.fSize,
      );
  static get titleLargeOpenSansGray90007 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.gray90007,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansGray9000720 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.gray90007,
        fontSize: 20.fSize,
      );
  static get titleLargeOpenSansOnErrorContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansOnErrorContainerSemiBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansOnErrorContainerSemiBold20 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansPrimary =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansTeal900 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.teal900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansWhiteA70001 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsBluegray90004 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsGray90005 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90005,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRalewayOnErrorContainer =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGothicA1OnPrimary =>
      theme.textTheme.titleMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray400 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray400Black =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray400Black16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray50003 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray50003Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray50003Medium16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray50003SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90010 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90010,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90010SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90010,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90013 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90013,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray9001316 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90013,
        fontSize: 16.fSize,
      );
  static get titleMediumInterGray90013Black =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90013,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray90013Black16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90013,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterIndigo500 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigo500,
        fontSize: 16.fSize,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnErrorContainer16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumInterOnErrorContainer16_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOpenSans =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumOpenSansGray600 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get titleMediumOpenSansGray90004 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90004SemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90004,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90008 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90008,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90014 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90014,
        fontSize: 16.fSize,
      );
  static get titleMediumOpenSansIndigo90002 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.indigo90002,
      );
  static get titleMediumOpenSansOnErrorContainer =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansOnErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOpenSansRed30001 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.red30001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSans_1 => theme.textTheme.titleMedium!.openSans;
  static get titleMediumPoppinsGray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray700Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProTextLightblueA700 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90011 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90011,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90011_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90011,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOnErrorContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOnErrorContainer_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOpenSans =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansBlack900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansBlue500 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blue500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansBluegray90004 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansBold =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansGray400 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansGray90004 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansGray90014 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90014,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansIndigo90002 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.indigo90002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansOnErrorContainer =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansOnErrorContainerBold =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansOnErrorContainerBold_1 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansTeal900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.teal900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsBluegray90004 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsBluegray90005 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsTeal900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.teal900,
        fontSize: 15.fSize,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRoboto15 => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}
