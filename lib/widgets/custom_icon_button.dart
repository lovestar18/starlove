import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientIndigoAToIndigoTL6 => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [appTheme.indigoA100, appTheme.indigo500],
        ),
      );
  static BoxDecoration get outlineBlueGrayTL16 => BoxDecoration(
        color: appTheme.gray90002,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get radiusTL20 => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
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
                  color: appTheme.blue50,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
