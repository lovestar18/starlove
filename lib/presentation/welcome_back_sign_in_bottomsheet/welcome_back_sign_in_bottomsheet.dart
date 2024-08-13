import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/welcome_back_sign_in_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class WelcomeBackSignInBottomsheet extends StatelessWidget {
  WelcomeBackSignInBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  WelcomeBackSignInController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_welcome_back".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_sign_in_to_access".tr,
            style: CustomTextStyles.bodyMediumBluegray600,
          ),
          SizedBox(height: 18.v),
          _buildEmailField(),
          SizedBox(height: 12.v),
          _buildPasswordField(),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 252.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Text(
                "msg_occch_this_is_not".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumRedA200Bold,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          _buildRememberMeRow(),
          SizedBox(height: 14.v),
          _buildSignInButton(),
          SizedBox(height: 16.v),
          _buildAlternativeSignInRow(),
          SizedBox(height: 24.v),
          _buildSocialSignInRow(),
          SizedBox(height: 18.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: CustomFloatingTextField(
        controller: controller.emailFieldController,
        labelText: "lbl_email2".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_email2".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email";
          }
          return null;
        },
        contentPadding: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 12.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordFieldController,
          hintText: "lbl_password2".tr,
          hintStyle: CustomTextStyles.bodySmallInter12,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 22.v, 16.h, 22.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 70.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password";
            }
            return null;
          },
          obscureText: controller.isShowPassword.value,
          contentPadding: EdgeInsets.only(
            left: 14.h,
            top: 26.v,
            bottom: 26.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Obx(
              () => CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: controller.rememberMe.value,
                onChange: (value) {
                  controller.rememberMe.value = value;
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "msg_oy_i_forgot_my".tr,
              style: CustomTextStyles.labelLargePrimaryMedium12,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButton() {
    return CustomElevatedButton(
      text: "lbl_sign_in".tr,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
    );
  }

  /// Section Widget
  Widget _buildAlternativeSignInRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Divider(
                color: appTheme.gray200,
              ),
            ),
          ),
          SizedBox(width: 16.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_or_sign_in_with".tr,
              style: CustomTextStyles.bodySmall12,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Divider(
                color: appTheme.gray200,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleSignInButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 56.v,
        text: "lbl_google".tr,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 4.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogleDeepOrange500,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL101,
        buttonTextStyle: CustomTextStyles.titleSmall_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildAppleSignInButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 56.v,
        text: "lbl_apple".tr,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 2.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameBlack900,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL101,
        buttonTextStyle: CustomTextStyles.titleSmall_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialSignInRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      width: double.maxFinite,
      child: Row(
        children: [
          _buildGoogleSignInButton(),
          SizedBox(width: 8.h),
          _buildAppleSignInButton()
        ],
      ),
    );
  }
}
