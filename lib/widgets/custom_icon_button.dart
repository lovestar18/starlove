import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientIndigoAToIndigo => BoxDecoration(
        borderRadius: BorderRadius.circular(14.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.15),
          width: 0.h,
        ),
      );
  static BoxDecoration get outlineTL14 => BoxDecoration(
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get outlineBlueGrayTL161 => BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryTL10 => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryTL16 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.07),
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get outlineOnPrimaryTL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 0.h,
        ),
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(16.h),
                  border: Border.all(
                    color: appTheme.blueGray100,
                    width: 0.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
