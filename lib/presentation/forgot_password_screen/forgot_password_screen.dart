import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/forgot_password_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 16.v),
              child: Column(
                children: [
                  _buildForgotPasswordInfo(),
                  SizedBox(height: 26.v),
                  _buildEmailInputSection(),
                  SizedBox(height: 26.v),
                  _buildResetPasswordButton(),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray20004,
        margin: EdgeInsets.only(
          left: 19.h,
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
  Widget _buildForgotPasswordInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_forgot_password".tr,
            style: CustomTextStyles.titleLargePoppinsGray90005,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_please_enter_your".tr,
            style: CustomTextStyles.titleMediumInterGray50003SemiBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_your_email".tr,
              style: CustomTextStyles.titleMediumInterGray90010SemiBold,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_jacob_welovetokevel_com".tr,
              hintStyle: CustomTextStyles.titleMediumPoppinsGray700Medium,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email";
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResetPasswordButton() {
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
            text: "lbl_reset_password".tr,
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
}
