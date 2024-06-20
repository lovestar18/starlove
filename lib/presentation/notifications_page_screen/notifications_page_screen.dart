import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_seven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/notifications_page_controller.dart'; // ignore_for_file: must_be_immutable

class NotificationsPageScreen extends GetWidget<NotificationsPageController> {
  const NotificationsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 10.v),
                  _buildLikePhotosRow(),
                  _buildLikesGroupRow(),
                  SizedBox(height: 14.v),
                  _buildCommentMentionRow(),
                  _buildFollowingRow(),
                  _buildFollowingRow1(),
                  _buildFollowingRow2(),
                  SizedBox(height: 14.v),
                  _buildLikeRow(),
                  _buildLikePhotosStack2()
                ],
              ),
            ),
            SizedBox(height: 10.v)
          ],
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 32.v,
      title: AppbarSubtitleSeven(
        text: "lbl_activity".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLikePhotosRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_karennne".tr,
                          style: CustomTextStyles.labelLargeOpenSansGray90005,
                        ),
                        TextSpan(
                          text: "lbl_liked_3_posts".tr,
                          style: CustomTextStyles.bodyMediumGray90005,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style: CustomTextStyles.bodyMediumBlack900,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle44x44,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle2,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle3,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
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
    );
  }

  /// Section Widget
  Widget _buildLikesGroupRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfiles,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_kiero_d_zackjohn2".tr,
                    style: CustomTextStyles.labelLargeOpenSansGray90005,
                  ),
                  TextSpan(
                    text: "lbl_and".tr,
                    style: CustomTextStyles.bodyMediumGray90005,
                  ),
                  TextSpan(
                    text: "lbl_craig_love".tr,
                    style: CustomTextStyles.labelLargeOpenSansGray90005,
                  ),
                  TextSpan(
                    text: "lbl_liked".tr,
                    style: CustomTextStyles.bodyMediumGray90005,
                  ),
                  TextSpan(
                    text: "lbl_joshua_l".tr,
                    style: CustomTextStyles.labelLargeOpenSansGray90005,
                  ),
                  TextSpan(
                    text: "lbl_photo".tr,
                    style: CustomTextStyles.bodyMediumGray90005,
                  ),
                  TextSpan(
                    text: "lbl_3h".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(width: 10.h),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4,
            height: 44.adaptSize,
            width: 44.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentMentionRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval44x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_craig_love2".tr,
                            style: CustomTextStyles.labelLargeOpenSansGray90005,
                          ),
                          TextSpan(
                            text: "msg_mentioned_you_in".tr,
                            style: CustomTextStyles.bodyMediumGray90005,
                          ),
                          TextSpan(
                            text: "lbl_jacob_w".tr,
                            style: CustomTextStyles.bodyMediumIndigo90001,
                          ),
                          TextSpan(
                            text: "lbl_exactly".tr,
                            style: CustomTextStyles.bodyMediumGray90005,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack90010x12,
                          height: 10.v,
                          width: 12.h,
                          alignment: Alignment.topCenter,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "lbl_reply".tr,
                            style: CustomTextStyles.labelMediumInterBlack900,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 44.adaptSize,
            width: 44.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval1,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 126.h,
              margin: EdgeInsets.only(left: 12.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_martini_rond".tr,
                      style: CustomTextStyles.labelLargeOpenSansGray90005,
                    ),
                    TextSpan(
                      text: "msg_started_following".tr,
                      style: CustomTextStyles.bodyMediumGray90005,
                    ),
                    TextSpan(
                      text: "lbl_3d".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            height: 28.v,
            width: 88.h,
            text: "lbl_message".tr.toUpperCase(),
            margin: EdgeInsets.only(right: 2.h),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: CustomTextStyles.labelLargeRobotoBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingRow1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval2,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 128.h,
              margin: EdgeInsets.only(left: 12.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_maxjacobson".tr,
                      style: CustomTextStyles.labelLargeOpenSansGray90005,
                    ),
                    TextSpan(
                      text: "msg_started_following".tr,
                      style: CustomTextStyles.bodyMediumGray90005,
                    ),
                    TextSpan(
                      text: "lbl_3d".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            height: 28.v,
            width: 88.h,
            text: "lbl_message".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: CustomTextStyles.labelLargeRobotoBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingRow2() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval3,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Container(
            width: 170.h,
            margin: EdgeInsets.only(left: 12.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_mis_potter".tr,
                    style: CustomTextStyles.labelLargeOpenSansGray90005,
                  ),
                  TextSpan(
                    text: "msg_started_following".tr,
                    style: CustomTextStyles.bodyMediumGray90005,
                  ),
                  TextSpan(
                    text: "lbl_3d".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomElevatedButton(
            width: 96.h,
            text: "lbl_follow".tr,
            margin: EdgeInsets.only(left: 20.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientTealAToCyanADecoration,
            buttonTextStyle: CustomTextStyles.titleMediumBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLikeRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.white,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildLikePhotosStack(
            ovalThirteen: ImageConstant.imgOval,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 204.h,
              margin: EdgeInsets.only(
                left: 8.h,
                bottom: 2.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_karennne".tr,
                      style: CustomTextStyles.labelLargeOpenSansGray90005,
                    ),
                    TextSpan(
                      text: "lbl_liked2".tr,
                      style: CustomTextStyles.bodyMediumGray90005,
                    ),
                    TextSpan(
                      text: "lbl_martini_rond2".tr,
                      style: CustomTextStyles.labelLargeOpenSansGray90005,
                    ),
                    TextSpan(
                      text: "lbl_s_comment".tr,
                      style: CustomTextStyles.bodyMediumGray90005,
                    ),
                    TextSpan(
                      text: "lbl_martini_rond3".tr,
                      style: CustomTextStyles.bodyMediumIndigo90001,
                    ),
                    TextSpan(
                      text: "lbl_nice".tr,
                      style: CustomTextStyles.bodyMediumGray90005,
                    ),
                    TextSpan(
                      text: "lbl_3h".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6,
            height: 44.adaptSize,
            width: 44.adaptSize,
            margin: EdgeInsets.only(right: 2.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLikePhotosStack2() {
    return Container(
      height: 112.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.white,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                _buildLikePhotosStack(
                  ovalThirteen: ImageConstant.imgOval2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_maxjacobson".tr,
                          style: CustomTextStyles.labelLargeOpenSansGray90005,
                        ),
                        TextSpan(
                          text: "lbl_liked_3_posts".tr,
                          style: CustomTextStyles.bodyMediumGray90005,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style: CustomTextStyles.bodyMediumBlack900,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: 44.adaptSize,
            width: 44.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 58.h,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle8,
            height: 44.adaptSize,
            width: 44.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 106.h,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 44.adaptSize,
            width: 44.adaptSize,
            margin: EdgeInsets.only(bottom: 10.v),
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
  Widget _buildLikePhotosStack({required String ovalThirteen}) {
    return SizedBox(
      height: 50.adaptSize,
      width: 50.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ovalThirteen,
            height: 44.adaptSize,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOvalCopy,
            height: 50.adaptSize,
            width: double.maxFinite,
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
}
