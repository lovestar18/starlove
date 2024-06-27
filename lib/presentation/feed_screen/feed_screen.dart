import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_ten.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/feed_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class FeedScreen extends GetWidget<FeedController> {
  const FeedScreen({Key? key})
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
            SizedBox(height: 14.v),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Column(
                    children: [
                      _buildUserProfileColumn(),
                      SizedBox(height: 6.v),
                      _buildHeaderRow(),
                      SizedBox(height: 6.v),
                      _buildFeedColumn()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: _buildBottomNavigationBar(),
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
      title: AppbarSubtitleTen(
        text: "msg_welcome_to_the_forjew_page".tr,
      ),
      styleType: Style.bgStyle,
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      height: 90.v,
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 2.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 26.h,
            );
          },
          itemCount: controller
              .feedModelObj.value.userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller
                .feedModelObj.value.userprofilelistItemList.value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 14.h,
      ),
      child: Column(
        children: [_buildUserProfileList()],
      ),
    );
  }

  /// Section Widget
  Widget _buildForjewFollowingRow() {
    return Expanded(
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
    );
  }

  /// Section Widget
  Widget _buildHeaderRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite,
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [_buildForjewFollowingRow()],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelenaPostColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_helena".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold_1,
                                    ),
                                    SizedBox(height: 2.v),
                                    Text(
                                      "lbl_3_min_ago".tr,
                                      style: CustomTextStyles
                                          .bodySmallInterGray60003,
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
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
                                imagePath: ImageConstant.imgLockBlack900,
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
          ),
          SizedBox(height: 22.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 10.h,
            ),
            child: Row(
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
          ),
          SizedBox(height: 12.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 298.adaptSize,
            width: 298.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 10.h),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 48.h),
              child: Text(
                "msg_post_description".tr,
                style: CustomTextStyles.bodyMediumInter,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlack9001,
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
                  imagePath: ImageConstant.imgLockBlack900,
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
    );
  }

  /// Section Widget
  Widget _buildFeedColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 14.h,
      ),
      child: Column(
        children: [_buildHelenaPostColumn()],
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
