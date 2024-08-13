import 'package:flutter/material.dart';
import '';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_three.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/community_forums_home1_controller.dart';
import 'models/community_forums_home1_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityForumsHome1Page extends StatelessWidget {
  CommunityForumsHome1Page({Key? key})
      : super(
          key: key,
        );

  CommunityForumsHome1Controller controller =
      Get.put(CommunityForumsHome1Controller(CommunityForumsHome1Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection1(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                children: [
                  _buildPostSection1(),
                  SizedBox(height: 20.v),
                  _buildPostSection2(),
                  SizedBox(height: 4.v)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 56.v,
      width: 614.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 56.v,
            width: 370.h,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, 0.5),
                end: Alignment(1, 0.5),
                colors: [
                  theme.colorScheme.primary.withOpacity(0.4),
                  appTheme.cyan40001.withOpacity(0.4)
                ],
              ),
            ),
          ),
          Container(
            width: 374.h,
            decoration: AppDecoration.gradientPrimaryToCyan,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  decoration: AppDecoration.gradientPrimaryToCyan,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "msg_community_forums".tr,
                        style: CustomTextStyles.titleLargeInter,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrastOnerrorcontainer,
            height: 18.adaptSize,
            width: 18.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 16.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContentSection() {
    return SizedBox(
      height: 260.v,
      width: 546.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onTapColumnminimdolo();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 262.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_minim_dolor_in_amet".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      height: 1.31,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_september_23_2021".tr,
                    style: CustomTextStyles.bodyLargeRobotoGray60003,
                  ),
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 290.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_minim_dolor_in_amet2".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeRobotoBlack900.copyWith(
                      height: 1.42,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        constraints: BoxConstraints(
                          minHeight: 40.adaptSize,
                          minWidth: 40.adaptSize,
                        ),
                        padding: EdgeInsets.all(0),
                        icon: Container(
                          width: 40.adaptSize,
                          height: 40.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imageNotFound,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_20k".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 52.v,
                            margin: EdgeInsets.only(top: 12.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        constraints: BoxConstraints(
                                          minHeight: 40.adaptSize,
                                          minWidth: 40.adaptSize,
                                        ),
                                        padding: EdgeInsets.all(0),
                                        icon: Container(
                                          width: 40.adaptSize,
                                          height: 40.adaptSize,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              20.h,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imageNotFound,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_34".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          constraints: BoxConstraints(
                                            minHeight: 40.adaptSize,
                                            minWidth: 40.adaptSize,
                                          ),
                                          padding: EdgeInsets.all(0),
                                          icon: Container(
                                            width: 40.adaptSize,
                                            height: 40.adaptSize,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20.h,
                                              ),
                                            ),
                                            padding: EdgeInsets.all(10.h),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUserBlack90040x40,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "lbl_567".tr,
                                            style: theme.textTheme.titleMedium,
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
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 28.v,
              margin: EdgeInsets.only(
                left: 36.h,
                right: 36.h,
                bottom: 22.v,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteBlack900,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
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
  Widget _buildPostSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 262.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_minim_dolor_in_amet".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium!.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_september_23_2021".tr,
              style: CustomTextStyles.bodyLargeRobotoGray60003,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 290.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_minim_dolor_in_amet2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeRobotoBlack900.copyWith(
                height: 1.42,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(
                    minHeight: 40.adaptSize,
                    minWidth: 40.adaptSize,
                  ),
                  padding: EdgeInsets.all(0),
                  icon: Container(
                    width: 40.adaptSize,
                    height: 40.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_20k".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 52.v,
                      margin: EdgeInsets.only(top: 12.v),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  constraints: BoxConstraints(
                                    minHeight: 40.adaptSize,
                                    minWidth: 40.adaptSize,
                                  ),
                                  padding: EdgeInsets.all(0),
                                  icon: Container(
                                    width: 40.adaptSize,
                                    height: 40.adaptSize,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20.h,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_34".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                )
                              ],
                            ),
                          ),
                          IntrinsicHeight(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    constraints: BoxConstraints(
                                      minHeight: 40.adaptSize,
                                      minWidth: 40.adaptSize,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    icon: Container(
                                      width: 40.adaptSize,
                                      height: 40.adaptSize,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.h,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(10.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgUserBlack90040x40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_567".tr,
                                      style: theme.textTheme.titleMedium,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalPostSection() {
    return GestureDetector(
      onTap: () {
        onTapAdditionalPostSection();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 262.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_minim_dolor_in_amet".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium!.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_september_23_2021".tr,
              style: CustomTextStyles.bodyLargeRobotoGray60003,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 290.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_minim_dolor_in_amet2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeRobotoBlack900.copyWith(
                height: 1.42,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(
                    minHeight: 40.adaptSize,
                    minWidth: 40.adaptSize,
                  ),
                  padding: EdgeInsets.all(0),
                  icon: Container(
                    width: 40.adaptSize,
                    height: 40.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_20k".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 52.v,
                      margin: EdgeInsets.only(top: 12.v),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  constraints: BoxConstraints(
                                    minHeight: 40.adaptSize,
                                    minWidth: 40.adaptSize,
                                  ),
                                  padding: EdgeInsets.all(0),
                                  icon: Container(
                                    width: 40.adaptSize,
                                    height: 40.adaptSize,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20.h,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_34".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                )
                              ],
                            ),
                          ),
                          IntrinsicHeight(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    constraints: BoxConstraints(
                                      minHeight: 40.adaptSize,
                                      minWidth: 40.adaptSize,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    icon: Container(
                                      width: 40.adaptSize,
                                      height: 40.adaptSize,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.h,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(10.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgUserBlack90040x40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_567".tr,
                                      style: theme.textTheme.titleMedium,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildHeaderSection1() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup427320898,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 54.h,
            leading: AppbarLeadingIconbuttonThree(
              imagePath: ImageConstant.imgMegaphoneOnprimary,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_forums".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgCloseOnprimary34x34,
                margin: EdgeInsets.only(right: 8.h),
              )
            ],
          ),
          SizedBox(height: 18.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSection1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashTbtwpybncdw,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_ralph_edwards".tr,
                        style: CustomTextStyles.labelLargeMedium,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_sep_23_2021".tr,
                        style: CustomTextStyles.bodySmall11,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_mini_dolar_in_amet".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_look_my_collection".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeartBlueGray900,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_24k_likes".tr,
                    style: CustomTextStyles.bodySmallBluegray90001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMessageText,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_24k_comments".tr,
                    style: CustomTextStyles.bodySmallBluegray90001,
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
  Widget _buildPostSection2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Divider(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUnsplashTbtwpybncdw,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_ralph_edwards".tr,
                              style: CustomTextStyles.labelLargeMedium,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_sep_23_2021".tr,
                              style: CustomTextStyles.bodySmall11,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg_mini_dolar_in_amet".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_look_my_collection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHeartBlueGray900,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_24k_likes".tr,
                          style: CustomTextStyles.bodySmallBluegray90001,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMessageText,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_24k_comments".tr,
                          style: CustomTextStyles.bodySmallBluegray90001,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray50,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the communityForumsResponseOne1Screen when the action is triggered.
  onTapColumnminimdolo() {
    Get.toNamed(
      AppRoutes.communityForumsResponseOne1Screen,
    );
  }

  /// Navigates to the communityForumsResponseOne1Screen when the action is triggered.
  onTapAdditionalPostSection() {
    Get.toNamed(
      AppRoutes.communityForumsResponseOne1Screen,
    );
  }
}
