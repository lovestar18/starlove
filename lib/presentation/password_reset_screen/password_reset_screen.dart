import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/password_reset_controller.dart'; // ignore_for_file: must_be_immutable

class PasswordResetScreen extends GetWidget<PasswordResetController> {
  const PasswordResetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [_buildPasswordResetForm(), SizedBox(height: 4.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 7.v,
          bottom: 7.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionText() {
    return GestureDetector(
      onTap: () {
        onTapTxtDescriptionText();
      },
      child: Text(
        "msg_create_a_new_password".tr,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyles.titleMediumInterGray50001Medium16,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return CustomTextFormField(
      controller: controller.passwordInputController,
      obscureText: true,
      borderDecoration: TextFormFieldStyleHelper.outlineGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: CustomTextStyles.titleMediumInterGray90008SemiBold,
          ),
          SizedBox(height: 8.v),
          _buildPasswordInput()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput() {
    return CustomTextFormField(
      controller: controller.confirmPasswordInputController,
      textInputAction: TextInputAction.done,
      obscureText: true,
      borderDecoration: TextFormFieldStyleHelper.outlineGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_password".tr,
            style: CustomTextStyles.titleMediumInterGray90008SemiBold,
          ),
          SizedBox(height: 8.v),
          _buildConfirmPasswordInput()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordResetForm() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_set_a_new_password".tr,
            style: CustomTextStyles.titleLargePoppinsGray90004,
          ),
          SizedBox(height: 8.v),
          _buildDescriptionText(),
          SizedBox(height: 34.v),
          _buildPasswordSection(),
          SizedBox(height: 16.v),
          _buildConfirmPasswordSection(),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_update_password".tr,
            buttonStyle: CustomButtonStyles.fillIndigoATL12,
            buttonTextStyle: CustomTextStyles.titleMediumInterPrimary16_1,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapTxtDescriptionText() {}
}
