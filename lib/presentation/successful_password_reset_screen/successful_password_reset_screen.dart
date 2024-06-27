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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 92.v),
          child: Column(
            children: [
              _buildImageSection(),
              SizedBox(height: 82.v),
              _buildMainContentSection(),
              SizedBox(height: 32.v),
              _buildLoginSection(),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 100.adaptSize,
            width: 100.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSuccessMessageSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Text(
            "lbl_successful".tr,
            style: CustomTextStyles.titleLargePoppinsGray90004,
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_congratulations".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumInterGray50001Medium16,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.mainwhite,
      child: Column(
        children: [_buildSuccessMessageSection()],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_login".tr,
      buttonStyle: CustomButtonStyles.fillIndigoATL12,
      buttonTextStyle: CustomTextStyles.titleMediumInterPrimary16_1,
    );
  }

  /// Section Widget
  Widget _buildLoginSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [_buildLoginButton()],
      ),
    );
  }
}
