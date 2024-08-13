import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/edit_profile_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildProfileHeader(),
              SizedBox(height: 30.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        _buildNameField(),
                        SizedBox(height: 14.v),
                        _buildBioField(),
                        SizedBox(height: 14.v),
                        _buildUsernameField(),
                        SizedBox(height: 14.v),
                        _buildTiktokLinkField(),
                        SizedBox(height: 14.v),
                        _buildInstagramLinkField(),
                        SizedBox(height: 14.v),
                        _buildFacebookLinkStack(),
                        SizedBox(height: 14.v),
                        _buildLinkedinLinkStack(),
                        SizedBox(height: 14.v),
                        _buildTwitterLinkField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveChangesButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileHeader() {
    return SizedBox(
      height: 172.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 108.v,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6026,
                    height: 108.v,
                    width: double.maxFinite,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14.v),
                    decoration: AppDecoration.gradientBlackToBlack,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomAppBar(
                          leadingWidth: 54.h,
                          leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgEllipse124,
                            margin: EdgeInsets.only(left: 20.h),
                            onTap: () {
                              onTapIconbutton();
                            },
                          ),
                          actions: [
                            AppbarTrailingImage(
                              imagePath: ImageConstant.imgUserOnprimary,
                              margin: EdgeInsets.only(right: 17.h),
                            )
                          ],
                        ),
                        SizedBox(height: 42.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 92.v,
            padding: EdgeInsets.symmetric(horizontal: 142.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194,
                  height: 90.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    44.h,
                  ),
                ),
                CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.gradientIndigoAToIndigo,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCameraGray20003,
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
  Widget _buildNameField() {
    return CustomFloatingTextField(
      controller: controller.nameFieldController,
      labelText: "lbl_name".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildBioField() {
    return CustomFloatingTextField(
      controller: controller.bioFieldController,
      labelText: "lbl_bio".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_bio".tr,
    );
  }

  /// Section Widget
  Widget _buildUsernameField() {
    return CustomFloatingTextField(
      controller: controller.usernameFieldController,
      labelText: "lbl_username2".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_username2".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildTiktokLinkField() {
    return CustomFloatingTextField(
      controller: controller.tiktokLinkFieldController,
      labelText: "lbl_tiktok_link".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_tiktok_link".tr,
    );
  }

  /// Section Widget
  Widget _buildInstagramLinkField() {
    return CustomFloatingTextField(
      controller: controller.instagramLinkFieldController,
      labelText: "lbl_instagram_link".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_instagram_link".tr,
    );
  }

  /// Section Widget
  Widget _buildFacebookLinkField() {
    return CustomFloatingTextField(
      controller: controller.facebookLinkFieldController,
      labelText: "lbl_facebook_link".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_facebook_link".tr,
    );
  }

  /// Section Widget
  Widget _buildFacebookLinkStack() {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 60.v,
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_facebook_link".tr,
                      style: CustomTextStyles.bodySmallInter12,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_link".tr,
                      style: CustomTextStyles.bodyLargeInter,
                    )
                  ],
                ),
              ),
              _buildFacebookLinkField()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedinLinkField() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: CustomFloatingTextField(
        width: 74.h,
        controller: controller.linkedinLinkFieldController,
        labelText: "lbl_linkedin_link".tr,
        labelStyle: CustomTextStyles.bodyLargeInter,
        hintText: "lbl_linkedin_link".tr,
        hintStyle: CustomTextStyles.bodyLargeInter,
        alignment: Alignment.centerLeft,
        borderDecoration: FloatingTextFormFieldStyleHelper.custom,
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedinLinkStack() {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 60.v,
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildLinkedinLinkField(),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.v),
                    Text(
                      "lbl_link".tr,
                      style: theme.textTheme.bodyLarge,
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
  Widget _buildTwitterLinkField() {
    return CustomFloatingTextField(
      controller: controller.twitterLinkFieldController,
      labelText: "lbl_twitter_link".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_twitter_link".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSaveChangesButton() {
    return CustomElevatedButton(
      text: "lbl_save_changes2".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 18.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1,
    );
  }

  /// Navigates to the previous screen.
  onTapIconbutton() {
    Get.back();
  }
}
