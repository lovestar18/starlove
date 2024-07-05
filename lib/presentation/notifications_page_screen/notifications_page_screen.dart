import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_ten.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/notifications_page_controller.dart';
import 'models/notificationslist_item_model.dart';
import 'widgets/notificationslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class NotificationsPageScreen extends GetWidget<NotificationsPageController> {
  const NotificationsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 10.v),
            Expanded(
              child: SingleChildScrollView(
                child: _buildNotificationsList(),
              ),
            )
          ],
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
      height: 32.v,
      title: AppbarSubtitleTen(
        text: "lbl_activity".tr,
        margin: EdgeInsets.only(left: 23.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationsList() {
    return Obx(
      () => ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.notificationsPageModelObj.value
            .notificationslistItemList.value.length,
        itemBuilder: (context, index) {
          NotificationslistItemModel model = controller
              .notificationsPageModelObj
              .value
              .notificationslistItemList
              .value[index];
          return NotificationslistItemWidget(
            model,
          );
        },
      ),
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
}
