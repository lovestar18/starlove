import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/admin_dashboard_member_view_container_controller.dart';
import 'models/columntwentytwo1_item_model.dart';
import 'models/headerlist_item_model.dart';
import 'widgets/columntwentytwo1_item_widget.dart';
import 'widgets/headerlist_item_widget.dart'; // ignore_for_file: must_be_immutable

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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Column(
          children: [
            SizedBox(height: 56.v),
            _buildWelcomeSection(),
            SizedBox(height: 48.v),
            _buildHeaderList()
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
  Widget _buildWelcomeSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 4.h),
                  child: Row(
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
                                style: CustomTextStyles
                                    .bodyMediumRobotoBluegray40002,
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
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 20.h,
                        );
                      },
                      itemCount: controller
                          .adminDashboardMemberViewContainerModelObj
                          .value
                          .columntwentytwo1ItemList
                          .value
                          .length,
                      itemBuilder: (context, index) {
                        Columntwentytwo1ItemModel model = controller
                            .adminDashboardMemberViewContainerModelObj
                            .value
                            .columntwentytwo1ItemList
                            .value[index];
                        return Columntwentytwo1ItemWidget(
                          model,
                        );
                      },
                    ),
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
  Widget _buildHeaderList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.adminDashboardMemberViewContainerModelObj.value
              .headerlistItemList.value.length,
          itemBuilder: (context, index) {
            HeaderlistItemModel model = controller
                .adminDashboardMemberViewContainerModelObj
                .value
                .headerlistItemList
                .value[index];
            return HeaderlistItemWidget(
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
