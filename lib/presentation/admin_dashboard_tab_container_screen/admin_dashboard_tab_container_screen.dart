import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../admin_dashboard_page/admin_dashboard_page.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/admin_dashboard_tab_container_controller.dart';
import 'models/statisticslist_item_model.dart';
import 'widgets/statisticslist_item_widget.dart'; // ignore_for_file: must_be_immutable

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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Column(
          children: [
            SizedBox(height: 48.v),
            _buildMainContentColumn(),
            SizedBox(height: 36.v),
            _buildTabview(),
            _buildTabBarPager()
          ],
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
  Widget _buildUserGreetingRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 14.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
                      style: CustomTextStyles.headlineMediumBluegray80001,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_welcome_to_the_admin".tr,
                      style: CustomTextStyles.bodyMediumRobotoBluegray40002,
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
    );
  }

  /// Section Widget
  Widget _buildStatisticsList() {
    return Container(
      height: 120.v,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.adminDashboardTabContainerModelObj.value
              .statisticslistItemList.value.length,
          itemBuilder: (context, index) {
            StatisticslistItemModel model = controller
                .adminDashboardTabContainerModelObj
                .value
                .statisticslistItemList
                .value[index];
            return StatisticslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          _buildUserGreetingRow(),
          SizedBox(height: 52.v),
          _buildStatisticsList()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 40.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      ),
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900.withOpacity(0.4),
        unselectedLabelColor: appTheme.black900,
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
  Widget _buildTabBarPager() {
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
