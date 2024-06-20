import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/moderator_dashboard_controller.dart';
import 'models/listtwentytwote_item_model.dart';
import 'widgets/listtwentytwote_item_widget.dart'; // ignore_for_file: must_be_immutable

class ModeratorDashboardScreen extends GetWidget<ModeratorDashboardController> {
  const ModeratorDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56.v),
            Expanded(
              child: SingleChildScrollView(
                child: _buildModeratorDashboard(),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: _buildBottomAppBar(),
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
  Widget _buildModeratorDashboard() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 12.v),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [
          Container(
            height: 256.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 16.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 10.h,
                      bottom: 38.v,
                    ),
                    child: Text(
                      "lbl_now".tr,
                      style: CustomTextStyles.bodySmallRobotoPrimary,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_hi_name".tr,
                                  style: theme.textTheme.headlineMedium,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_welcome_to_the_moderator".tr,
                                  style: CustomTextStyles
                                      .bodyMediumRobotoBluegray40002,
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMohammadreza,
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            radius: BorderRadius.circular(
                              28.h,
                            ),
                            alignment: Alignment.bottomCenter,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 26.v),
                    SizedBox(
                      height: 170.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 48.v,
                                right: 14.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_information_architecture".tr,
                                    style: CustomTextStyles.titleMediumPrimary,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_saber_oro".tr,
                                    style:
                                        CustomTextStyles.bodySmallRobotoPrimary,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 18.h,
                                bottom: 58.v,
                              ),
                              child: Text(
                                "lbl_now".tr,
                                style: CustomTextStyles.bodySmallRobotoPrimary,
                              ),
                            ),
                          ),
                          Container(
                            height: 170.v,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgWebaliserTptx,
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
                                      left: 26.h,
                                      right: 26.h,
                                      bottom: 18.v,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_group_name".tr,
                                          style: CustomTextStyles
                                              .titleLargeRalewayPrimary,
                                        ),
                                        SizedBox(height: 2.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                            "lbl_about".tr,
                                            style: CustomTextStyles
                                                .bodySmallRalewayBluegray10001,
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
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEdit1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_edit_group_details2".tr,
                        style: CustomTextStyles.headlineSmallBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "msg_name_description".tr,
                          style: CustomTextStyles.bodyMediumRobotoBluegray40002,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 122.v,
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 24.h,
                  );
                },
                itemCount: controller.moderatorDashboardModelObj.value
                    .listtwentytwoteItemList.value.length,
                itemBuilder: (context, index) {
                  ListtwentytwoteItemModel model = controller
                      .moderatorDashboardModelObj
                      .value
                      .listtwentytwoteItemList
                      .value[index];
                  return ListtwentytwoteItemWidget(
                    model,
                    onTapStacktwentytwot: () {
                      onTapStacktwentytwot();
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 12.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  color: appTheme.gray10002,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Container(
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
                        ),
                        Container(
                          height: 32.adaptSize,
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Container(
                    height: 34.v,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
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
                        CustomImageView(
                          imagePath: ImageConstant.imgIconMore,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        _buildPostHeader(
                          titleText: "lbl_helena".tr,
                          timeText: "lbl_3_min_ago".tr,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            height: 298.v,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 298.adaptSize,
                  width: 298.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 298.adaptSize,
                  width: 298.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            height: 58.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 46.h),
                    child: Text(
                      "msg_post_description".tr,
                      style: CustomTextStyles.bodyMediumInter,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                    _buildComments(
                      commentsCounter: "lbl_4_comments".tr,
                      onTapComments: () {
                        onTapPostComments();
                      },
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 308.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_post_description".tr,
                          style: CustomTextStyles.bodyMediumInter,
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPostActions(
                            favoriteFive: ImageConstant.imgFavoriteBlack900,
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
          ),
          SizedBox(height: 12.v),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildPostHeader(
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
                        child: _buildPostActions(
                          favoriteFive: ImageConstant.imgFavoriteBlack90028x28,
                          likesCounter: "lbl_21_likes".tr,
                          starsCounter: "lbl_21_stars".tr,
                          commentsCounter: "lbl_4_comments".tr,
                          onTapComments: () {
                            onTapComments();
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
  Widget _buildBottomAppBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildComments({
    required String commentsCounter,
    Function? onTapComments,
  }) {
    return GestureDetector(
      onTap: () {
        onTapComments?.call();
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

  /// Common widget
  Widget _buildPostHeader({
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
  Widget _buildPostActions({
    required String favoriteFive,
    required String likesCounter,
    required String starsCounter,
    required String commentsCounter,
    Function? onTapComments,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: favoriteFive,
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
          imagePath: ImageConstant.imgLock,
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
        GestureDetector(
          onTap: () {
            onTapComments?.call();
          },
          child: Expanded(
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
          ),
        )
      ],
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

  /// Navigates to the grouppageV2Screen when the action is triggered.
  onTapStacktwentytwot() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapPostComments() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }

  /// Navigates to the viewPostScreen when the action is triggered.
  onTapComments() {
    Get.toNamed(
      AppRoutes.viewPostScreen,
    );
  }
}
