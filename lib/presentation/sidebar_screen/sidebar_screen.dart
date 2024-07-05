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
              colors: [theme.colorScheme.primary, appTheme.cyan40001],
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
                        style: CustomTextStyles
                            .titleLargeOpenSansOnErrorContainerSemiBold20,
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
                        child: _buildMenuItemFindFriends(
                          userImage: ImageConstant.imgHomeBlack900,
                          userText: "lbl_homepage".tr,
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
                          userimageThree: ImageConstant.imgMaNishtana120x20,
                          userGroupsText: "lbl_kibutz_chat".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemKibutzChat();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img150938401,
                          userGroupsText: "lbl_groups".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemGroups();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img23125851,
                          userGroupsText: "lbl_forums".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemFindFriends(
                          userImage: ImageConstant.imgSmile,
                          userText: "lbl_find_friends".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img4562831,
                          userGroupsText: "lbl_your_profile".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemYourProfile();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img11596331,
                          userGroupsText: "lbl_edit_profile2".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemEditProfile();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img20405041,
                          userGroupsText: "lbl_settings".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemSettings();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img6460941,
                          userGroupsText: "lbl_support".tr,
                          onTapMenuItemGroups: () {
                            onTapMenuItemSupport();
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildMenuItemGroups(
                          userimageThree: ImageConstant.img12868531,
                          userGroupsText: "lbl_logout".tr,
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
          decoration: AppDecoration.mainwhite.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
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
                    style: CustomTextStyles.bodyLargeOpenSans,
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
          padding: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            bottom: 8.v,
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
                style: CustomTextStyles.bodyLargeOpenSans,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMenuItemGroups({
    required String userimageThree,
    required String userGroupsText,
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
        decoration: AppDecoration.mainwhite.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: userimageThree,
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
                  userGroupsText,
                  style: CustomTextStyles.bodyLargeOpenSans.copyWith(
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
    required String userImage,
    required String userText,
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
        decoration: AppDecoration.mainwhite.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: userImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                userText,
                style: CustomTextStyles.bodyLargeOpenSans.copyWith(
                  color: appTheme.black900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapMenuItemHomepage() {}
  onTapMenuItemForjewPage() {}

  /// Navigates to the homeRecentChatsScreen when the action is triggered.
  onTapMenuItemKibutzChat() {
    Get.toNamed(
      AppRoutes.homeRecentChatsScreen,
    );
  }

  onTapMenuItemGroups() {}
  onTapMenuItemYourProfile() {}

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapMenuItemEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  onTapMenuItemSettings() {}
  onTapMenuItemSupport() {}
  onTapMenuItemLogout() {}
  onTapMenuItemAdminDashboard() {}
}
