import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildHeader(),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 16.h,
              ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_helena".tr,
                                        style: CustomTextStyles
                                            .titleSmallSemiBold_1,
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
                          _buildPostActions()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22.v),
            _buildCommentSection(),
            SizedBox(height: 22.v),
            _buildAddComment()
          ],
        ),
        bottomNavigationBar: _buildNavigationBar(),
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
        imagePath: ImageConstant.imgArrowDownGray90014,
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
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgPlusGray90013,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 12.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgTwitterGray90013,
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
  Widget _buildPostActions() {
    return SizedBox(
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
    );
  }

  /// Section Widget
  Widget _buildCommentSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillGray,
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse19230x30,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  radius: BorderRadius.circular(
                    15.0.adaptSize,
                  ),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_bruno_pham".tr,
                          style: CustomTextStyles.titleMediumOpenSansGray90014,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_great_shot_i_love".tr,
                          style: CustomTextStyles.titleSmallOpenSansGray90014,
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_2_mins_ago".tr,
                                  style: CustomTextStyles
                                      .labelLargeOpenSansGray60003,
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_02".tr,
                                  style: CustomTextStyles
                                      .labelLargeOpenSansGray60003,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgStarOfDavidSolidBlack900,
                                height: 20.v,
                                width: 18.h,
                                margin: EdgeInsets.only(left: 6.h),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_02".tr,
                                    style: CustomTextStyles
                                        .labelLargeOpenSansGray60003,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgHeart,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddComment() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.mainwhite,
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse19230x30,
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
          SizedBox(
            height: 34.v,
            width: 374.h,
          )
        ],
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
}
