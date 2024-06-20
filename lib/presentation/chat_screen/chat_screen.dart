import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_eighteen.dart';
import '../../widgets/app_bar/appbar_subtitle_fourteen.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/chat_controller.dart'; // ignore_for_file: must_be_immutable

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildHeader(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [SizedBox(height: 94.v), _buildMainColumn()],
          ),
        ),
        bottomNavigationBar: _buildReplySection(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgRectangle1,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 2.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                children: [
                  AppbarSubtitleFourteen(
                    text: "lbl_helena_hills".tr,
                  ),
                  SizedBox(height: 3.v),
                  AppbarSubtitleEighteen(
                    text: "lbl_active_20m_ago".tr,
                    margin: EdgeInsets.only(right: 4.h),
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
            top: 12.v,
            right: 15.h,
            bottom: 20.v,
          ),
          onTap: () {
            onTapUserone();
          },
        )
      ],
      styleType: Style.bgOutline_1,
    );
  }

  /// Section Widget
  Widget _buildChatSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomElevatedButton(
            width: 232.h,
            text: "msg_this_is_the_main".tr,
            buttonStyle: CustomButtonStyles.fillBlueATL18,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(right: 106.h),
            child: Text(
              "msg_nov_30_2023_9_41".tr,
              style: CustomTextStyles.bodySmallInterGray60003,
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfileImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.fillGray20001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_oh".tr,
                              style: theme.textTheme.titleSmall,
                            )
                          ],
                        ),
                      ),
                      CustomElevatedButton(
                        width: 62.h,
                        text: "lbl_cool".tr,
                        buttonStyle: CustomButtonStyles.fillGrayLR18,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.fillGray20001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "msg_how_does_it_work".tr,
                              style: theme.textTheme.titleSmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 266.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.blue1.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL181,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_you_just_edit_any".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPrimary.copyWith(
                    height: 1.40,
                  ),
                )
              ],
            ),
          ),
          CustomElevatedButton(
            width: 74.h,
            text: "lbl_boom".tr,
            buttonStyle: CustomButtonStyles.fillBlueATL181,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfileImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 20.v),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        width: 80.h,
                        text: "lbl_hmmm".tr,
                        buttonStyle: CustomButtonStyles.fillGrayTL18,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      CustomElevatedButton(
                        width: 118.h,
                        text: "msg_i_think_i_get_it".tr,
                        buttonStyle: CustomButtonStyles.fillGrayLR18,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      Container(
                        width: 246.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillGray20001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "msg_will_head_to_the".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall!.copyWith(
                                height: 1.40,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [_buildChatSection()],
      ),
    );
  }

  /// Section Widget
  Widget _buildReplySection() {
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

  /// Navigates to the chatProfileScreen when the action is triggered.
  onTapUserone() {
    Get.toNamed(
      AppRoutes.chatProfileScreen,
    );
  }
}
