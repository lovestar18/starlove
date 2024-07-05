import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_eleven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/feed_controller.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class FeedScreen extends GetWidget<FeedController> {
  const FeedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14.v),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Column(
                    children: [
                      _buildUserProfiles(),
                      SizedBox(height: 6.v),
                      _buildHeader(),
                      SizedBox(height: 6.v),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          right: 22.h,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  _buildPostSection(),
                                  SizedBox(height: 22.v),
                                  _buildPostHeader(),
                                  SizedBox(height: 12.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage,
                                    height: 298.adaptSize,
                                    width: 298.adaptSize,
                                    radius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 2.h),
                                  ),
                                  SizedBox(height: 14.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 38.h),
                                      child: Text(
                                        "msg_post_description".tr,
                                        style: CustomTextStyles.bodyMediumInter,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 14.v),
                                  _buildPostActions()
                                ],
                              ),
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: _buildBottomNavigation(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 98.v,
      centerTitle: true,
      title: AppbarSubtitleEleven(
        text: "msg_welcome_to_the_forjew_page".tr,
      ),
      styleType: Style.bgStyle,
    );
  }

  /// Section Widget
  Widget _buildUserProfiles() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 22.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90.v,
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 26.h,
                  );
                },
                itemCount: controller
                    .feedModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .feedModelObj.value.userprofileItemList.value[index];
                  return UserprofileItemWidget(
                    model,
                    onTapUserprofile: () {
                      onTapUserprofile();
                    },
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
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_forjew".tr,
                      style: CustomTextStyles.titleSmallOpenSansBlack900,
                    ),
                    SizedBox(width: 30.h),
                    Text(
                      "lbl_following".tr,
                      style: CustomTextStyles.titleSmallOpenSans,
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
  Widget _buildPostSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_helena".tr,
                                style: CustomTextStyles.titleSmallSemiBold_1,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_3_min_ago".tr,
                                style: CustomTextStyles.bodySmallInterGray60003,
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
                    "msg_post_description".tr,
                    style: CustomTextStyles.bodyMediumInter,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack900,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_21_likes".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 20.v,
                          width: 16.h,
                          margin: EdgeInsets.only(left: 16.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_21_stars".tr,
                            style: theme.textTheme.titleSmall,
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
                            "lbl_4_comments".tr,
                            style: theme.textTheme.titleSmall,
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
    );
  }

  /// Section Widget
  Widget _buildPostHeader() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Row(
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_helena".tr,
                  style: CustomTextStyles.titleSmallSemiBold_1,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_3_min_ago".tr,
                  style: CustomTextStyles.bodySmallInterGray60003,
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgIconMore,
            height: 24.adaptSize,
            width: 24.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostActions() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFavoriteBlack90028x28,
            height: 28.adaptSize,
            width: 28.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_21_likes".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 20.v,
            width: 16.h,
            margin: EdgeInsets.only(left: 16.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_21_stars".tr,
              style: theme.textTheme.titleSmall,
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
              "lbl_4_comments".tr,
              style: theme.textTheme.titleSmall,
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

  /// Navigates to the createPostScreen when the action is triggered.
  onTapUserprofile() {
    Get.toNamed(
      AppRoutes.createPostScreen,
    );
  }
}
