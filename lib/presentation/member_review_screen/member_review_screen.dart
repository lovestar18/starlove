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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 22.v,
            right: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildActionButtonsRow(),
              SizedBox(height: 26.v),
              CustomElevatedButton(
                width: 108.h,
                text: "lbl_delete_user".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientDeepOrangeToYellowDecoration,
                onPressed: () {
                  onTapDeleteuser();
                },
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                width: 142.h,
                text: "lbl_make_admin".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientTealAToCyanATL18Decoration,
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_name".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_username2".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "msg_which_temple_are".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_favorite_jewish2".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_favorite_jewish3".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_linkedin".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_facebook".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_instagram".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "lbl_tiktok".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_answer".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtonsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_cancel".tr,
              style: CustomTextStyles.titleSmallOpenSansBlue500,
            ),
          ),
          CustomElevatedButton(
            height: 34.v,
            width: 110.h,
            text: "lbl_view_profile".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientOnPrimaryContainerToPurpleDecoration,
            onPressed: () {
              onTapViewprofile();
            },
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }

  /// Navigates to the userProfileTabContainerScreen when the action is triggered.
  onTapViewprofile() {
    Get.toNamed(
      AppRoutes.userProfileTabContainerScreen,
    );
  }

  /// Navigates to the adminDeleteAccountScreen when the action is triggered.
  onTapDeleteuser() {
    Get.toNamed(
      AppRoutes.adminDeleteAccountScreen,
    );
  }
}
