import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../admin_dashboard_page/admin_dashboard_page.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/admin_dashboard_tab_container_controller.dart';
import 'models/columntwentytwo_item_model.dart';
import 'widgets/columntwentytwo_item_widget.dart'; // ignore_for_file: must_be_immutable

class AdminDashboardTabContainerScreen
    extends GetWidget<AdminDashboardTabContainerController> {
  const AdminDashboardTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Column(
          children: [
            SizedBox(height: 18.v),
            _buildCreateSection(),
            SizedBox(height: 26.v),
            _buildTabview(),
            _buildTabBarView()
          ],
        ),
        bottomNavigationBar: _buildNavigationBar(),
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
  Widget _buildCreateSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomElevatedButton(
            height: 44.v,
            width: 218.h,
            text: "msg_create_daily_notification".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPinkToRedDecoration,
            onPressed: () {
              onTapCreatedaily();
            },
          ),
          SizedBox(height: 32.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_hi_name".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "msg_welcome_to_the_admin".tr,
                            style:
                                CustomTextStyles.bodyMediumRobotoBluegray40002,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMohammadreza,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          SizedBox(
            height: 100.v,
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 22.h,
                  );
                },
                itemCount: controller.adminDashboardTabContainerModelObj.value
                    .columntwentytwoItemList.value.length,
                itemBuilder: (context, index) {
                  ColumntwentytwoItemModel model = controller
                      .adminDashboardTabContainerModelObj
                      .value
                      .columntwentytwoItemList
                      .value[index];
                  return ColumntwentytwoItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 40.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      ),
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        unselectedLabelColor: appTheme.black900.withOpacity(0.4),
        tabs: [
          Tab(
            child: Text(
              "lbl_members".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_pending_application".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 354.v,
      width: double.maxFinite,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [AdminDashboardPage(), AdminDashboardPage()],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
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

  /// Navigates to the dailyNotificationSenderScreen when the action is triggered.
  onTapCreatedaily() {
    Get.toNamed(
      AppRoutes.dailyNotificationSenderScreen,
    );
  }
}
