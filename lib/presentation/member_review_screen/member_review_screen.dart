import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/member_review_controller.dart'; // ignore_for_file: must_be_immutable

class MemberReviewScreen extends GetWidget<MemberReviewController> {
  const MemberReviewScreen({Key? key})
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
            children: [_buildCancelColumn(), SizedBox(height: 4.v)],
          ),
        ),
        bottomNavigationBar: _buildProfileActionsRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelColumn() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_cancel".tr,
                    style: CustomTextStyles.titleSmallOpenSansBlue500,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_name".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_username2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_which_temple_are".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_favorite_jewish2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_favorite_jewish3".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_linkedin".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_facebook".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_instagram".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_tiktok".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_answer".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileActionsRow() {
    return Container(
      height: 36.v,
      margin: EdgeInsets.only(
        left: 62.h,
        right: 62.h,
        bottom: 20.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            height: 34.v,
            width: 110.h,
            text: "lbl_view_profile".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientOnPrimaryToPurpleDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
          CustomElevatedButton(
            width: 108.h,
            text: "lbl_delete_user".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientDeepOrangeToYellowDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          )
        ],
      ),
    );
  }
}
