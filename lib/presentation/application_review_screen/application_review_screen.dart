import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/application_review_controller.dart'; // ignore_for_file: must_be_immutable

class ApplicationReviewScreen extends GetWidget<ApplicationReviewController> {
  const ApplicationReviewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [_buildMainContentColumn(), SizedBox(height: 4.v)],
          ),
        ),
        bottomNavigationBar: _buildApprovalButtonsRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelButtonsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "lbl_cancel".tr,
            style: CustomTextStyles.titleSmallOpenSansBlue500,
          ),
          CustomElevatedButton(
            width: 150.h,
            text: "lbl_keep_pending".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientTealAToCyanATL18Decoration,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplicationReviewColumn() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCancelButtonsRow(),
          SizedBox(height: 50.v),
          Text(
            "msg_application_review".tr,
            style: CustomTextStyles.headlineMediumBluegray80001,
          ),
          SizedBox(height: 46.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_name".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_username2".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_which_temple_are".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_favorite_jewish2".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_favorite_jewish3".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_linkedin".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_facebook".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_instagram".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_tiktok".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_answer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [_buildApplicationReviewColumn()],
      ),
    );
  }

  /// Section Widget
  Widget _buildApprovalButtonsRow() {
    return Container(
      height: 36.v,
      margin: EdgeInsets.only(
        left: 58.h,
        right: 58.h,
        bottom: 22.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 124.h,
            text: "lbl_approve".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientOnPrimaryToPurpleDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
          SizedBox(width: 24.h),
          CustomElevatedButton(
            width: 108.h,
            text: "lbl_reject".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientDeepOrangeToYellowDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          )
        ],
      ),
    );
  }
}
