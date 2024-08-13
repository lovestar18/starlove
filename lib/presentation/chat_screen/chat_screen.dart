import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
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
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildUsernameSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 6.v,
              ),
              child: Column(
                children: [
                  _buildPostSection(),
                  SizedBox(height: 18.v),
                  _buildImageGallerySection(),
                  SizedBox(height: 18.v),
                  _buildCommentSection(),
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: 170.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 56.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 8.v,
                          ),
                          decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "msg_username_is_typing".tr,
                              style: CustomTextStyles.bodySmall12_2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildMessageInputSection(),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup7860,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              CustomAppBar(
                centerTitle: true,
                title: Row(
                  children: [
                    AppbarTitleImageOne(
                      imagePath: ImageConstant.imgEllipse3890,
                    ),
                    AppbarSubtitleOne(
                      text: "lbl_username2".tr,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                    )
                  ],
                ),
                actions: [
                  AppbarTrailingIconbuttonOne(
                    imagePath: ImageConstant.imgNotification,
                    margin: EdgeInsets.only(right: 19.h),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage40x401,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.only(
                left: 10.h,
                top: 6.v,
                bottom: 6.v,
              ),
              decoration: AppDecoration.outlineGray50001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_mike_mazowski2".tr,
                    style: CustomTextStyles.labelLargeBold,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "msg_hello_guys_we_have2".tr,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBluegray9000112.copyWith(
                      height: 1.50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_16_04".tr,
                      style: CustomTextStyles.bodySmall12_2,
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
  Widget _buildImageGallerySection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage40x401,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
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
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle100x100,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle7,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
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
  Widget _buildCommentSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 194.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillBlueA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 154.h,
                  child: Text(
                    "msg_that_s_very_nice".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray20012.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_16_04".tr,
                    style: CustomTextStyles.bodySmallGray200,
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage40x402,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 8.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageInputSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 34.v,
      ),
      child: CustomTextFormField(
        controller: controller.messageInputSectionController,
        hintText: "lbl_message2".tr,
        hintStyle: CustomTextStyles.bodyMediumInterGray60001,
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.only(
            left: 30.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconMicBlueGray300,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        suffix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGifBlueGray300,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL82,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1),
      ),
    );
  }
}
