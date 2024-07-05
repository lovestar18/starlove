import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_eight.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/password_settings_controller.dart'; // ignore_for_file: must_be_immutable

class PasswordSettingsScreen extends GetWidget<PasswordSettingsController> {
  const PasswordSettingsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 90.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildCurrentPasswordSection(),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "msg_current_password".tr,
                          style: CustomTextStyles.bodyMediumBluegray90004,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildNewPasswordInput(),
                    SizedBox(height: 30.v),
                    _buildConfirmPasswordSection(),
                    SizedBox(height: 74.v),
                    _buildChangePasswordButton()
                  ],
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          child: CustomImageView(
            imagePath: ImageConstant.imgFieldNavigation,
            height: 27.0.v,
            width: 30.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray100011,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 19.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleEight(
        text: "msg_password_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordInputController,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgAirplane,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          obscureText: controller.isShowPassword.value,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
          filled: true,
          fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentPasswordSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_current_password".tr,
              style: CustomTextStyles.bodyMediumBluegray90004,
            ),
          ),
          SizedBox(height: 6.v),
          _buildPasswordInput()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordInput() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.newPasswordInputController,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword1.value =
                  !controller.isShowPassword1.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAirplane,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          obscureText: controller.isShowPassword1.value,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
          filled: true,
          fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordController,
          textInputAction: TextInputAction.done,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword2.value =
                  !controller.isShowPassword2.value;
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgAirplane,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          obscureText: controller.isShowPassword2.value,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
          filled: true,
          fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_current_password".tr,
              style: CustomTextStyles.bodyMediumBluegray90004,
            ),
          ),
          SizedBox(height: 6.v),
          _buildPassword()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePasswordButton() {
    return CustomElevatedButton(
      height: 44.v,
      text: "lbl_change_password".tr,
      margin: EdgeInsets.only(
        left: 62.h,
        right: 58.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL22,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageContainer1Page;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponseScreen;
      case BottomBarEnum.Iconlylightnotification:
        return "/";
      case BottomBarEnum.Iconlylightprofile:
        return AppRoutes.communityForumsHomePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageContainer1Page:
        return HomepageContainer1Page();
      case AppRoutes.communityForumsResponseScreen:
        return CommunityForumsResponseScreen();
      case AppRoutes.communityForumsHomePage:
        return CommunityForumsHomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
