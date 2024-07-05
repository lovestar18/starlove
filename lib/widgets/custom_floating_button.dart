import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {Key? key,
      this.alignment,
      this.backgroundColor,
      this.onTap,
      this.shape,
      this.width,
      this.height,
      this.decoration,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final ShapeBorder? shape;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: fabWidget)
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: backgroundColor,
        onPressed: onTap,
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26.h),
            ),
        child: Container(
          alignment: Alignment.center,
          width: width ?? 0,
          height: height ?? 0,
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(26.h),
                gradient: LinearGradient(
                  begin: Alignment(1.0, 1),
                  end: Alignment(0.0, 0),
                  colors: [appTheme.indigoA100, appTheme.indigo500],
                ),
              ),
          child: child,
        ),
      );
}
