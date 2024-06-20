import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_seventeen.dart';
import '../../widgets/app_bar/appbar_subtitle_ten.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
import '../../widgets/app_bar/appbar_trailing_image_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/group_chat_controller.dart'; // ignore_for_file: must_be_immutable

class GroupChatScreen extends GetWidget<GroupChatController> {
  const GroupChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(
            top: 72.v,
            bottom: 40.v,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary.withOpacity(1),
                appTheme.gray10005
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildChatContent(),
                SizedBox(height: 84.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildMessageInput(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 72.v,
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray6000124x24,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 24.v,
          bottom: 24.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(
          children: [
            AppbarTitleImageOne(
              imagePath: ImageConstant.imgImage48x48,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 1.v,
                bottom: 2.v,
              ),
              child: Column(
                children: [
                  AppbarSubtitleTen(
                    text: "msg_fullsnack_designers".tr,
                  ),
                  SizedBox(height: 3.v),
                  AppbarSubtitleSeventeen(
                    text: "lbl_12_people".tr,
                    margin: EdgeInsets.only(right: 122.h),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImageTwo(
          imagePath: ImageConstant.imgUserBlack900,
          margin: EdgeInsets.only(
            top: 24.v,
            right: 7.h,
            bottom: 24.v,
          ),
          onTap: () {
            onTapUserone();
          },
        )
      ],
      styleType: Style.bgOutline_2,
    );
  }

  /// Section Widget
  Widget _buildChatContent() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage40x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Container(
                    height: 360.v,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle100x204,
                              height: 100.v,
                              width: 204.h,
                              radius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle100x100,
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  radius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                                SizedBox(width: 4.h),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle10,
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  radius: BorderRadius.circular(
                                    4.h,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 260.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 6.v,
                            ),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(left: 4.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_mike_mazowski2".tr,
                                        style:
                                            CustomTextStyles.bodySmallCyanA400,
                                      ),
                                      Text(
                                        "lbl_admin".tr,
                                        style: CustomTextStyles
                                            .bodySmallBluegray30001,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "msg_hello_guys_we_have2".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallInterIndigo90002
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4.h),
                                    child: Text(
                                      "lbl_16_04".tr,
                                      style: CustomTextStyles
                                          .bodySmallBluegray30001,
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
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 198.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.blue1.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL82,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "msg_that_s_very_nice".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodySmallInterPrimary.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_16_04".tr,
                          style: CustomTextStyles.bodySmallPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage40x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    bottom: 18.v,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 48.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 56.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray60001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray60001,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray60001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 16.v,
                  width: 42.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 8.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        margin: EdgeInsets.only(right: 8.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_2_others_are_typing".tr,
                    style: CustomTextStyles.bodySmallBluegray60001,
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
  Widget _buildMessageInput() {
    return Container(
      height: 40.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 34.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextFormField(
            controller: controller.messageController,
            hintText: "lbl_message2".tr,
            hintStyle: CustomTextStyles.bodyMediumInterGray60003,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 8.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconMic,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 40.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 10.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the groupDescriptionTabContainerScreen when the action is triggered.
  onTapUserone() {
    Get.toNamed(
      AppRoutes.groupDescriptionTabContainerScreen,
    );
  }
}
