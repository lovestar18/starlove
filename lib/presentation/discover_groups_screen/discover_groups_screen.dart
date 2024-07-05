import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_fifteen.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/discover_groups_controller.dart'; // ignore_for_file: must_be_immutable

class DiscoverGroupsScreen extends GetWidget<DiscoverGroupsController> {
  const DiscoverGroupsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 374.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.v),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildCardSection(
                                userimageThree: ImageConstant.imgImage220x1621,
                                groupnameOne: "lbl_group_name3".tr,
                                descriptionOne: "lbl_description2".tr,
                              ),
                            ),
                            SizedBox(height: 32.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildCardSection(
                                userimageThree: ImageConstant.imgImage376x1621,
                                groupnameOne: "lbl_group_name3".tr,
                                descriptionOne: "lbl_description2".tr,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 16.h),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildCardSection(
                                userimageThree: ImageConstant.imgImage398x1621,
                                groupnameOne: "lbl_group_name3".tr,
                                descriptionOne: "lbl_description2".tr,
                              ),
                            ),
                            SizedBox(height: 32.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildCardSection(
                                userimageThree: ImageConstant.imgImage200x1621,
                                groupnameOne: "lbl_group_name3".tr,
                                descriptionOne: "lbl_description2".tr,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          onTap: () {
            onTapFloatingactionb();
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgSearchOnerrorcontainer,
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
      height: 62.v,
      title: Container(
        width: 288.h,
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6.v),
            AppbarSubtitleOne(
              text: "lbl_discover_groups".tr,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 72.h,
              ),
            ),
            SizedBox(height: 2.v),
            AppbarSubtitleFifteen(
              text: "lbl_find_your_tribe".tr,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 168.h,
              ),
            ),
            SizedBox(height: 1.v)
          ],
        ),
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSearchBlack9001,
          margin: EdgeInsets.only(
            top: 22.v,
            right: 37.h,
            bottom: 16.v,
          ),
        )
      ],
      styleType: Style.bgFill_2,
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

  /// Common widget
  Widget _buildCardSection({
    required String userimageThree,
    required String groupnameOne,
    required String descriptionOne,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        children: [
          CustomImageView(
            imagePath: userimageThree,
            height: 376.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        groupnameOne,
                        style: CustomTextStyles.titleMediumGothicA1OnPrimary
                            .copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        descriptionOne,
                        style: CustomTextStyles.bodyMediumGothicA1OnPrimary
                            .copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 28.h),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.radiusTL20,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRightGray900,
                  ),
                )
              ],
            ),
          )
        ],
      ),
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

  /// Navigates to the grouppageV2Screen when the action is triggered.
  onTapCardSection() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }

  /// Navigates to the createNewGroupScreen when the action is triggered.
  onTapFloatingactionb() {
    Get.toNamed(
      AppRoutes.createNewGroupScreen,
    );
  }
}
