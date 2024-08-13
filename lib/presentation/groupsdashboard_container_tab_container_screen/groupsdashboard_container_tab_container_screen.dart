import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_two.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../events_added_page/events_added_page.dart';
import '../events_created_page/events_created_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/groupsdashboard_container_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class GroupsdashboardContainerTabContainerScreen
    extends GetWidget<GroupsdashboardContainerTabContainerController> {
  const GroupsdashboardContainerTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: 338.h,
          child: Column(
            children: [
              _buildHeaderSection(),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 20.v),
                    _buildTabsSection(),
                    SizedBox(
                      height: 484.v,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [EventsAddedPage(), EventsCreatedPage()],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup7902,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 55.h,
            leading: AppbarLeadingIconbuttonTwo(
              imagePath: ImageConstant.imgMegaphoneGray200,
              margin: EdgeInsets.only(left: 21.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_groups".tr,
            ),
            actions: [
              AppbarTrailingIconbuttonTwo(
                imagePath: ImageConstant.imgUserBlueGray10034x34,
                margin: EdgeInsets.only(right: 19.h),
              )
            ],
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 18.h,
            ),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_search".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            height: 26.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.blueGray90001,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.errorContainer,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_joined".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_created".tr,
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
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
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
      case BottomBarEnum.Groups:
        return AppRoutes.imagepickerTabContainerPage;
      case BottomBarEnum.Post:
        return "/";
      case BottomBarEnum.Kibutz:
        return AppRoutes.communityForumsHome1Page;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOptionsOneBottomsheet;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.imagepickerTabContainerPage:
        return ImagepickerTabContainerPage();
      case AppRoutes.communityForumsHome1Page:
        return CommunityForumsHome1Page();
      case AppRoutes.profileOptionsOneBottomsheet:
        return ProfileOptionsOneBottomsheet();
      default:
        return DefaultWidget();
    }
  }
}
