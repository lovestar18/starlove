import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
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

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get quicksand {
    return copyWith(
      fontFamily: 'Quicksand',
    );
  }

  TextStyle get leagueSpartan {
    return copyWith(
      fontFamily: 'League Spartan',
    );
  }

  TextStyle get quando {
    return copyWith(
      fontFamily: 'Quando',
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
  // Body style
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;
  static get bodyLargeOpenSansBluegray300 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeOpenSansOnPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeRobotoBlack900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get bodyLargeRobotoBlack900_1 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeRobotoGray60002 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyLargeRobotoGray60003 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray60003,
        fontSize: 17.fSize,
      );
  static get bodyLargeSFProTextGray800 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray800.withOpacity(0.3),
        fontSize: 17.fSize,
      );
  static get bodyLargeSFProTextLightblueA700 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 18.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray30001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray3000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray3000114_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray30001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray300,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterBluegray30001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumInterBluegray3000114 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray90005 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray60001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInter_1 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInter_2 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInter_3 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimary_2 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumQuicksandBluegray300 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 14.fSize,
      );
  static get bodyMediumQuicksandBluegray30013 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 13.fSize,
      );
  static get bodyMediumQuicksandBluegray30014 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 14.fSize,
      );
  static get bodyMediumQuicksandBluegray600 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumQuicksandBluegray90005 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 13.fSize,
      );
  static get bodyMediumQuicksandBluegray9000513 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 13.fSize,
      );
  static get bodyMediumQuicksandBluegray9000513_1 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 13.fSize,
      );
  static get bodyMediumQuicksandIndigo90001 =>
      theme.textTheme.bodyMedium!.quicksand.copyWith(
        color: appTheme.indigo90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoBluegray400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoGray60002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray60002,
        fontSize: 14.fSize,
      );
  static get bodyMediumSFProTextBlack900 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMedium_2 => theme.textTheme.bodyMedium!;
  static get bodyMedium_3 => theme.textTheme.bodyMedium!;
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray9000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray9000112_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static get bodySmallGray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200.withOpacity(0.62),
        fontSize: 12.fSize,
      );
  static get bodySmallGray20012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
        fontSize: 12.fSize,
      );
  static get bodySmallGray200_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static get bodySmallInter12 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallInterBluegray300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static get bodySmallInterBluegray300_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallInterBluegray90001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBluegray90005 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray90005,
      );
  static get bodySmallInterGray200 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray200.withOpacity(0.62),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallQuicksandBluegray300 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallQuicksandBluegray30010 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static get bodySmallQuicksandBluegray30011 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 11.fSize,
      );
  static get bodySmallQuicksandBluegray300_1 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallQuicksandBluegray90005 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.blueGray90005,
      );
  static get bodySmallQuicksandRedA20001 =>
      theme.textTheme.bodySmall!.quicksand.copyWith(
        color: appTheme.redA20001,
      );
// Headline text style
  static get headlineSmallGray200 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray200,
        fontSize: 25.fSize,
      );
  static get headlineSmallGray200Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray200,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallQuandoGray200 =>
      theme.textTheme.headlineSmall!.quando.copyWith(
        color: appTheme.gray200,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
// Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray30001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelLargeBluegray30001Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray30001Medium12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargeInterBluegray30001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBluegray30001_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelLargeInterMedium =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterOnPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInter_1 => theme.textTheme.labelLarge!.inter;
  static get labelLargeLeagueSpartanOnErrorContainer =>
      theme.textTheme.labelLarge!.leagueSpartan.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansOnPrimary =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSansOnPrimaryBold =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary12 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryMedium => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimaryMedium12 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimaryMedium12_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeQuicksand => theme.textTheme.labelLarge!.quicksand;
  static get labelLargeQuicksand12 =>
      theme.textTheme.labelLarge!.quicksand.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeQuicksandPrimary12 =>
      theme.textTheme.labelLarge!.quicksand.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get labelLargeQuicksandPrimaryMedium =>
      theme.textTheme.labelLarge!.quicksand.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeQuicksand_1 => theme.textTheme.labelLarge!.quicksand;
  static get labelLargeSFProTextBlack900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeSFProTextBlack900Medium =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumBluegray90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get labelMediumGray200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumInter => theme.textTheme.labelMedium!.inter.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumInter11 => theme.textTheme.labelMedium!.inter.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumInterOnPrimary =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPlusJakartaSansOnPrimary =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumQuicksandBluegray300 =>
      theme.textTheme.labelMedium!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumQuicksandBluegray300SemiBold =>
      theme.textTheme.labelMedium!.quicksand.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumQuicksandPrimary =>
      theme.textTheme.labelMedium!.quicksand.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001Medium_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBluegray90005 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90005,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90005Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90005,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOpenSansPrimary =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePoppinsGray90003 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCyan400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray200,
        fontSize: 18.fSize,
      );
  static get titleMediumGray200Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray200_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray200,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90004Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray50001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumInterGray90004 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterGray90012 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90012,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumInterOnPrimary_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOpenSansBlack900 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansGray600 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansOnPrimary =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOpenSansOnPrimary18 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsGray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumQuicksandCyan40002 =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: appTheme.cyan40002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandGray20004SemiBold =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: appTheme.gray20004,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumQuicksandGray40001 =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandGray90012 =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: appTheme.gray90012,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandGray90012Bold =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: appTheme.gray90012,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandOnErrorContainer =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandPrimary =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumQuicksandPrimarySemiBold =>
      theme.textTheme.titleMedium!.quicksand.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRedA200Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProTextBlack900 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumSFProTextLightblueA700 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 18.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray20002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray20002,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOnPrimary_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOpenSansBlue500 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blue500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSansOnPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallQuicksandGray20005 =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        color: appTheme.gray20005,
      );
  static get titleSmallQuicksandGray90005 =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallQuicksandGray90005_1 =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        color: appTheme.gray90005,
      );
  static get titleSmallQuicksandOnErrorContainer =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallQuicksandPrimary =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}
