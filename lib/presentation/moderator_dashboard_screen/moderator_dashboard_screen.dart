import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_seventeen.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/moderator_dashboard_controller.dart';
import 'models/groupmemberslist_item_model.dart';
import 'widgets/groupmemberslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class ModeratorDashboardScreen extends GetWidget<ModeratorDashboardController> {
  const ModeratorDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.v),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 38.v),
                  child: Column(
                    children: [
                      _buildGroupDetails(),
                      SizedBox(height: 10.v),
                      _buildEditGroupHeader(),
                      SizedBox(height: 10.v),
                      _buildMainContent()
                    ],
                  ),
                ),
              ),
            )
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 64.v,
      title: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "lbl_hi_name".tr,
              margin: EdgeInsets.only(right: 88.h),
            ),
            SizedBox(height: 7.v),
            AppbarSubtitleSeventeen(
              text: "msg_welcome_to_the_moderator".tr,
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImageThree(
          imagePath: ImageConstant.imgMohammadreza,
          margin: EdgeInsets.only(
            right: 17.h,
            bottom: 8.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildGroupInfo() {
    return SizedBox(
      height: 170.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle13,
            height: 170.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 20.h,
                bottom: 18.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_group_name".tr,
                    style: CustomTextStyles.titleLargeOpenSansPrimary,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_about".tr,
                    style: CustomTextStyles.bodySmallBluegray10002,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupDetails() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [_buildGroupInfo()],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditGroupHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.mainwhite,
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEdit1,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_edit_group_details2".tr,
                      style: CustomTextStyles.headlineSmallBlack900,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_name_description".tr,
                      style: CustomTextStyles.bodyMediumRobotoBluegray40002,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupMembersList() {
    return SizedBox(
      height: 122.v,
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 22.h,
            );
          },
          itemCount: controller.moderatorDashboardModelObj.value
              .groupmemberslistItemList.value.length,
          itemBuilder: (context, index) {
            GroupmemberslistItemModel model = controller
                .moderatorDashboardModelObj
                .value
                .groupmemberslistItemList
                .value[index];
            return GroupmemberslistItemWidget(
              model,
              onTapColumngrouptitl: () {
                onTapColumngrouptitl();
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostsColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildPost(
              helenaOne: "lbl_helena".tr,
              time: "lbl_3_min_ago".tr,
              postOne: "msg_post_description".tr,
              favoriteThree: ImageConstant.imgFavoriteBlack9003,
              likesCounter: "lbl_21_likes".tr,
              starsCounter: "lbl_21_stars".tr,
              commentsCounter: "lbl_4_comments".tr,
            ),
          ),
          SizedBox(height: 30.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildPost(
              helenaOne: "lbl_helena".tr,
              time: "lbl_3_min_ago".tr,
              postOne: "msg_post_description".tr,
              favoriteThree: ImageConstant.imgFavoriteBlack9001,
              likesCounter: "lbl_21_likes".tr,
              starsCounter: "lbl_21_stars".tr,
              commentsCounter: "lbl_4_comments".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          _buildGroupMembersList(),
          SizedBox(height: 24.v),
          _buildPostsColumn()
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
  Widget _buildPost({
    required String helenaOne,
    required String time,
    required String postOne,
    required String favoriteThree,
    required String likesCounter,
    required String starsCounter,
    required String commentsCounter,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 32.adaptSize,
          width: 32.adaptSize,
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1,
                height: 32.adaptSize,
                width: double.maxFinite,
                radius: BorderRadius.circular(
                  16.h,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              helenaOne,
                              style: CustomTextStyles.titleSmallSemiBold_1
                                  .copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              time,
                              style: CustomTextStyles.bodySmallInterGray60003
                                  .copyWith(
                                color: appTheme.gray60003,
                              ),
                            )
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMore,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 298.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  postOne,
                  style: CustomTextStyles.bodyMediumInter.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: favoriteThree,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          likesCounter,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLockBlack900,
                        height: 20.v,
                        width: 16.h,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          starsCounter,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMessageSquare,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          commentsCounter,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: appTheme.black900,
                          ),
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
  onTapColumngrouptitl() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }
}
