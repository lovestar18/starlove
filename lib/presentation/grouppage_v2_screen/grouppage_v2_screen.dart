import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/grouppage_v2_controller.dart'; // ignore_for_file: must_be_immutable

class GrouppageV2Screen extends GetWidget<GrouppageV2Controller> {
  const GrouppageV2Screen({Key? key})
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
            _buildWebaliserColumn(),
            SizedBox(height: 10.v),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Column(
                    children: [
                      _buildPublicColumn(),
                      SizedBox(height: 10.v),
                      _buildPostRow(),
                      SizedBox(height: 34.v),
                      _buildHelenaColumn()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: _buildNavigationBar(),
        ),
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
  Widget _buildDreamsvilleSection() {
    return SizedBox(
      height: 168.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWebaliserTptx,
            height: 168.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  height: 34.v,
                  leadingWidth: 69.h,
                  leading: GestureDetector(
                    onTap: () {
                      onTapStackicbackone();
                    },
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 35.h),
                      decoration: AppDecoration.fillBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5.v),
                          AppbarImage(
                            imagePath: ImageConstant.imgIcBackPrimary,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              right: 4.h,
                            ),
                            onTap: () {
                              onTapIcbackone();
                            },
                          ),
                          SizedBox(height: 5.v)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 64.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_group_name".tr,
                    style: CustomTextStyles.titleLargeRalewayPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_about".tr,
                    style: CustomTextStyles.bodySmallRalewayBluegray10002,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 60.h),
                    child: Text(
                      "lbl_4_bathroom".tr,
                      style: CustomTextStyles.bodySmallRalewayBluegray10002,
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
  Widget _buildWebaliserColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [_buildDreamsvilleSection()],
      ),
    );
  }

  /// Section Widget
  Widget _buildPublicColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Row(
                      children: [
                        Text(
                          "lbl_public".tr,
                          style: CustomTextStyles.labelLargeRobotoIndigoA70001,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "lbl_private".tr,
                            style: CustomTextStyles.labelLargeRobotoCyan40001,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 34.v,
                  width: 126.h,
                  text: "lbl_join_group".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientOnPrimaryToPurpleDecoration,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
          Container(
            height: 50.v,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 36.h),
                    child: Text(
                      "msg_of_members".tr,
                      style: CustomTextStyles.bodySmallRobotoBlueA40001,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 50.v,
                        width: 32.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar32x321,
                              height: 32.adaptSize,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPeople1,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topCenter,
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar32x321,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar32x321,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar32x321,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                    CustomOutlinedButton(
                      height: 30.v,
                      width: 92.h,
                      text: "lbl_view_more".tr.toUpperCase(),
                      margin: EdgeInsets.only(left: 4.h),
                      buttonTextStyle: CustomTextStyles.labelMediumRoboto,
                      onPressed: () {
                        onTapViewmore();
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 46.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: AppDecoration.mainwhite.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAvatar,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                bottom: 8.v,
                              ),
                              child: Text(
                                "msg_what_s_happening".tr,
                                style:
                                    CustomTextStyles.bodyLargeInterBluegray600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImageBlueGray600,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGif,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEmoji,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                          Spacer(),
                          CustomElevatedButton(
                            width: 72.h,
                            text: "lbl_post".tr,
                            buttonStyle: CustomButtonStyles.fillBlueA,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumInterPrimary,
                            onPressed: () {
                              onTapPost();
                            },
                          )
                        ],
                      ),
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
  Widget _buildPostRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
                  _buildPostHeaderTwo(
                    titleText: "lbl_helena".tr,
                    timeText: "lbl_3_min_ago".tr,
                  ),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 298.adaptSize,
                    width: 298.adaptSize,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "msg_post_description".tr,
                    style: CustomTextStyles.bodyMediumInter,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostActionsTwo(
                      favoriteThree: ImageConstant.imgFavorite,
                      likesCounter: "lbl_21_likes".tr,
                      starsCounter: "lbl_21_stars".tr,
                      commentsCounter: "lbl_4_comments".tr,
                    ),
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
  Widget _buildPostRowTwo() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
                    child: _buildPostHeaderTwo(
                      titleText: "lbl_helena".tr,
                      timeText: "lbl_3_min_ago".tr,
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
                    "msg_post_description".tr,
                    style: CustomTextStyles.bodyMediumInter,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostActionsTwo(
                      favoriteThree: ImageConstant.imgFavoriteBlack9001,
                      likesCounter: "lbl_21_likes".tr,
                      starsCounter: "lbl_21_stars".tr,
                      commentsCounter: "lbl_4_comments".tr,
                    ),
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
  Widget _buildHelenaColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [_buildPostRowTwo()],
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

  /// Common widget
  Widget _buildPostHeaderTwo({
    required String titleText,
    required String timeText,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: CustomTextStyles.titleSmallSemiBold_1.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                timeText,
                style: CustomTextStyles.bodySmallInterGray60003.copyWith(
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
    );
  }

  /// Common widget
  Widget _buildPostActionsTwo({
    required String favoriteThree,
    required String likesCounter,
    required String starsCounter,
    required String commentsCounter,
  }) {
    return Row(
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

  /// Navigates to the previous screen.
  onTapStackicbackone() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapIcbackone() {
    Get.back();
  }

  /// Navigates to the listofgroupmembersScreen when the action is triggered.
  onTapViewmore() {
    Get.toNamed(
      AppRoutes.listofgroupmembersScreen,
    );
  }

  /// Navigates to the writeInGroupScreen when the action is triggered.
  onTapPost() {
    Get.toNamed(
      AppRoutes.writeInGroupScreen,
    );
  }
}
