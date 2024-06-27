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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 22.v,
              ),
              child: Column(
                children: [_buildReferAFriendForm(), SizedBox(height: 4.v)],
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
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUnionGray90003,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 20.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapUnionone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildYourEmailSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_your_email".tr,
              style: CustomTextStyles.titleMediumInterGray90008SemiBold,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_jacob_welovetokevel_com".tr,
            hintStyle: CustomTextStyles.titleMediumPoppinsGray700Medium,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            filled: false,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsEmailSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_friend_s_email".tr,
              style: CustomTextStyles.titleMediumInterGray90008SemiBold,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.email1Controller,
            hintText: "msg_jacob_welovetokevel_com".tr,
            hintStyle: CustomTextStyles.titleMediumPoppinsGray700Medium,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            filled: false,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsNameSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_friend_s_first_and".tr,
              style: CustomTextStyles.titleMediumInterGray90008SemiBold,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.lastNameController,
            hintText: "lbl_jake_maizel".tr,
            hintStyle: CustomTextStyles.titleMediumPoppinsGray700Medium,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            filled: false,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_submit".tr,
      buttonStyle: CustomButtonStyles.fillIndigoATL12,
      buttonTextStyle: CustomTextStyles.titleMediumInterPrimary16_1,
    );
  }

  /// Section Widget
  Widget _buildReferAFriendForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_refer_a_friend".tr,
              style: CustomTextStyles.titleLargePoppinsGray90004,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_invite_a_friend".tr,
              style: CustomTextStyles.titleMediumInterGray50001SemiBold,
            ),
          ),
          SizedBox(height: 30.v),
          _buildYourEmailSection(),
          SizedBox(height: 16.v),
          _buildFriendsEmailSection(),
          SizedBox(height: 14.v),
          _buildFriendsNameSection(),
          SizedBox(height: 14.v),
          _buildSubmitButton()
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapUnionone() {
    Get.back();
  }
}
