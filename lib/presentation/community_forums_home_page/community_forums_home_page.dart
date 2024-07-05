import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/community_forums_home_controller.dart';
import 'models/community_forums_home_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityForumsHomePage extends StatelessWidget {
  CommunityForumsHomePage({Key? key})
      : super(
          key: key,
        );

  CommunityForumsHomeController controller =
      Get.put(CommunityForumsHomeController(CommunityForumsHomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(top: 24.v),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 28.h),
              child: Column(
                children: [
                  _buildPostSectionOne(),
                  SizedBox(height: 24.v),
                  _buildPostSectionTwo(),
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_minim_dolor_in_amet".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineMediumBlack900.copyWith(
                          height: 1.31,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_september_23_2021".tr,
                      style: CustomTextStyles.bodyLargeGray60003,
                    ),
                  ),
                  SizedBox(height: 100.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 56.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_20k".tr,
                          style: CustomTextStyles.titleMediumMedium16,
                        ),
                        SizedBox(width: 22.h),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              onTapComment2();
                            },
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgComment,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Container(
        decoration: AppDecoration.gradientPrimaryToCyan400011,
        child: Row(
          children: [
            AppbarImage(
              imagePath: ImageConstant.imgContrast,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 14.v,
                bottom: 18.v,
              ),
            ),
            AppbarSubtitleThree(
              text: "msg_community_forums".tr,
              margin: EdgeInsets.fromLTRB(56.h, 17.v, 94.h, 14.v),
            )
          ],
        ),
      ),
      styleType: Style.bgGradientnameprimaryopacity04namecyan40001opacity04,
    );
  }

  /// Section Widget
  Widget _buildPostSectionOne() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapPostSectionOne();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: GestureDetector(
                onTap: () {
                  onTapTxtMinimdolorin();
                },
                child: Text(
                  "msg_minim_dolor_in_amet".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineMediumBlack900.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "msg_september_23_2021".tr,
              style: CustomTextStyles.bodyLargeGray60003,
            ),
            SizedBox(height: 12.v),
            GestureDetector(
              onTap: () {
                onTapTxtMinimdolorin1();
              },
              child: Text(
                "msg_minim_dolor_in_amet2".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLarge17.copyWith(
                  height: 1.42,
                ),
              ),
            ),
            SizedBox(height: 12.v),
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
                        imagePath: ImageConstant.imgFavoriteBlack900,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                      ),
                      SizedBox(width: 4.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_20k".tr,
                                style: CustomTextStyles.titleMediumMedium16,
                              ),
                              SizedBox(width: 22.h),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    onTapComment();
                                  },
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgComment,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        radius: BorderRadius.circular(
                                          20.h,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_567".tr,
                                          style: CustomTextStyles
                                              .titleMediumMedium16,
                                        ),
                                      )
                                    ],
                                  ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSectionTwo() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapPostSectionTwo();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            SizedBox(height: 12.v),
            Text(
              "msg_minim_dolor_in_amet2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLarge17.copyWith(
                height: 1.42,
              ),
            ),
            SizedBox(height: 12.v),
            SizedBox(
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_20k".tr,
                        style: CustomTextStyles.titleMediumMedium16,
                      ),
                      SizedBox(width: 22.h),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            onTapComment1();
                          },
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgComment,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
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
      ),
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapPostSectionOne() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapTxtMinimdolorin() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapTxtMinimdolorin1() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapComment() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapPostSectionTwo() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapComment1() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }

  /// Navigates to the communityForumsResponseScreen when the action is triggered.
  onTapComment2() {
    Get.toNamed(
      AppRoutes.communityForumsResponseScreen,
    );
  }
}
