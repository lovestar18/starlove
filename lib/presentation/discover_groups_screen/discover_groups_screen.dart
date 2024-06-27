import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_fourteen.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 374.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.v),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildVerticalScroll(),
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
      height: 62.v,
      title: Container(
        width: 288.h,
        decoration: AppDecoration.fillPrimary,
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
            AppbarSubtitleFourteen(
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
          imagePath: ImageConstant.imgSearchBlack900,
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
  Widget _buildVerticalScroll() {
    return Container(
      margin: EdgeInsets.only(bottom: 22.v),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCardSection(
                    imageThree: ImageConstant.imgImage220x162,
                    cardheadline: "lbl_group_name3".tr,
                    cardOne: "lbl_description2".tr,
                  ),
                ),
                SizedBox(height: 32.v),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCardSection(
                    imageThree: ImageConstant.imgImage376x162,
                    cardheadline: "lbl_group_name3".tr,
                    cardOne: "lbl_description2".tr,
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
                    imageThree: ImageConstant.imgImage398x162,
                    cardheadline: "lbl_group_name3".tr,
                    cardOne: "lbl_description2".tr,
                  ),
                ),
                SizedBox(height: 32.v),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCardSection(
                    imageThree: ImageConstant.imgImage200x162,
                    cardheadline: "lbl_group_name3".tr,
                    cardOne: "lbl_description2".tr,
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
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildCardSection({
    required String imageThree,
    required String cardheadline,
    required String cardOne,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        children: [
          CustomImageView(
            imagePath: imageThree,
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
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardheadline,
                        style: CustomTextStyles
                            .titleMediumGothicA1OnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        cardOne,
                        style: CustomTextStyles
                            .bodyMediumGothicA1OnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
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
                    imagePath: ImageConstant.imgArrowRightGray9001,
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
