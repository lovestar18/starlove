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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 16.v,
              ),
              child: Column(
                children: [_buildForgotPasswordForm(), SizedBox(height: 4.v)],
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
        imagePath: ImageConstant.imgArrowLeft,
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
  Widget _buildInstructionText() {
    return Text(
      "msg_please_enter_your".tr,
      style: CustomTextStyles.titleMediumInterGray50001SemiBold,
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: controller.emailInputController,
      hintText: "msg_jacob_welovetokevel_com".tr,
      hintStyle: CustomTextStyles.titleMediumPoppinsGray700Medium,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      borderDecoration: TextFormFieldStyleHelper.outlineGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_your_email".tr,
              style: CustomTextStyles.titleMediumInterGray90008SemiBold,
            ),
          ),
          SizedBox(height: 8.v),
          _buildEmailInput()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResetPasswordButton() {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_reset_password".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      buttonStyle: CustomButtonStyles.fillIndigoATL12,
      buttonTextStyle: CustomTextStyles.titleMediumInterPrimary16_1,
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordForm() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "lbl_forgot_password".tr,
                style: CustomTextStyles.titleLargePoppinsGray90004,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          _buildInstructionText(),
          SizedBox(height: 28.v),
          _buildEmailSection(),
          SizedBox(height: 26.v),
          _buildResetPasswordButton()
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
