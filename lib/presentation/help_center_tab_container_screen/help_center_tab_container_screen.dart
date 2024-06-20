import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../help_center_page/help_center_page.dart';
import '../help_contact_page/help_contact_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/help_center_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class HelpCenterTabContainerScreen
    extends GetWidget<HelpCenterTabContainerController> {
  const HelpCenterTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.cyan40001,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 256.h,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL70,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildHelpSection(),
                    SizedBox(
                      height: 454.v,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [HelpContactPage(), HelpCenterPage()],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
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
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray10001,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 17.v,
          bottom: 22.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitleFive(
        text: "lbl_help_faqs".tr,
        margin: EdgeInsets.only(left: 94.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 60.v,
      decoration: BoxDecoration(
        color: appTheme.cyan50,
        borderRadius: BorderRadius.circular(
          22.h,
        ),
      ),
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray90007,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray90006,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan50,
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        dividerHeight: 0.0,
        tabs: [
          Tab(
            child: Container(
              width: 120.h,
              padding: EdgeInsets.symmetric(
                horizontal: 46.h,
                vertical: 16.v,
              ),
              child: Text(
                "lbl_faq".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 168.h,
              padding: EdgeInsets.symmetric(
                horizontal: 46.h,
                vertical: 16.v,
              ),
              child: Text(
                "lbl_contact_us".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Text(
            "msg_how_can_we_help".tr,
            style: CustomTextStyles.bodyMediumBluegray90002_1,
          ),
          SizedBox(height: 28.v),
          _buildTabview()
        ],
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
