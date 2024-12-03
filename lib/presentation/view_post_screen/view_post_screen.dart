import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/view_post_controller.dart'; // ignore_for_file: must_be_immutable

class ViewPostScreen extends GetWidget<ViewPostController> {
  const ViewPostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildMainContent(), _buildAddCommentSection()],
              ),
            ),
            SizedBox(height: 6.v)
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 16.h),
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
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90013,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgHeart2,
          margin: EdgeInsets.only(
            top: 12.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgVectorGray90012,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 12.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgTwitter,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 12.v,
            right: 27.h,
          ),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
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
                      CustomImageView(
                        imagePath: ImageConstant.imgMessageSquare,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 14.h),
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.backgroundGreyBackground.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse192,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.0.adaptSize,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_bruno_pham".tr,
                        style: CustomTextStyles.titleMediumOpenSansGray90013,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_great_shot_i_love".tr,
                        style: CustomTextStyles.titleSmallOpenSansGray90013,
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "lbl_2_mins_ago".tr,
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray60003,
                            ),
                            Spacer(),
                            Text(
                              "lbl_02".tr,
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray60003,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgStarOfDavidSolid,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(left: 6.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_02".tr,
                                style: CustomTextStyles
                                    .labelLargeOpenSansGray60003,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHeart,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(left: 4.h),
                )
              ],
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
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          _buildPostSection(),
          SizedBox(height: 8.v),
          _buildCommentSection()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCommentSection() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapAddCommentSection();
        },
        child: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.white,
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse192,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      radius: BorderRadius.circular(
                        15.0.adaptSize,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_add_a_comment".tr,
                        style: CustomTextStyles.titleSmallOpenSansGray400,
                      ),
                    )
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHome34x368,
                height: 34.v,
                width: double.maxFinite,
              )
            ],
          ),
        ),
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

  /// Navigates to the addCommentScreen when the action is triggered.
  onTapAddCommentSection() {
    Get.toNamed(
      AppRoutes.addCommentScreen,
    );
  }
}
