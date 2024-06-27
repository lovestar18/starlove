import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_seven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 90.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildChangePasswordSection(), SizedBox(height: 22.v)],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
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
        imagePath: ImageConstant.imgArrowLeftGray10001,
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
      title: AppbarSubtitleSeven(
        text: "msg_password_settings".tr,
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
          Text(
            "msg_current_password".tr,
            style: CustomTextStyles.bodyMediumBluegray90003,
          ),
          SizedBox(height: 6.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplaneTeal900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              obscureText: controller.isShowPassword.value,
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
            ),
          ),
          SizedBox(height: 30.v),
          Text(
            "msg_current_password".tr,
            style: CustomTextStyles.bodyMediumBluegray90003,
          ),
          SizedBox(height: 6.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.password1Controller,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword1.value =
                      !controller.isShowPassword1.value;
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplaneTeal900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              obscureText: controller.isShowPassword1.value,
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
            ),
          ),
          SizedBox(height: 30.v),
          Text(
            "msg_current_password".tr,
            style: CustomTextStyles.bodyMediumBluegray90003,
          ),
          SizedBox(height: 6.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.password2Controller,
              textInputAction: TextInputAction.done,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword2.value =
                      !controller.isShowPassword2.value;
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplaneTeal900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              obscureText: controller.isShowPassword2.value,
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePasswordSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: Column(
              children: [
                _buildCurrentPasswordSection(),
                SizedBox(height: 74.v),
                CustomElevatedButton(
                  height: 44.v,
                  text: "lbl_change_password".tr,
                  margin: EdgeInsets.only(
                    left: 54.h,
                    right: 64.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillIndigoATL22,
                  buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homegray400:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Gridgray400:
        return AppRoutes.communityForumsResponsePage;
      case BottomBarEnum.Iconlylightnotificationgray400:
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
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.communityForumsResponsePage:
        return CommunityForumsResponsePage();
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
