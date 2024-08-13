import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/event_details_public_controller.dart'; // ignore_for_file: must_be_immutable

class EventDetailsPublicScreen extends GetWidget<EventDetailsPublicController> {
  const EventDetailsPublicScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(top: 20.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildEventDetailsSection(),
                SizedBox(height: 14.v),
                _buildMainContentSection(),
                SizedBox(height: 16.v),
                _buildAdditionalInfoSection(),
                SizedBox(height: 12.v),
                _buildAdditionalLikesCommentsSection(),
                SizedBox(height: 20.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.blueGray50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 57.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 5.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_event_name".tr,
      ),
      styleType: Style.bgGradientnameerrorContainernamecyan400,
    );
  }

  /// Section Widget
  Widget _buildEventDetailsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWebaliserTptx170x338,
            height: 170.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_event_name".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "msg_event_description".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillBluegray90001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_public".tr,
                        style: CustomTextStyles.labelLarge12,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_event_members".tr,
                        style: CustomTextStyles.labelLargeInterMedium,
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        height: 28.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3884,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3883,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 10.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse388228x28,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 20.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3886,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 30.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3887,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 40.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3888,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 50.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3889,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              radius: BorderRadius.circular(
                                14.h,
                              ),
                              margin: EdgeInsets.only(left: 60.h),
                            ),
                            Container(
                              width: 28.adaptSize,
                              height: 28.adaptSize,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 70.h),
                              decoration: AppDecoration
                                  .gradientErrorContainerToCyan400
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              child: OutlineGradientButton(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 1.v,
                                  right: 1.h,
                                  bottom: 1.v,
                                ),
                                strokeWidth: 1.h,
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    theme.colorScheme.errorContainer,
                                    appTheme.cyan400
                                  ],
                                ),
                                corners: Corners(
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14),
                                  bottomLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(14),
                                ),
                                child: Text(
                                  "lbl_20".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .labelMediumInterOnPrimary,
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
                  child: Text(
                    "lbl_view_all".tr,
                    style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildTimeDateSection(
              timedate: "lbl_location".tr,
              timedateOne: "lbl_location2".tr,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildTimeDateSection(
              timedate: "lbl_time_date".tr,
              timedateOne: "lbl_time_date2".tr,
            ),
          ),
          SizedBox(height: 28.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.errorContainer,
                        appTheme.cyan400
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: CustomOutlinedButton(
                      height: 40.v,
                      text: "lbl_join_events".tr,
                      buttonStyle: CustomButtonStyles.outline,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.errorContainer,
                        appTheme.cyan400
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: CustomOutlinedButton(
                      height: 40.v,
                      text: "lbl_event_chat".tr,
                      buttonStyle: CustomButtonStyles.outline,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
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
  Widget _buildMainContentSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextFormField(
                        controller: controller.whatshappeningvController,
                        hintText: "msg_what_s_happening".tr,
                        hintStyle: CustomTextStyles.bodyMediumBluegray3000114,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(6.h, 4.v, 8.h, 4.v),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgAvatar,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 50.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineGrayTL8,
                      ),
                      SizedBox(height: 44.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImageBlueGray900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGifBlueGray900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: CustomIconButton(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgEmojiBlueGray90001,
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomElevatedButton(
                              height: 36.v,
                              width: 72.h,
                              text: "lbl_post".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientErrorContainerToCyanDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallOnPrimary_2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray10002,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: _buildUserInfoSection(
                          ralphedwards: "lbl_ralph_edwards".tr,
                          duration: "lbl_2_minutes".tr,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgMore,
                        height: 4.v,
                        width: 20.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 10.v),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text(
                              "msg_look_my_collection".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle188,
                                    height: 202.v,
                                    width: 164.h,
                                    radius: BorderRadius.horizontal(
                                      left: Radius.circular(10.h),
                                    ),
                                  ),
                                  SizedBox(width: 4.h),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle189,
                                          height: 98.v,
                                          width: double.maxFinite,
                                        ),
                                        SizedBox(height: 4.v),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle190,
                                          height: 98.v,
                                          width: double.maxFinite,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildLikesCommentsSection(
                                p24klikesOne: "lbl_24k_likes".tr,
                                p24kcommentsOne: "lbl_24k_comments".tr,
                                p24kstarsOne: "lbl_24k_stars".tr,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalInfoSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10002,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: _buildUserInfoSection(
                    ralphedwards: "lbl_ralph_edwards".tr,
                    duration: "lbl_2_minutes".tr,
                  ),
                ),
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgMore,
                  height: 4.v,
                  width: 20.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 10.v),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "msg_look_my_collection".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalLikesCommentsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle188,
                  height: 202.v,
                  width: 164.h,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(10.h),
                  ),
                ),
                SizedBox(width: 4.h),
                Expanded(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle189,
                        height: 98.v,
                        width: double.maxFinite,
                      ),
                      SizedBox(height: 4.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle190,
                        height: 98.v,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildLikesCommentsSection(
              p24klikesOne: "lbl_24k_likes".tr,
              p24kcommentsOne: "lbl_24k_comments".tr,
              p24kstarsOne: "lbl_24k_stars".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeDateSection({
    required String timedate,
    required String timedateOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          timedate,
          style: CustomTextStyles.labelLargeInterMedium.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        Text(
          timedateOne,
          style: CustomTextStyles.bodyMediumInter_3.copyWith(
            color: appTheme.blueGray90001,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildUserInfoSection({
    required String ralphedwards,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ralphedwards,
          style: CustomTextStyles.bodyMedium_1.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          duration,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.blueGray30001,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildLikesCommentsSection({
    required String p24klikesOne,
    required String p24kcommentsOne,
    required String p24kstarsOne,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLike,
          height: 16.adaptSize,
          width: 16.adaptSize,
          alignment: Alignment.bottomCenter,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              p24klikesOne,
              style: CustomTextStyles.bodySmallInterBluegray90001.copyWith(
                color: appTheme.blueGray90001,
              ),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMessageText,
          height: 16.adaptSize,
          width: 16.adaptSize,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(left: 20.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            p24kcommentsOne,
            style: CustomTextStyles.bodySmallInterBluegray90001.copyWith(
              color: appTheme.blueGray90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgTelevisionBlueGray90001,
          height: 18.v,
          width: 16.h,
          margin: EdgeInsets.only(left: 20.h),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              p24kstarsOne,
              style: CustomTextStyles.bodySmallInterBluegray90001.copyWith(
                color: appTheme.blueGray90001,
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
