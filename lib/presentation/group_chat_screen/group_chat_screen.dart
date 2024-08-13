import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
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
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(bottom: 40.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary.withOpacity(1),
                appTheme.gray100
              ],
            ),
          ),
          child: Column(
            children: [
              _buildHeaderSection(),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 6.v,
                ),
                child: Column(
                  children: [
                    _buildUserPostSection(),
                    SizedBox(height: 18.v),
                    _buildImageGallerySection(),
                    SizedBox(height: 18.v),
                    _buildCommentSection(),
                    SizedBox(height: 18.v),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 60.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
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
                                  imagePath: ImageConstant.imgImage3,
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
                              style: CustomTextStyles.bodySmall12_2,
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
        ),
        bottomNavigationBar: _buildMessageInputSection(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
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
                leadingWidth: 55.h,
                leading: AppbarLeadingIconbuttonOne(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 21.h),
                  onTap: () {
                    onTapArrowleftone();
                  },
                ),
                centerTitle: true,
                title: Row(
                  children: [
                    AppbarTitleImageOne(
                      imagePath: ImageConstant.imgEllipse3890,
                    ),
                    AppbarSubtitleOne(
                      text: "lbl_group_name3".tr,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        top: 5.v,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserPostSection() {
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
            width: 198.h,
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
                    style: CustomTextStyles.bodySmallInterGray200,
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
        hintStyle: CustomTextStyles.bodyMediumGray60001,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconMicBlueGray300,
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
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL82,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
