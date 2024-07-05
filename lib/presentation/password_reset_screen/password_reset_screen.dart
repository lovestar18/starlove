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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              _buildNewPasswordSection(),
              SizedBox(height: 34.v),
              _buildPasswordSection(),
              SizedBox(height: 16.v),
              _buildConfirmPasswordSection(),
              SizedBox(height: 16.v),
              _buildUpdatePasswordSection(),
              SizedBox(height: 4.v)
            ],
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
        imagePath: ImageConstant.imgArrowLeftGray20004,
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
  Widget _buildNewPasswordSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_set_a_new_password".tr,
            style: CustomTextStyles.titleLargePoppinsGray90005,
          ),
          SizedBox(height: 8.v),
          GestureDetector(
            onTap: () {
              onTapTxtDescription();
            },
            child: Text(
              "msg_create_a_new_password".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumInterGray50003Medium16,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: CustomTextStyles.titleMediumInterGray90010SemiBold,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: CustomTextFormField(
              controller: controller.passwordController,
              obscureText: true,
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_password".tr,
            style: CustomTextStyles.titleMediumInterGray90010SemiBold,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: CustomTextFormField(
              controller: controller.confirmpasswordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdatePasswordSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: Column(
        children: [
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_update_password".tr,
            margin: EdgeInsets.only(right: 10.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
            buttonTextStyle:
                CustomTextStyles.titleMediumInterOnErrorContainer16,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapTxtDescription() {}
}
