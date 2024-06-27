import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/admin_dashboard_member_view_container_controller.dart';
import 'models/listtwentytwote_item_model.dart';
import 'models/memberlist_item_model.dart';
import 'widgets/listtwentytwote_item_widget.dart';
import 'widgets/memberlist_item_widget.dart'; // ignore_for_file: must_be_immutable

class AdminDashboardMemberViewContainerScreen
    extends GetWidget<AdminDashboardMemberViewContainerController> {
  const AdminDashboardMemberViewContainerScreen({Key? key})
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
            SizedBox(height: 56.v),
            _buildMainColumn(),
            SizedBox(height: 48.v),
            _buildMemberList()
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
  Widget _buildUserInfoSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
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
          ),
          SizedBox(height: 48.v),
          SizedBox(
            height: 122.v,
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(left: 4.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.h,
                  );
                },
                itemCount: controller.adminDashboardMemberViewContainerModelObj
                    .value.listtwentytwoteItemList.value.length,
                itemBuilder: (context, index) {
                  ListtwentytwoteItemModel model = controller
                      .adminDashboardMemberViewContainerModelObj
                      .value
                      .listtwentytwoteItemList
                      .value[index];
                  return ListtwentytwoteItemWidget(
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
  Widget _buildMainColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [_buildUserInfoSection()],
      ),
    );
  }

  /// Section Widget
  Widget _buildMemberList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.adminDashboardMemberViewContainerModelObj.value
              .memberlistItemList.value.length,
          itemBuilder: (context, index) {
            MemberlistItemModel model = controller
                .adminDashboardMemberViewContainerModelObj
                .value
                .memberlistItemList
                .value[index];
            return MemberlistItemWidget(
              model,
            );
          },
        ),
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
