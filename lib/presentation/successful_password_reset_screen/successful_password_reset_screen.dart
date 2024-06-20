import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/successful_password_reset_controller.dart'; // ignore_for_file: must_be_immutable

class SuccessfulPasswordResetScreen
    extends GetWidget<SuccessfulPasswordResetController> {
  const SuccessfulPasswordResetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 790.v,
          padding: EdgeInsets.symmetric(vertical: 92.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame16,
                height: 230.v,
                width: double.maxFinite,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 94.v),
              ),
              _buildSuccessMessageSection(),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 98.adaptSize,
                  width: 98.adaptSize,
                  padding: EdgeInsets.symmetric(vertical: 38.v),
                  decoration: AppDecoration.outlineIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder48,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 16.v,
                        width: 18.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSuccessMessageSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_successful".tr,
              style: CustomTextStyles.titleLargePoppinsGray90004,
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 18.h),
            child: Text(
              "msg_congratulations".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumInterGray50001_1,
            ),
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_login".tr,
            buttonStyle: CustomButtonStyles.fillIndigoATL12,
            buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
          ),
          SizedBox(height: 18.v)
        ],
      ),
    );
  }
}
