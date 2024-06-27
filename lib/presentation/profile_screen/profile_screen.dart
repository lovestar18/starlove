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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [SizedBox(height: 36.v), _buildProfileColumn()],
          ),
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
  Widget _buildProfileColumn() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "lbl_profile".tr,
                  style: CustomTextStyles.titleLargePoppinsBluegray90003,
                ),
                SizedBox(height: 20.v),
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
                  style: CustomTextStyles.labelLargeOpenSansBluegray90003,
                ),
                SizedBox(height: 18.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 52.v,
                        width: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgSettingsIndigoA7000128x22,
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
                          style:
                              CustomTextStyles.titleSmallOpenSansBluegray90003,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 52.v,
                        width: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
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
                            "lbl_privacy_policy".tr,
                            style: CustomTextStyles
                                .titleSmallOpenSansBluegray90003,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 224.h,
                    child: Row(
                      children: [
                        Container(
                          height: 52.v,
                          width: 56.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder24,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSearchIndigoA70001,
                                height: 28.v,
                                width: 26.h,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 12.h),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 12.v),
                            child: Text(
                              "msg_notification_settings".tr,
                              style: CustomTextStyles
                                  .titleSmallOpenSansBluegray90003,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Container(
                          height: 52.v,
                          width: 56.h,
                          padding: EdgeInsets.symmetric(vertical: 10.v),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder24,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                radius: BorderRadius.circular(
                                  0.5.adaptSize,
                                ),
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 10.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPadlock,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                              )
                            ],
                          ),
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
                            "lbl_change_password".tr,
                            style: CustomTextStyles
                                .titleSmallOpenSansBluegray90003,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildDeleteAccountSection(
                    xmarkOne: ImageConstant.imgProfile,
                    deleteaccount: "lbl_help".tr,
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 52.v,
                        width: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserIndigoA70001,
                              height: 26.v,
                              width: 18.h,
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
                            "lbl_logout".tr,
                            style: CustomTextStyles
                                .titleSmallOpenSansBluegray90003,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildDeleteAccountSection(
                    xmarkOne: ImageConstant.imgXMark,
                    deleteaccount: "lbl_delete_account".tr,
                  ),
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

  /// Common widget
  Widget _buildDeleteAccountSection({
    required String xmarkOne,
    required String deleteaccount,
  }) {
    return Row(
      children: [
        Container(
          height: 52.v,
          width: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: xmarkOne,
                height: 30.adaptSize,
                width: 30.adaptSize,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            deleteaccount,
            style: CustomTextStyles.titleSmallOpenSansBluegray90003.copyWith(
              color: appTheme.blueGray90003,
            ),
          ),
        )
      ],
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
}
