import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/admin_dashboard_controller.dart';
import 'models/medialist_item_model.dart';
import 'models/statisticslist_item_model.dart';
import 'widgets/medialist_item_widget.dart';
import 'widgets/statisticslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class AdminDashboardScreen extends GetWidget<AdminDashboardController> {
  const AdminDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 56.v),
            _buildMainColumn(),
            SizedBox(height: 48.v),
            _buildMediaList()
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
  Widget _buildGreetingRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
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
                    style: CustomTextStyles.bodyMediumRobotoBluegray40002,
                  )
                ],
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
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatisticsList() {
    return SizedBox(
      height: 122.v,
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: controller
              .adminDashboardModelObj.value.statisticslistItemList.value.length,
          itemBuilder: (context, index) {
            StatisticslistItemModel model = controller.adminDashboardModelObj
                .value.statisticslistItemList.value[index];
            return StatisticslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          _buildGreetingRow(),
          SizedBox(height: 48.v),
          _buildStatisticsList()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller
              .adminDashboardModelObj.value.medialistItemList.value.length,
          itemBuilder: (context, index) {
            MedialistItemModel model = controller
                .adminDashboardModelObj.value.medialistItemList.value[index];
            return MedialistItemWidget(
              model,
            );
          },
        ),
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
