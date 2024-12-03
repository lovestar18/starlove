import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/profile_controller.dart'; // ignore_for_file: must_be_immutable

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.cyan40001,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 58.v),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildProfileSection(),
                    SizedBox(height: 12.v),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.outlineTeal.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL70,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildUserInfoSection(),
                          SizedBox(height: 214.v)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: _buildBottomNavigationBar(),
        ),
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
  Widget _buildProfileSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.only(right: 138.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "lbl_profile".tr,
            style: CustomTextStyles.titleLargePoppinsBluegray90002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInfoSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse19274x74,
            height: 74.adaptSize,
            width: 74.adaptSize,
            radius: BorderRadius.circular(
              36.h,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_john_smith".tr,
            style: CustomTextStyles.titleLargeOpenSansTeal900,
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_johnsmith2".tr,
            style: CustomTextStyles.labelLargeOpenSansBluegray90002,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 52.v,
                  width: 56.h,
                  decoration: AppDecoration.fillIndigoA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLockGray10001,
                        height: 28.v,
                        width: 22.h,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_edit_profile2".tr,
                    style: CustomTextStyles.titleSmallOpenSansBluegray90002,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildNotificationSettingsRow(
              searchOne: ImageConstant.imgCheckmarkGray10001,
              notification: "lbl_privacy_policy".tr,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildNotificationSettingsRow(
              searchOne: ImageConstant.imgSearch,
              notification: "msg_notification_settings".tr,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildHelpRow(
              help: "lbl_change_password".tr,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildHelpRow(
              help: "lbl_help".tr,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildDeleteAccountRow(
              deleteaccount: "lbl_logout".tr,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildDeleteAccountRow(
              deleteaccount: "lbl_delete_account".tr,
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

  /// Common widget
  Widget _buildNotificationSettingsRow({
    required String searchOne,
    required String notification,
  }) {
    return Row(
      children: [
        Container(
          height: 52.v,
          width: 56.h,
          decoration: AppDecoration.fillIndigoA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: searchOne,
                height: 28.v,
                width: 26.h,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 12.v,
            ),
            child: Text(
              notification,
              style: CustomTextStyles.titleSmallOpenSansBluegray90002.copyWith(
                color: appTheme.blueGray90002,
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildHelpRow({required String help}) {
    return Row(
      children: [
        Container(
          height: 52.v,
          width: 56.h,
          decoration: AppDecoration.fillIndigoA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProfileGray10001,
                height: 28.v,
                width: 30.h,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 12.v,
            ),
            child: Text(
              help,
              style: CustomTextStyles.titleSmallOpenSansBluegray90002.copyWith(
                color: appTheme.blueGray90002,
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildDeleteAccountRow({required String deleteaccount}) {
    return Row(
      children: [
        Container(
          height: 52.v,
          width: 56.h,
          decoration: AppDecoration.fillIndigoA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 26.v,
                width: 18.h,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            deleteaccount,
            style: CustomTextStyles.titleSmallOpenSansBluegray90002.copyWith(
              color: appTheme.blueGray90002,
            ),
          ),
        )
      ],
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
}
