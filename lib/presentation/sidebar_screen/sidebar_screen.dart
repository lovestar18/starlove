import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/sidebar_controller.dart'; // ignore_for_file: must_be_immutable

class SidebarScreen extends GetWidget<SidebarController> {
  const SidebarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: appTheme.gray300,
                width: 1.h,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.indigoA70001, appTheme.cyan40001],
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              right: 14.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 80.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    right: 16.h,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Text(
                        "lbl_navigation_menu".tr,
                        style:
                            CustomTextStyles.titleLargeOpenSansPrimarySemiBold,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarlove2Transparent01,
                        height: 64.v,
                        width: double.maxFinite,
                        alignment: Alignment.topCenter,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 38.v),
                Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineBlack9001,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildFindFriendsMenuItem(
                          smileOne: ImageConstant.imgHomeBlack900,
                          findfriends: "lbl_homepage".tr,
                          onTapFindFriendsMenuItem: () {
                            onTapHomepageMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildForjewPageMenuItem(),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.imgMaNishtana120x20,
                          groups: "lbl_kibutz_chat".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img150938401,
                          groups: "lbl_groups".tr,
                          onTapGroupsMenuItem: () {
                            onTapGroupsMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img23125851,
                          groups: "lbl_forums".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildFindFriendsMenuItem(
                          smileOne: ImageConstant.imgSmile,
                          findfriends: "lbl_find_friends".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img4562831,
                          groups: "lbl_your_profile".tr,
                          onTapGroupsMenuItem: () {
                            onTapYourProfileMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img11596331,
                          groups: "lbl_edit_profile2".tr,
                          onTapGroupsMenuItem: () {
                            onTapEditProfileMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img20405041,
                          groups: "lbl_settings".tr,
                          onTapGroupsMenuItem: () {
                            onTapSettingsMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img6460941,
                          groups: "lbl_support".tr,
                          onTapGroupsMenuItem: () {
                            onTapSupportMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildGroupsMenuItem(
                          imageOne: ImageConstant.img12868531,
                          groups: "lbl_logout".tr,
                          onTapGroupsMenuItem: () {
                            onTapLogoutMenuItem();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildAdminDashboardMenuItem()
                    ],
                  ),
                ),
                SizedBox(height: 4.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForjewPageMenuItem() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapForjewPageMenuItem();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.mainwhite.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgJewish51,
                height: 20.v,
                width: 18.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "lbl_forjew_page".tr,
                    style: CustomTextStyles.bodyLargeOpenSans16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAdminDashboardMenuItem() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapAdminDashboardMenuItem();
        },
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.mainwhite.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_admin_dashboard".tr,
                style: CustomTextStyles.bodyLargeOpenSans16,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildGroupsMenuItem({
    required String imageOne,
    required String groups,
    Function? onTapGroupsMenuItem,
  }) {
    return GestureDetector(
      onTap: () {
        onTapGroupsMenuItem?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.mainwhite.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: imageOne,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 4.v,
                ),
                child: Text(
                  groups,
                  style: CustomTextStyles.bodyLargeOpenSans16.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFindFriendsMenuItem({
    required String smileOne,
    required String findfriends,
    Function? onTapFindFriendsMenuItem,
  }) {
    return GestureDetector(
      onTap: () {
        onTapFindFriendsMenuItem?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.mainwhite.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: smileOne,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                findfriends,
                style: CustomTextStyles.bodyLargeOpenSans16.copyWith(
                  color: appTheme.black900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapHomepageMenuItem() {}
  onTapForjewPageMenuItem() {}
  onTapGroupsMenuItem() {}
  onTapYourProfileMenuItem() {}

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapEditProfileMenuItem() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  onTapSettingsMenuItem() {}
  onTapSupportMenuItem() {}
  onTapLogoutMenuItem() {}
  onTapAdminDashboardMenuItem() {}
}
