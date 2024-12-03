import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/logout_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogoutDialog extends StatelessWidget {
  LogoutDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 44.h,
            vertical: 40.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "lbl_logout2".tr,
                style: CustomTextStyles.titleLargeOpenSansTeal900,
              ),
              SizedBox(height: 76.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "msg_are_you_sure_you3".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeOpenSansBluegray90003,
                ),
              ),
              SizedBox(height: 74.v),
              CustomElevatedButton(
                height: 44.v,
                text: "lbl_yes_logout".tr,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 14.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyan,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOpenSansBluegray90002,
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                height: 44.v,
                text: "lbl_cancel2".tr,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 14.h,
                ),
                buttonStyle: CustomButtonStyles.fillTeal,
                buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
              ),
              SizedBox(height: 8.v)
            ],
          ),
        )
      ],
    );
  }
}
