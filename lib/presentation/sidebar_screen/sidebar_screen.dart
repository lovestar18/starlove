import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../logout_dialog/controller/logout_controller.dart';
import '../logout_dialog/logout_dialog.dart';
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
                  decoration: AppDecoration.outlineBlack900,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemFindFriends(
                          smileOne: ImageConstant.imgHomeBlack900,
                          findfriends: "lbl_homepage".tr,
                          onTapMenuItemFindFriends: () {
                            onTapMenuItemHomepage();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildMenuItemForjewPage(),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.imgMaNishtana120x20,
                          groups: "lbl_kibutz_chat".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemKibutzChat();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img150938401,
                          groups: "lbl_groups".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemGroups();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img23125851,
                          groups: "lbl_forums".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemFindFriends(
                          smileOne: ImageConstant.imgSmile,
                          findfriends: "lbl_find_friends".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img4562831,
                          groups: "lbl_your_profile".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemYourProfile();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img11596331,
                          groups: "lbl_edit_profile2".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemEditProfile();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img20405041,
                          groups: "lbl_settings".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemSettings();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img6460941,
                          groups: "lbl_support".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          imageOne: ImageConstant.img12868531,
                          groups: "lbl_logout".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemLogout();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildMenuItemAdminDashboard()
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
  Widget _buildMenuItemForjewPage() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapMenuItemForjewPage();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.white.copyWith(
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
                    style: theme.textTheme.bodyLarge,
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
  Widget _buildMenuItemAdminDashboard() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapMenuItemAdminDashboard();
        },
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_admin_dashboard".tr,
                style: theme.textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMenuItemGroups({
    required String imageOne,
    required String groups,
    Function? onTapMenuItemGroups,
  }) {
    return GestureDetector(
      onTap: () {
        onTapMenuItemGroups?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.white.copyWith(
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
                  style: theme.textTheme.bodyLarge!.copyWith(
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
  Widget _buildMenuItemFindFriends({
    required String smileOne,
    required String findfriends,
    Function? onTapMenuItemFindFriends,
  }) {
    return GestureDetector(
      onTap: () {
        onTapMenuItemFindFriends?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.white.copyWith(
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
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapMenuItemHomepage() {
    Get.toNamed(
      AppRoutes.homepageContainerScreen,
    );
  }

  /// Navigates to the feedScreen when the action is triggered.
  onTapMenuItemForjewPage() {
    Get.toNamed(
      AppRoutes.feedScreen,
    );
  }

  /// Navigates to the homeRecentChatsScreen when the action is triggered.
  onTapMenuItemKibutzChat() {
    Get.toNamed(
      AppRoutes.homeRecentChatsScreen,
    );
  }

  /// Navigates to the groupsdashboardScreen when the action is triggered.
  onTapMenuItemGroups() {
    Get.toNamed(
      AppRoutes.groupsdashboardScreen,
    );
  }

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapMenuItemYourProfile() {
    Get.toNamed(
      AppRoutes.userProfileScreen,
    );
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapMenuItemEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapMenuItemSettings() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Displays a dialog with the [LogoutDialog] content.
  onTapMenuItemLogout() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: LogoutDialog(
        Get.put(
          LogoutController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [LogoutDialog] content.
  onTapMenuItemAdminDashboard() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: LogoutDialog(
        Get.put(
          LogoutController(),
        ),
      ),
    ));
  }
}
