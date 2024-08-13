import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/refer_a_friend_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReferAFriendScreen extends GetWidget<ReferAFriendController> {
  ReferAFriendScreen({Key? key})
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
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 22.v),
              child: Column(
                children: [
                  _buildReferAFriendSection(),
                  SizedBox(height: 30.v),
                  _buildYourEmailSection(),
                  SizedBox(height: 16.v),
                  _buildFriendsEmailSection(),
                  SizedBox(height: 14.v),
                  _buildFriendsNameSection(),
                  SizedBox(height: 14.v),
                  _buildSubmitButtonSection(),
                  SizedBox(height: 4.v)
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
      height: 84.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray90002,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 16.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReferAFriendSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_refer_a_friend".tr,
            style: CustomTextStyles.titleLargePoppinsGray90003,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_invite_a_friend".tr,
            style: CustomTextStyles.titleMediumInterGray50001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourEmailSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_your_email".tr,
              style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_jacob_welovetokevel_com".tr,
              hintStyle: CustomTextStyles.titleMediumPoppinsGray700,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email";
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsEmailSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_friend_s_email".tr,
              style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomTextFormField(
              controller: controller.email1Controller,
              hintText: "msg_jacob_welovetokevel_com".tr,
              hintStyle: CustomTextStyles.titleMediumPoppinsGray700,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email";
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsNameSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_friend_s_first_and".tr,
              style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomTextFormField(
              controller: controller.lastNameController,
              hintText: "lbl_jake_maizel".tr,
              hintStyle: CustomTextStyles.titleMediumPoppinsGray700,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 14.v,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButtonSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_submit".tr,
            margin: EdgeInsets.only(right: 4.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimary,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
