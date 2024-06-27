import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_eighteen.dart';
import '../../widgets/app_bar/appbar_subtitle_sixteen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/write_in_communty_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInCommuntyScreen extends GetWidget<WriteInCommuntyController> {
  const WriteInCommuntyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 86.v,
          ),
          child: Column(
            children: [_buildPostDetails(), SizedBox(height: 4.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 38.v,
      title: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Row(
          children: [
            AppbarSubtitleEighteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSixteen(
              text: "lbl_forum_post".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 57.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            top: 7.v,
            right: 29.h,
            bottom: 7.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPostTitleInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_post_title".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            width: 288.h,
            controller: controller.yournamegmailcoController,
            hintText: "msg_matzah_ball_soup".tr,
            hintStyle: CustomTextStyles.bodyMediumGray90009,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            width: 288.h,
            controller: controller.yournamegmailco1Controller,
            hintText: "msg_people_who_love".tr,
            hintStyle: CustomTextStyles.bodyMediumGray90009,
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostDetails() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPostTitleInput(),
          SizedBox(height: 18.v),
          _buildDescriptionInput(),
          SizedBox(height: 160.v),
          CustomOutlinedButton(
            height: 34.v,
            width: 140.h,
            text: "lbl_forum_post2".tr.toUpperCase(),
            margin: EdgeInsets.only(left: 76.h),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL16,
            buttonTextStyle: CustomTextStyles.labelLargeOpenSansPrimary,
          )
        ],
      ),
    );
  }
}
