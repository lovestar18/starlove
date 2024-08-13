import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/password_settings_one_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PasswordSettingsOneScreen
    extends GetWidget<PasswordSettingsOneController> {
  PasswordSettingsOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildHeaderImageSection(),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 34.v,
                    ),
                    child: Column(
                      children: [
                        _buildCurrentPasswordField(),
                        SizedBox(height: 14.v),
                        _buildNewPasswordField(),
                        SizedBox(height: 14.v),
                        _buildConfirmPasswordField(),
                        SizedBox(height: 4.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveChangesButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderImageSection() {
    return SizedBox(
      height: 60.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomAppBar(
            height: 36.v,
            leadingWidth: 54.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(
                left: 20.h,
                bottom: 2.v,
              ),
              onTap: () {
                onTapArrowleftthree();
              },
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Column(
                children: [
                  AppbarSubtitleTwo(
                    text: "lbl_9_41".tr,
                    margin: EdgeInsets.only(right: 218.h),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Row(
                      children: [
                        AppbarTitleImage(
                          imagePath: ImageConstant.imgArrowLeftGray10002,
                          margin: EdgeInsets.only(top: 13.v),
                          onTap: () {
                            onTapArrowleftone();
                          },
                        ),
                        AppbarSubtitleOne(
                          text: "lbl_change_password".tr,
                          margin: EdgeInsets.only(
                            left: 41.h,
                            bottom: 5.v,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle602660x374,
            height: 60.v,
            width: double.maxFinite,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentPasswordField() {
    return Obx(
      () => CustomFloatingTextField(
        controller: controller.currentPasswordFieldController,
        labelText: "msg_current_password".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "msg_current_password".tr,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword.value,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 60.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordField() {
    return Obx(
      () => CustomFloatingTextField(
        controller: controller.newPasswordFieldController,
        labelText: "lbl_new_password".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_new_password".tr,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword1.value,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword1.value =
                !controller.isShowPassword1.value;
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 60.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField() {
    return Obx(
      () => CustomFloatingTextField(
        controller: controller.confirmPasswordFieldController,
        labelText: "msg_confirm_password".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword2.value,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword2.value =
                !controller.isShowPassword2.value;
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 60.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChangesButton() {
    return CustomElevatedButton(
      text: "lbl_save_changes2".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 36.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftthree() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
