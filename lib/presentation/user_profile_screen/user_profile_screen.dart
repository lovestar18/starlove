import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/user_profile_controller.dart'; // ignore_for_file: must_be_immutable

class UserProfileScreen extends GetWidget<UserProfileController> {
  const UserProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.v),
              child: Column(
                children: [
                  _buildHeader(),
                  SizedBox(height: 10.v),
                  _buildSocialLinks(),
                  SizedBox(height: 10.v),
                  _buildPostTabs(),
                  SizedBox(height: 10.v),
                  _buildPostHeader(),
                  SizedBox(height: 10.v),
                  _buildUserPosts()
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 4.h),
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
  Widget _buildHeader() {
    return Container(
      height: 146.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup14,
            height: 106.v,
            width: double.maxFinite,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse19480x80,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileInfo() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "lbl_jill_joy".tr,
            style: CustomTextStyles.headlineSmallTealA40001,
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_bio3".tr,
            style: CustomTextStyles.titleMediumInterBluegray300,
          ),
          SizedBox(height: 22.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.backgroundGreyBackground.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_220".tr,
                        style: CustomTextStyles.titleMediumInterGray90012Bold,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_followers".tr,
                        style: CustomTextStyles.titleMediumInterGray400Black,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_150".tr,
                          style: CustomTextStyles.titleMediumInterGray90012Bold,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_following".tr,
                          style: CustomTextStyles.titleMediumInterGray400Black,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
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
  Widget _buildSocialLinks() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 18.h,
      ),
      child: Column(
        children: [
          _buildProfileInfo(),
          SizedBox(height: 6.v),
          SizedBox(
            width: 152.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImages12,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Expanded(
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(1, 1),
                        end: Alignment(0, 0),
                        colors: [appTheme.indigoA100, appTheme.indigo500],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImages1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                Expanded(
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(1, 1),
                        end: Alignment(0, 0),
                        colors: [appTheme.indigoA100, appTheme.indigo500],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook1,
                  height: 14.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Expanded(
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(1, 1),
                        end: Alignment(0, 0),
                        colors: [appTheme.indigoA100, appTheme.indigo500],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInfo,
                  height: 14.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 10.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
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
                  margin: EdgeInsets.only(right: 28.h),
                  buttonStyle: CustomButtonStyles.fillBlueA,
                  buttonTextStyle: CustomTextStyles.titleMediumInterPrimary_1,
                  onPressed: () {
                    onTapPost();
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
  Widget _buildPostTabs() {
    return Container(
      height: 144.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.white,
              child: Row(
                children: [
                  CustomElevatedButton(
                    height: 38.v,
                    width: 176.h,
                    text: "lbl_wall".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumInterIndigoA100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 64.h),
                    child: Text(
                      "lbl_posts".tr,
                      style: CustomTextStyles.titleMediumInterGray400Black_1,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 28.v),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatar,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    margin: EdgeInsets.only(bottom: 16.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 8.v,
                    ),
                    child: Text(
                      "msg_write_on_jill_s".tr,
                      style: CustomTextStyles.bodyLargeInterBluegray600,
                    ),
                  )
                ],
              ),
            ),
          ),
          _buildPostInput()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostHeader() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 32.v,
            width: 28.h,
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle132x28,
                  height: 32.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: _buildPostMetadata(
              helenaOne: "lbl_helena".tr,
              time: "lbl_3_min_ago".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconMore,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 12.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserPosts() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 18.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 298.adaptSize,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 26.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 46.h,
                      top: 42.v,
                      right: 46.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImages12,
                          height: 24.v,
                          width: 16.h,
                        ),
                        Container(
                          height: 10.v,
                          width: 6.h,
                          margin: EdgeInsets.only(left: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(1, 1),
                              end: Alignment(0, 0),
                              colors: [appTheme.indigoA100, appTheme.indigo500],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 38,
                        ),
                        Container(
                          height: 10.v,
                          width: 6.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(1, 1),
                              end: Alignment(0, 0),
                              colors: [appTheme.indigoA100, appTheme.indigo500],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 36,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 6.h,
                            margin: EdgeInsets.only(top: 4.v),
                            decoration:
                                AppDecoration.gradientIndigoAToIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  decoration: AppDecoration
                                      .gradientIndigoAToIndigo
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 10.v,
                                        width: 6.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment(1, 1),
                                            end: Alignment(0, 0),
                                            colors: [
                                              appTheme.indigoA100,
                                              appTheme.indigo500
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 25,
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 298.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Text(
              "msg_post_description".tr,
              style: CustomTextStyles.bodyMediumInter,
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 26.h),
            child: Row(
              mainAxisSize: MainAxisSize.max,
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
                Expanded(
                  child: _buildPostCommentsTwo(
                    commentsCounter: "lbl_4_comments".tr,
                    onTapPostCommentsTwo: () {
                      onTapPostComments();
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
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
                  child: _buildPostMetadata(
                    helenaOne: "lbl_helena".tr,
                    time: "lbl_3_min_ago".tr,
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
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: Text(
              "msg_post_description".tr,
              style: CustomTextStyles.bodyMediumInter,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(),
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
                _buildPostCommentsTwo(
                  commentsCounter: "lbl_4_comments".tr,
                  onTapPostCommentsTwo: () {
                    onTapPostCommentsTwo();
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
  Widget _buildBottomNavigation() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildPostMetadata({
    required String helenaOne,
    required String time,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          helenaOne,
          style: CustomTextStyles.titleSmallSemiBold_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          time,
          style: CustomTextStyles.bodySmallInterGray60003.copyWith(
            color: appTheme.gray60003,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildPostCommentsTwo({
    required String commentsCounter,
    Function? onTapPostCommentsTwo,
  }) {
    return GestureDetector(
      onTap: () {
        onTapPostCommentsTwo?.call();
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

  /// Navigates to the writeInGroupScreen when the action is triggered.
  onTapPost() {
    Get.toNamed(
      AppRoutes.writeInGroupScreen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapPostComments() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapPostCommentsTwo() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }
}
