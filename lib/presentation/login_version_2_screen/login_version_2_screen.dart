import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/login_version_2_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginVersion2Screen extends GetWidget<LoginVersion2Controller> {
  LoginVersion2Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.indigoA70001, appTheme.cyan40001],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 20.v,
                  right: 14.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarlove2Transparent01,
                      height: 64.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 82.h,
                        right: 64.h,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildLoginForm(),
                    SizedBox(height: 4.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_loisbecket_gmail_com".tr,
            hintStyle: CustomTextStyles.titleSmallGray90010_1,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInputField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "lbl".tr,
              hintStyle: CustomTextStyles.titleSmallGray90010_1,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEyeoff,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 46.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              contentPadding: EdgeInsets.only(
                left: 14.h,
                top: 14.v,
                bottom: 14.v,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl_login".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 10.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 56.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "msg_don_t_have_an_account".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(width: 6.h),
                GestureDetector(
                  onTap: () {
                    onTapTxtSignup();
                  },
                  child: Text(
                    "lbl_sign_up".tr,
                    style: CustomTextStyles.labelLargeInterIndigoA70001,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 26.v),
          _buildEmailInputField(),
          SizedBox(height: 18.v),
          _buildPasswordInputField(),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_remember_me".tr,
                    value: controller.rememberMe.value,
                    onChange: (value) {
                      controller.rememberMe.value = value;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtForgotpassword();
                    },
                    child: Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.labelLargeInterBlueA200,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          OutlineGradientButton(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 1.v,
              right: 1.h,
              bottom: 1.v,
            ),
            strokeWidth: 1.h,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [theme.colorScheme.primary, theme.colorScheme.primary],
            ),
            corners: Corners(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: CustomOutlinedButton(
              text: "lbl_log_in2".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientPrimaryToPrimaryDecoration,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary_2,
              onPressed: () {
                onTapLogin();
              },
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Divider(
                      color: appTheme.blueGray5001,
                    ),
                  ),
                ),
                SizedBox(width: 16.h),
                Text(
                  "lbl_or".tr,
                  style: CustomTextStyles.bodySmallInterGray60001,
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Divider(
                      color: appTheme.blueGray5001,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomOutlinedButton(
            text: "msg_continue_with_google".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            buttonTextStyle: CustomTextStyles.titleSmallGray90010,
            onPressed: () {
              onTapContinuewith();
            },
          ),
          SizedBox(height: 14.v),
          CustomOutlinedButton(
            text: "msg_continue_with_apple".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            buttonTextStyle: CustomTextStyles.titleSmallGray90010,
            onPressed: () {
              onTapContinuewith1();
            },
          ),
          SizedBox(height: 16.v),
          GestureDetector(
            onTap: () {
              onTapTxtBycontinuing();
            },
            child: Text(
              "msg_by_continuing_you".tr,
              style: CustomTextStyles.labelLargeInter,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the signUpVersion2Screen when the action is triggered.
  onTapTxtSignup() {
    Get.toNamed(
      AppRoutes.signUpVersion2Screen,
    );
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homepageContainerScreen,
    );
  }

  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapContinuewith1() {
    Get.toNamed(
      AppRoutes.homepageContainerScreen,
    );
  }

  /// Navigates to the eulaScreen when the action is triggered.
  onTapTxtBycontinuing() {
    Get.toNamed(
      AppRoutes.eulaScreen,
    );
  }
}
