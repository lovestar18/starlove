import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/activity1_controller.dart';
import 'models/userprofilelist3_item_model.dart';
import 'widgets/userprofilelist3_item_widget.dart'; // ignore_for_file: must_be_immutable

class Activity1Screen extends GetWidget<Activity1Controller> {
  const Activity1Screen({Key? key})
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
            child: Column(
              children: [
                _buildHeaderSection(),
                SizedBox(height: 14.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [_buildUserProfileList()],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowNavigation() {
    return SizedBox(
      height: 116.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 34.adaptSize,
              width: 34.adaptSize,
              margin: EdgeInsets.only(
                left: 20.h,
                bottom: 20.v,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftOnerrorcontainer12x8,
                    height: 12.v,
                    width: 8.h,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.gradientIndigoAToCyan,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(right: 70.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "",
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCellularConnection,
                        height: 12.v,
                        width: 18.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 220.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 12.v,
                        width: 16.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(left: 6.h),
                            decoration:
                                AppDecoration.outlineOnErrorContainer.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 8.v,
                                    width: 16.h,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onErrorContainer
                                          .withOpacity(1),
                                      borderRadius: BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6.h),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCap,
                                  height: 4.v,
                                  width: 1.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        width: 34.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector176,
                              height: 1.v,
                              width: double.maxFinite,
                            ),
                            SizedBox(height: 4.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector176,
                              height: 1.v,
                              width: double.maxFinite,
                            ),
                            SizedBox(height: 4.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector176,
                              height: 1.v,
                              width: double.maxFinite,
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 64.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_notifications".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.v)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 100.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_karennne2".tr,
                    style: CustomTextStyles.labelLargeQuicksand_1,
                  ),
                  TextSpan(
                    text: "lbl_liked_3_posts2".tr,
                    style:
                        CustomTextStyles.bodyMediumQuicksandBluegray9000513_1,
                  ),
                  TextSpan(
                    text: "lbl_3h".tr,
                    style: CustomTextStyles.bodyMediumQuicksandBluegray30013,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x341,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x342,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x343,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationStack() {
    return Container(
      height: 68.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    17.0.adaptSize,
                  ),
                  margin: EdgeInsets.only(bottom: 20.v),
                ),
                Container(
                  width: 194.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_craig_love2".tr,
                          style: CustomTextStyles.labelLargeQuicksand_1,
                        ),
                        TextSpan(
                          text: "msg_mentioned_you_in".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_jacob_w".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandIndigo90001,
                        ),
                        TextSpan(
                          text: "lbl_exactly2".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandBluegray30013,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  margin: EdgeInsets.only(right: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRectangle34x344,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 44.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlueGray300,
                      height: 10.v,
                      width: 12.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMediumQuicksandBluegray300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 166.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_martini_rond".tr,
                    style: CustomTextStyles.labelLargeQuicksand_1,
                  ),
                  TextSpan(
                    text: "lbl_sent_you_love".tr,
                    style:
                        CustomTextStyles.bodyMediumQuicksandBluegray9000513_1,
                  ),
                  TextSpan(
                    text: "lbl_3d".tr,
                    style: CustomTextStyles.bodyMediumQuicksandBluegray30013,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 94.h,
            height: 24.v,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 4.v,
                ),
              ),
              onPressed: () {},
              child: Text(
                "lbl_heart_back".tr,
                style: CustomTextStyles.labelLargeQuicksandPrimaryMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow2() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_martini_rond".tr,
                    style: CustomTextStyles.labelLargeQuicksand_1,
                  ),
                  TextSpan(
                    text: "msg_started_following".tr,
                    style:
                        CustomTextStyles.bodyMediumQuicksandBluegray9000513_1,
                  ),
                  TextSpan(
                    text: "lbl_3d".tr,
                    style: CustomTextStyles.bodyMediumQuicksandBluegray30013,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 62.h,
            height: 24.v,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 4.v,
                ),
              ),
              onPressed: () {},
              child: Text(
                "lbl_follow2".tr,
                style: CustomTextStyles.labelLargeQuicksandPrimaryMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentStack() {
    return Container(
      height: 68.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    17.0.adaptSize,
                  ),
                  margin: EdgeInsets.only(bottom: 20.v),
                ),
                Container(
                  width: 194.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_craig_love2".tr,
                          style: CustomTextStyles.labelLargeQuicksand_1,
                        ),
                        TextSpan(
                          text: "msg_mentioned_you_in".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_jacob_w".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandIndigo90001,
                        ),
                        TextSpan(
                          text: "lbl_exactly2".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandBluegray30013,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  margin: EdgeInsets.only(right: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRectangle34x344,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 44.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlueGray300,
                      height: 10.v,
                      width: 12.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMediumQuicksandBluegray300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow3() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 100.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_karennne2".tr,
                    style: CustomTextStyles.labelLargeQuicksand_1,
                  ),
                  TextSpan(
                    text: "lbl_liked_3_posts2".tr,
                    style:
                        CustomTextStyles.bodyMediumQuicksandBluegray9000513_1,
                  ),
                  TextSpan(
                    text: "lbl_3h".tr,
                    style: CustomTextStyles.bodyMediumQuicksandBluegray30013,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x341,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x342,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x343,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow4() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_martini_rond".tr,
                    style: CustomTextStyles.labelLargeQuicksand_1,
                  ),
                  TextSpan(
                    text: "msg_started_following".tr,
                    style:
                        CustomTextStyles.bodyMediumQuicksandBluegray9000513_1,
                  ),
                  TextSpan(
                    text: "lbl_3d".tr,
                    style: CustomTextStyles.bodyMediumQuicksandBluegray30013,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 62.h,
            height: 24.v,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 4.v,
                ),
              ),
              onPressed: () {},
              child: Text(
                "lbl_follow2".tr,
                style: CustomTextStyles.labelLargeQuicksandPrimaryMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentStack1() {
    return Container(
      height: 68.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    17.0.adaptSize,
                  ),
                  margin: EdgeInsets.only(bottom: 20.v),
                ),
                Container(
                  width: 194.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_craig_love2".tr,
                          style: CustomTextStyles.labelLargeQuicksand_1,
                        ),
                        TextSpan(
                          text: "msg_mentioned_you_in".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_jacob_w".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandIndigo90001,
                        ),
                        TextSpan(
                          text: "lbl_exactly2".tr,
                          style: CustomTextStyles
                              .bodyMediumQuicksandBluegray9000513_1,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style:
                              CustomTextStyles.bodyMediumQuicksandBluegray30013,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  margin: EdgeInsets.only(right: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRectangle34x344,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 44.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlueGray300,
                      height: 10.v,
                      width: 12.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_reply".tr,
                        style: CustomTextStyles.labelMediumQuicksandBluegray300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInteractionRow5() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.0.adaptSize,
            ),
          ),
          Container(
            width: 102.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_karennne2".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "lbl_liked_3_posts2".tr,
                    style: CustomTextStyles.bodyMediumInterBluegray90005,
                  ),
                  TextSpan(
                    text: "lbl_3h".tr,
                    style: CustomTextStyles.bodyMediumInterBluegray300,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x341,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x342,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle34x343,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 76.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(4.h),
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapBtnArrowleftone();
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeftOnprimary,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.gradientErrorContainerToCyan,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMegaphone,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 64.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_notifications".tr,
                      style: CustomTextStyles.titleLargeSemiBold,
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
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller
              .activity1ModelObj.value.userprofilelist3ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist3ItemModel model = controller
                .activity1ModelObj.value.userprofilelist3ItemList.value[index];
            return Userprofilelist3ItemWidget(
              model,
            );
          },
        ),
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Groups:
        return AppRoutes.imagepickerTabContainerPage;
      case BottomBarEnum.Post:
        return "/";
      case BottomBarEnum.Kibutz:
        return AppRoutes.communityForumsHome1Page;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOptionsOneBottomsheet;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.imagepickerTabContainerPage:
        return ImagepickerTabContainerPage();
      case AppRoutes.communityForumsHome1Page:
        return CommunityForumsHome1Page();
      case AppRoutes.profileOptionsOneBottomsheet:
        return ProfileOptionsOneBottomsheet();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapBtnArrowleftone() {
    Get.back();
  }
}
