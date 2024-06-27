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
  static get bodyLargeGothicA1OnPrimaryContainer =>
      theme.textTheme.bodyLarge!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
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
  static get bodyLargeIBMPlexSansPrimary =>
      theme.textTheme.bodyLarge!.iBMPlexSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeInterBluegray600 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 17.fSize,
      );
  static get bodyLargeOpenSans => theme.textTheme.bodyLarge!.openSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSans16 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansBluegray80002 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray80002,
      );
  static get bodyLargeOpenSansBluegray90003 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansErrorContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray60004 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray60004,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray90003 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray90003,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansGray90007 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.gray90007,
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansIndigo90002 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodyLargeOpenSansOnErrorContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeOpenSansPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansRed300 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.red300,
      );
  static get bodyLargePoppinsOnErrorContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
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
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90003,
      );
  static get bodyMediumBluegray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray90004_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get bodyMediumGothicA1OnPrimaryContainer =>
      theme.textTheme.bodyMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60004,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90005,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray90006 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90006,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90009 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90009,
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
  static get bodyMediumInterGray60003 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray60003,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterOnError =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsBluegray90003 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray90003,
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
  static get bodyMediumRobotoPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodySmallBlue60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue60001,
      );
  static get bodySmallBlueA40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA40001,
      );
  static get bodySmallBluegray10002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodySmallBluegray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodySmallBluegray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get bodySmallBluegray60001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray60001.withOpacity(0.6),
      );
  static get bodySmallBluegray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90002.withOpacity(0.6),
      );
  static get bodySmallBluegray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get bodySmallCyanA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyanA400,
      );
  static get bodySmallIndigo90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodySmallIndigo90002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo90002.withOpacity(0.5),
      );
  static get bodySmallIndigoA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA70001,
        fontSize: 10.fSize,
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
  static get bodySmallInterIndigo90002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.indigo90002,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallRalewayBluegray10002 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallRobotoBlueA40001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueA40001,
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
  static get headlineLargeOpenSansGray90007 =>
      theme.textTheme.headlineLarge!.openSans.copyWith(
        color: appTheme.gray90007,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumBluegray80001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 28.fSize,
      );
  static get headlineMediumGothicA1OnPrimaryContainer =>
      theme.textTheme.headlineMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumOpenSans =>
      theme.textTheme.headlineMedium!.openSans.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallInterIndigoA70001 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.indigoA70001,
      );
  static get headlineSmallOpenSansBlack900 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
      );
  static get headlineSmallOpenSansGray90006 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.gray90006,
      );
  static get headlineSmallOpenSansWhiteA700 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.whiteA700,
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
  static get labelLargeInterGray90005 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90005,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterIndigoA70001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.indigoA70001,
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
  static get labelLargeOpenSansBlueA40001 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueA40001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBluegray60001 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray60001.withOpacity(0.6),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansBluegray90003 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray90003,
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
  static get labelLargeOpenSansGray90005 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.gray90005,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansPrimary =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansPrimaryBold =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
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
  static get labelLargeRobotoIndigoA70001 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.indigoA70001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get labelMediumInterBlack900 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumRoboto => theme.textTheme.labelMedium!.roboto;
  static get labelMediumRobotoPrimary =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
// Title text style
  static get titleLargeInterIndigoA70001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.indigoA70001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterPrimaryBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansBluegray90003 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansBluegray90004 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 20.fSize,
      );
  static get titleLargeOpenSansBluegray90004Bold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansGray90003 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.gray90003,
        fontSize: 20.fSize,
      );
  static get titleLargeOpenSansIndigoA70001 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.indigoA70001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansPrimary =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansPrimarySemiBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansPrimarySemiBold20 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansTeal900 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.teal900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansWhiteA700 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsBluegray90003 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsGray90004 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90004,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRalewayPrimary =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGothicA1OnPrimaryContainer =>
      theme.textTheme.titleMedium!.gothicA1.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
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
  static get titleMediumInterGray50001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray50001Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray50001Medium16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray50001SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90008 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90008,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90008SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90008,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90011 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90011,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray9001116 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90011,
        fontSize: 16.fSize,
      );
  static get titleMediumInterGray90011Black =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90011,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray90011Black16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90011,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterIndigo500 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigo500,
        fontSize: 16.fSize,
      );
  static get titleMediumInterIndigoA70001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigoA70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumInterPrimary16_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
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
  static get titleMediumOpenSansGray90003 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90003SemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90006 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90006,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90012 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90012,
        fontSize: 16.fSize,
      );
  static get titleMediumOpenSansIndigo90002 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.indigo90002,
      );
  static get titleMediumOpenSansPrimary =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansPrimarySemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansPrimary_1 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumOpenSansRed300 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.red300,
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
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90009 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90009,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90009_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90009,
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
  static get titleSmallOpenSansBluegray90003 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blueGray90003,
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
  static get titleSmallOpenSansGray90003 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansGray90012 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90012,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansIndigo90002 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.indigo90002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansPrimaryBold =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansPrimaryBold_1 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansTeal900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.teal900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallPrimary_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
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
