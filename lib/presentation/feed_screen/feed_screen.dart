import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_eight.dart';
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
        appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.v),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Column(
                    children: [
                      _buildUserProfileList(),
                      SizedBox(height: 2.v),
                      _buildHeader(),
                      SizedBox(height: 2.v),
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
      height: 100.v,
      centerTitle: true,
      title: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientIndigoAToCyan400011,
        child: Column(
          children: [
            SizedBox(height: 11.v),
            AppbarImage(
              imagePath: ImageConstant.imgStarOfDavid1,
              margin: EdgeInsets.only(
                left: 328.h,
                right: 16.h,
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgStarOfDavid1,
              margin: EdgeInsets.only(
                left: 21.h,
                right: 323.h,
              ),
            ),
            AppbarSubtitleEight(
              text: "msg_welcome_to_the_forjew".tr,
              margin: EdgeInsets.only(
                left: 78.h,
                right: 79.h,
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.img38633861,
              margin: EdgeInsets.only(
                left: 58.h,
                right: 286.h,
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.img38633861,
              margin: EdgeInsets.only(
                left: 288.h,
                right: 56.h,
              ),
            ),
            SizedBox(height: 7.v)
          ],
        ),
      ),
      styleType:
          Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04,
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 94.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 10.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 30.h,
                );
              },
              itemCount: controller
                  .feedModelObj.value.userprofilelistItemList.value.length,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model = controller
                    .feedModelObj.value.userprofilelistItemList.value[index];
                return UserprofilelistItemWidget(
                  model,
                  onTapUserprofile: () {
                    onTapUserprofile();
                  },
                  onTapImgUserimage3: () {
                    onTapImgUserimage3();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderRow() {
    return Expanded(
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
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(
        left: 6.h,
        right: 4.h,
      ),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [_buildHeaderRow()],
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
                      Expanded(
                        child: _buildCommentsRow(
                          commentsCounter: "lbl_4_comments".tr,
                          onTapCommentsRow: () {
                            onTapCommentsRow();
                          },
                        ),
                      )
                    ],
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
  Widget _buildPostHeaderRow() {
    return SizedBox(
      width: double.maxFinite,
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
    );
  }

  /// Section Widget
  Widget _buildFeedColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 22.h,
      ),
      child: Column(
        children: [
          _buildPostRow(),
          SizedBox(height: 22.v),
          _buildPostHeaderRow(),
          SizedBox(height: 12.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 298.adaptSize,
            width: 298.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 6.h),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40.h),
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
                _buildCommentsRow(
                  commentsCounter: "lbl_4_comments".tr,
                  onTapCommentsRow: () {
                    onTapCommentsRow1();
                  },
                )
              ],
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
  Widget _buildCommentsRow({
    required String commentsCounter,
    Function? onTapCommentsRow,
  }) {
    return GestureDetector(
      onTap: () {
        onTapCommentsRow?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMessageSquare,
            height: 20.adaptSize,
            width: 20.adaptSize,
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

  /// Navigates to the cameraPermission2Screen when the action is triggered.
  onTapUserprofile() {
    Get.toNamed(
      AppRoutes.cameraPermission2Screen,
    );
  }

  /// Navigates to the storyScreen when the action is triggered.
  onTapImgUserimage3() {
    Get.toNamed(
      AppRoutes.storyScreen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapCommentsRow() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapCommentsRow1() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }
}
