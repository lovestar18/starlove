import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_eight.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_switch.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 78.v,
          ),
          child: Column(
            children: [
              _buildGeneralNotificationRow(),
              SizedBox(height: 28.v),
              _buildChatNotificationRow(),
              SizedBox(height: 28.v),
              _buildGroupNotificationRow(),
              SizedBox(height: 28.v),
              _buildPostNotificationRow(),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          onTap: () {
            onTapFloatingactionb();
          },
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
        text: "msg_notification_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_general_notification".tr,
              style: CustomTextStyles.bodyMediumBluegray90005_1,
            ),
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
    );
  }

  /// Section Widget
  Widget _buildChatNotificationRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_chat_notifications".tr,
              style: CustomTextStyles.bodyMediumBluegray90005_1,
            ),
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
    );
  }

  /// Section Widget
  Widget _buildGroupNotificationRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_group_notifications".tr,
              style: CustomTextStyles.bodyMediumBluegray90005_1,
            ),
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
    );
  }

  /// Section Widget
  Widget _buildPostNotificationRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_post_notifications".tr,
              style: CustomTextStyles.bodyMediumBluegray90005_1,
            ),
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

  onTapFloatingactionb() {}
}
