import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
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
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(
            top: 56.v,
            bottom: 94.v,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary.withOpacity(1),
                appTheme.indigoA70001
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 90.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildMainColumn(), SizedBox(height: 22.v)],
            ),
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
      title: AppbarSubtitleFive(
        text: "msg_password_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSettingsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text(
                "msg_current_password".tr,
                style: CustomTextStyles.bodyMediumBluegray90002_1,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildNewPasswordRow(),
          ),
          SizedBox(height: 42.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text(
                "lbl_new_password".tr,
                style: CustomTextStyles.bodyMediumBluegray90002_1,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildNewPasswordRow(),
          ),
          SizedBox(height: 44.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text(
                "msg_confirm_new_password".tr,
                style: CustomTextStyles.bodyMediumBluegray90002_1,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildNewPasswordRow(),
          ),
          SizedBox(height: 64.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_change_password".tr,
            margin: EdgeInsets.only(
              left: 64.h,
              right: 62.h,
            ),
            buttonStyle: CustomButtonStyles.fillIndigoATL22,
            buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimary,
            onPressed: () {
              onTapChangepassword();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [_buildPasswordSettingsColumn()],
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

  /// Common widget
  Widget _buildNewPasswordRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 18.v,
            width: 144.h,
            margin: EdgeInsets.only(left: 2.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAirplane,
            height: 8.v,
            width: 24.h,
          )
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponsePage;
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

  /// Navigates to the passwordSettings1Screen when the action is triggered.
  onTapChangepassword() {
    Get.toNamed(
      AppRoutes.passwordSettings1Screen,
    );
  }
}
