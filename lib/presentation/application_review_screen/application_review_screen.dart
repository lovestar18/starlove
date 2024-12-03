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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 22.h,
            top: 12.v,
            right: 22.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.v),
              CustomElevatedButton(
                width: 150.h,
                text: "lbl_keep_pending".tr,
                margin: EdgeInsets.only(right: 14.h),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientTealAToCyanADecoration,
                buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 50.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_application_review".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 76.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_name".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_username2".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_which_temple_are".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_favorite_jewish2".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_favorite_jewish3".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_linkedin".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_facebook".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_instagram".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "lbl_tiktok".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_answer".tr,
                  style: CustomTextStyles.bodyLargeRoboto18,
                ),
              ),
              SizedBox(height: 22.v),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 42.h,
                      right: 26.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomElevatedButton(
                          height: 34.v,
                          width: 98.h,
                          text: "lbl_approve".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientOnPrimaryToPurpleDecoration,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimaryBold,
                        ),
                        CustomElevatedButton(
                          width: 108.h,
                          text: "lbl_reject".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientDeepOrangeToYellowDecoration,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimaryBold,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
