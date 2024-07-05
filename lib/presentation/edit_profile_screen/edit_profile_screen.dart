import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_twelve.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildProfilePictureSection(),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 8.v,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 6.v),
                        _buildNameFieldSection(),
                        SizedBox(height: 28.v),
                        _buildBioFieldSection(),
                        SizedBox(height: 28.v),
                        _buildUsernameFieldSection(),
                        SizedBox(height: 28.v),
                        _buildTiktokLinkSection(),
                        SizedBox(height: 28.v),
                        _buildInstagramLinkSection()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveButtonSection(),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfilePictureSection() {
    return SizedBox(
      height: 150.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup4675,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    CustomAppBar(
                      height: 24.v,
                      leadingWidth: 40.h,
                      leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgArrowDown,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      centerTitle: true,
                      title: AppbarSubtitleTwelve(
                        text: "lbl_edit_profile".tr,
                      ),
                    ),
                    SizedBox(height: 56.v)
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 18.h,
                ),
                padding: EdgeInsets.only(right: 108.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration:
                          IconButtonStyleHelper.gradientIndigoAToIndigoTL6,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse194,
            height: 90.adaptSize,
            width: 90.adaptSize,
            radius: BorderRadius.circular(
              44.h,
            ),
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameFieldSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_name".tr,
            style: CustomTextStyles.titleMediumInterGray90013,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.nameController,
            hintText: "lbl_display_name".tr,
            hintStyle: CustomTextStyles.titleMediumInterGray400,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text";
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray10002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBioFieldSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_bio".tr,
            style: CustomTextStyles.titleMediumInterGray90013,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.bioplaceholderController,
            hintText: "lbl_bio2".tr,
            hintStyle: CustomTextStyles.titleMediumInterGray400,
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray10002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameFieldSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_username_has_to".tr,
            style: CustomTextStyles.titleMediumInterGray90013,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.userNameController,
            hintText: "lbl_handle".tr,
            hintStyle: CustomTextStyles.titleMediumInterGray400,
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray10002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTiktokLinkSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_tiktok_link".tr,
            style: CustomTextStyles.titleMediumInterGray90013,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.tiktoklinkController,
            hintText: "lbl_tiktok_link2".tr,
            hintStyle: CustomTextStyles.titleMediumInterGray400,
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray10002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInstagramLinkSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_instagram_link".tr,
            style: CustomTextStyles.titleMediumInterGray90013,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.instagramlinkController,
            hintText: "msg_instagram_link".tr,
            hintStyle: CustomTextStyles.titleMediumInterGray400,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray10002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButtonSection() {
    return Container(
      height: 52.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 44.v,
      ),
      decoration: AppDecoration.mainwhite,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomElevatedButton(
            height: 52.v,
            text: "lbl_save_changes".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL26,
            buttonTextStyle:
                CustomTextStyles.titleMediumInterOnErrorContainer16_1,
            onPressed: () {
              onTapSavechanges();
            },
          )
        ],
      ),
    );
  }

  onTapSavechanges() {}
}
