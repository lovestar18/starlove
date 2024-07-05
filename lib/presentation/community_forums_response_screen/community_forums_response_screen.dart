import 'package:flutter/material.dart';
import '';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/community_forums_response_controller.dart'; // ignore_for_file: must_be_immutable

class CommunityForumsResponseScreen
    extends GetWidget<CommunityForumsResponseController> {
  const CommunityForumsResponseScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 24.v),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildUserPost(),
                    _buildCommentInput(),
                    SizedBox(height: 34.v),
                    _buildPostReactions(),
                    SizedBox(height: 14.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 46.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPlay,
                                      height: 44.adaptSize,
                                      width: double.maxFinite,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 2.h),
                                    ),
                                    SizedBox(height: 6.v),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorGray30001,
                                      height: 106.v,
                                      width: 24.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgVectorGray30001126x24,
                                      height: 126.v,
                                      width: 24.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgVectorGray30001260x24,
                                      height: 260.v,
                                      width: 24.h,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 6.h),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildPostDetails(),
                                      SizedBox(height: 6.v),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: Text(
                                          "msg_dolor_sit_ameteiusmod".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.bodyLarge16
                                              .copyWith(
                                            height: 1.44,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 84.v),
                                      Container(
                                        width: 170.h,
                                        margin: EdgeInsets.only(left: 54.h),
                                        child: Text(
                                          "msg_dolor_sit_ameteiusmod2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.bodyLarge16
                                              .copyWith(
                                            height: 1.44,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 54.h),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFavoriteBlack900,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text(
                                                "lbl_18".tr,
                                                style: CustomTextStyles
                                                    .titleMediumMedium,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.h),
                                              child: Text(
                                                "lbl_reply".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumRobotoGray60002,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 14.v),
                                      _buildMediaStack(),
                                      SizedBox(height: 14.v),
                                      _buildPostReactionsQuaternary()
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
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
      centerTitle: true,
      title: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientPrimaryToCyan400011,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 17.v),
            AppbarSubtitleThree(
              text: "msg_community_forums".tr,
              margin: EdgeInsets.only(
                left: 93.h,
                right: 94.h,
              ),
            ),
            SizedBox(height: 14.v)
          ],
        ),
      ),
      styleType: Style.bgGradientnameprimaryopacity04namecyan40001opacity04,
    );
  }

  /// Section Widget
  Widget _buildUserPost() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar2,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_robert_fox".tr,
                          style: CustomTextStyles.titleLargeRoboto,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_robertfox2".tr,
                          style: CustomTextStyles.bodyMediumRobotoBluegray40001,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_minim_dolor_in_amet".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.headlineMediumBlack900.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_september_23_2021".tr,
            style: CustomTextStyles.bodyLargeGray60003,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_minim_dolor_in_amet2".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLarge17.copyWith(
              height: 1.42,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite28x28,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              "lbl_20k".tr,
                              style: CustomTextStyles.titleMediumMedium16,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgComment,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              margin: EdgeInsets.only(left: 22.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_567".tr,
                                style: CustomTextStyles.titleMediumMedium16,
                              ),
                            )
                          ],
                        ),
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
  Widget _buildCommentInput() {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.fillGray5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "lbl_write_a_comment".tr,
              hintStyle: CustomTextStyles.bodyLargeGray60002,
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgBiemojismile,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgFluentsend28filled,
            height: 28.adaptSize,
            width: 28.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostReactions() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 8.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Text(
                          "lbl_esther_howard".tr,
                          style: CustomTextStyles.titleMediumMedium,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_25_minutes_ago".tr,
                              style: CustomTextStyles.bodyMediumRobotoGray60002,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_lorem_ipsum_dolor".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLarge16.copyWith(
                      height: 1.44,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack90028x28,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_18".tr,
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_reply".tr,
                              style: CustomTextStyles.bodyMediumRobotoGray60002,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPostDetails() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            "lbl_jerome_bell".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_3_minutes_ago".tr,
                style: CustomTextStyles.bodyMediumRobotoGray60002,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaStack() {
    return SizedBox(
      height: 244.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPostDetailsTertiary(
                            ronaldrichards: "lbl_kristin_watson".tr,
                            duration: "lbl_12_minutes_ago".tr,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_dolor_sit_ameteiusmod2".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge16.copyWith(
                            height: 1.44,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPostReactionsTertiary(
                            eighteenfour: "lbl_18".tr,
                            replyfourone: "lbl_reply".tr,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 38.adaptSize,
                width: 38.adaptSize,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 214.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Text(
                              "lbl_jacob_jones".tr,
                              style: CustomTextStyles.titleMediumMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_1_minutes_ago".tr,
                                style:
                                    CustomTextStyles.bodyMediumRobotoGray60002,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_dolor_sit_ameteiusmod3".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge16.copyWith(
                          height: 1.44,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFavorite28x28,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_18".tr,
                                style: CustomTextStyles.titleMediumMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_reply".tr,
                                style:
                                    CustomTextStyles.bodyMediumRobotoGray60002,
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
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray30001102x24,
            height: 102.v,
            width: 24.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 50.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostReactionsQuaternary() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostDetailsTertiary(
                      ronaldrichards: "lbl_ronald_richards".tr,
                      duration: "lbl_15_minutes_ago".tr,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "msg_dolor_sit_ameteiusmod4".tr,
                    style: CustomTextStyles.bodyLarge16,
                  ),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashXbrqfr2bqni142x262,
                    height: 142.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostReactionsTertiary(
                      eighteenfour: "lbl_18".tr,
                      replyfourone: "lbl_reply".tr,
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
  Widget _buildBottomNavigation() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildPostDetailsTertiary({
    required String ronaldrichards,
    required String duration,
  }) {
    return Row(
      children: [
        Text(
          ronaldrichards,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            duration,
            style: CustomTextStyles.bodyMediumRobotoGray60002.copyWith(
              color: appTheme.gray60002,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildPostReactionsTertiary({
    required String eighteenfour,
    required String replyfourone,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteBlack90028x28,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            eighteenfour,
            style: CustomTextStyles.titleMediumMedium.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            replyfourone,
            style: CustomTextStyles.bodyMediumRobotoGray60002.copyWith(
              color: appTheme.gray60002,
            ),
          ),
        )
      ],
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
