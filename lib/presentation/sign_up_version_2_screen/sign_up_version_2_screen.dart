import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sign_up_version_2_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpVersion2Screen extends GetWidget<SignUpVersion2Controller> {
  SignUpVersion2Screen({Key? key})
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
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarlove2Transparent01,
                      height: 40.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 76.h),
                    ),
                    SizedBox(height: 6.v),
                    _buildSignupForm(),
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
  Widget _buildFullNameInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_full_name".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.fullNameController,
            hintText: "msg_miram_berenstein".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
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
            hintText: "lbl_miram_gmail_com".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
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
  Widget _buildPhoneNumberInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.phoneNumberController,
            prefix: Padding(
              padding: EdgeInsets.fromLTRB(14.h, 14.v, 30.h, 14.v),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCircleGeorgeCross,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.fromLTRB(14.h, 14.v, 30.h, 14.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsRedA700,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsupAmberA200,
                    height: 8.75.v,
                    width: 6.05.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                  )
                ],
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 46.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_set_password".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "msg_gefiltefishlover18".tr,
              hintStyle: CustomTextStyles.titleSmallGray90009_1,
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
  Widget _buildSignupForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftGray90009,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.centerLeft,
            onTap: () {
              onTapImgArrowleftone();
            },
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_sign_up2".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "msg_already_have_an".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtLogin();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_login".tr,
                      style: CustomTextStyles.labelLargeInterIndigoA70001,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 26.v),
          _buildFullNameInput(),
          SizedBox(height: 18.v),
          _buildEmailInput(),
          SizedBox(height: 18.v),
          _buildPhoneNumberInput(),
          SizedBox(height: 18.v),
          _buildPasswordInput(),
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
              height: 48.v,
              text: "lbl_register".tr,
              buttonStyle: CustomButtonStyles.outline,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary,
              onPressed: () {
                onTapRegister();
              },
            ),
          ),
          SizedBox(height: 26.v),
          Text(
            "msg_by_continuing_you".tr,
            style: CustomTextStyles.labelLargeInter,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.back();
  }

  /// Navigates to the loginVersion2Screen when the action is triggered.
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.loginVersion2Screen,
    );
  }

  /// Navigates to the applicationScreen when the action is triggered.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.applicationScreen,
    );
  }
}
