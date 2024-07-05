import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../custom_elevated_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({Key? key, this.margin, this.onTap})
      : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 24.v,
          text: "msg_groups_dashboard".tr,
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToCyanDecoration,
          buttonTextStyle: CustomTextStyles.titleLargeOpenSansOnErrorContainer,
        ),
      ),
    );
  }
}
