import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_switch.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/notification_settings_controller.dart'; // ignore_for_file: must_be_immutable

class NotificationSettingsScreen
    extends GetWidget<NotificationSettingsController> {
  const NotificationSettingsScreen({Key? key})
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
              vertical: 78.v,
            ),
            child: Column(
              children: [
                _buildGeneralNotificationsSection(),
                SizedBox(height: 284.v)
              ],
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
        text: "msg_notification_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralNotificationsSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "msg_general_notification".tr,
                        style: CustomTextStyles.bodyMediumBluegray90003_1,
                      ),
                      Obx(
                        () => CustomSwitch(
                          value: controller.isSelectedSwitch.value,
                          onChange: (value) {
                            controller.isSelectedSwitch.value = value;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "msg_chat_notifications".tr,
                        style: CustomTextStyles.bodyMediumBluegray90003_1,
                      ),
                      Obx(
                        () => CustomSwitch(
                          value: controller.isSelectedSwitch1.value,
                          onChange: (value) {
                            controller.isSelectedSwitch1.value = value;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "msg_group_notifications".tr,
                        style: CustomTextStyles.bodyMediumBluegray90003_1,
                      ),
                      Obx(
                        () => CustomSwitch(
                          value: controller.isSelectedSwitch2.value,
                          onChange: (value) {
                            controller.isSelectedSwitch2.value = value;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "msg_post_notifications".tr,
                        style: CustomTextStyles.bodyMediumBluegray90003_1,
                      ),
                      Obx(
                        () => CustomSwitch(
                          value: controller.isSelectedSwitch3.value,
                          onChange: (value) {
                            controller.isSelectedSwitch3.value = value;
                          },
                        ),
                      )
                    ],
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
}
