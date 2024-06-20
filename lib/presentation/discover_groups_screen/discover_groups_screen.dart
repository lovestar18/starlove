import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_subtitle_thirteen.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
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
        body: SizedBox(
          width: 374.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildNavigationBar(),
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildVerticalScroll(),
                ),
              )
            ],
          ),
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
  Widget _buildNavigationBar() {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.blurLight,
      child: Column(
        children: [
          CustomAppBar(
            height: 76.v,
            title: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                children: [
                  AppbarSubtitleOne(
                    text: "lbl_discover_groups".tr,
                  ),
                  SizedBox(height: 2.v),
                  AppbarSubtitleThirteen(
                    text: "lbl_find_your_tribe".tr,
                    margin: EdgeInsets.only(right: 96.h),
                  )
                ],
              ),
            ),
            actions: [
              AppbarTrailingIconbuttonOne(
                imagePath: ImageConstant.imgSearchGray900,
                margin: EdgeInsets.only(
                  top: 14.v,
                  right: 7.h,
                  bottom: 22.v,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVerticalScroll() {
    return Padding(
      padding: EdgeInsets.only(bottom: 22.v),
      child: Row(
        children: [
          Expanded(
            child: _buildCardSectionTwo(
              imageFive: ImageConstant.imgImage220x162,
              cardheadline: "lbl_group_name3".tr,
              cardTwo: "lbl_description2".tr,
              imageSeven: ImageConstant.imgImage376x162,
              cardheadline1: "lbl_group_name3".tr,
              cardThree: "lbl_description2".tr,
              onTapCard: () {
                onTapCard();
              },
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: _buildCardSectionTwo(
              imageFive: ImageConstant.imgImage398x162,
              cardheadline: "lbl_group_name3".tr,
              cardTwo: "lbl_description2".tr,
              imageSeven: ImageConstant.imgImage200x162,
              cardheadline1: "lbl_group_name3".tr,
              cardThree: "lbl_description2".tr,
            ),
          )
        ],
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

  /// Common widget
  Widget _buildCardSectionTwo({
    required String imageFive,
    required String cardheadline,
    required String cardTwo,
    required String imageSeven,
    required String cardheadline1,
    required String cardThree,
    Function? onTapCard,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapCard?.call();
          },
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: imageFive,
                  height: 398.v,
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
                              cardTwo,
                              style: CustomTextStyles.bodyMediumGothicA1OnError
                                  .copyWith(
                                color: theme.colorScheme.onError,
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
          ),
        ),
        SizedBox(height: 32.v),
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: imageSeven,
                height: 200.v,
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
                            cardheadline1,
                            style: CustomTextStyles
                                .titleMediumGothicA1OnPrimaryContainer
                                .copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            cardThree,
                            style: CustomTextStyles.bodyMediumGothicA1OnError
                                .copyWith(
                              color: theme.colorScheme.onError,
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
        )
      ],
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

  /// Navigates to the grouppageV2Screen when the action is triggered.
  onTapCard() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }
}
