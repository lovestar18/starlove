import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/reporting_post_authenticated_user1_controller.dart'; // ignore_for_file: must_be_immutable

class ReportingPostAuthenticatedUser1Screen
    extends GetWidget<ReportingPostAuthenticatedUser1Controller> {
  const ReportingPostAuthenticatedUser1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeaderSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.v),
                  Text(
                    "msg_why_are_you_reporting".tr,
                    style: CustomTextStyles.titleLargeBluegray90001Medium,
                  ),
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        _buildSpamReportRow1(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildHateSpeechReportRow1(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildFalseInfoReportRow1(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildNudityReportRow1(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildViolenceReportRow(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildIntellectualPropertyReportRow(),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(),
                        ),
                        SizedBox(height: 14.v),
                        _buildOtherReportRow()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildSubmitButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusBar() {
    return Container(
      width: 334.h,
      margin: EdgeInsets.only(left: 24.h),
      child: Row(
        children: [
          Text(
            "",
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCellularConnection,
            height: 12.v,
            width: 18.h,
            margin: EdgeInsets.only(left: 222.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(left: 6.h),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 6.h),
              decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 8.v,
                      width: 16.h,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 6.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgCap,
                    height: 4.v,
                    width: 1.h,
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
  Widget _buildSpamReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_it_is_spam".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005_1,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_it_appears_to_be".tr,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1,
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
  Widget _buildHateSpeechReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 24.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_hate_speech".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_the_content_of_this".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1
                        .copyWith(
                      height: 1.60,
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
  Widget _buildFalseInfoReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 24.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_false_information".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_the_content_of_this".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1
                        .copyWith(
                      height: 1.60,
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
  Widget _buildNudityReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_nudity_or_adult".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_this_post_contains".tr,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1,
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
  Widget _buildViolenceReport() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 22.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_violence".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_the_content_shared".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1
                        .copyWith(
                      height: 1.60,
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
  Widget _buildIntellectualPropertyReport() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_intellectual_property".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_this_post_may_infringe".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1
                        .copyWith(
                      height: 1.60,
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
  Widget _buildOtherReport() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 26.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_other".tr,
                    style: CustomTextStyles.titleSmallQuicksandGray90005,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_in_the_next_step".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallQuicksandBluegray300_1
                        .copyWith(
                      height: 1.60,
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
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093472x374,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 60.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_reports".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpamReportRow1() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_it_is_spam".tr,
                    style: CustomTextStyles.titleSmallGray90002_1,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_it_appears_to_be".tr,
                    style: CustomTextStyles.bodySmall12_2,
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
  Widget _buildHateSpeechReportRow1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_hate_speech".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_the_content_of_this".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12_2.copyWith(
                      height: 1.60,
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
  Widget _buildFalseInfoReportRow1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_false_information".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_the_content_of_this".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12_2.copyWith(
                      height: 1.60,
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
  Widget _buildNudityReportRow1() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_nudity_or_adult".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_this_post_contains".tr,
                    style: CustomTextStyles.bodySmall12_2,
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
  Widget _buildViolenceReportRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_violence".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_the_content_shared".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12_2.copyWith(
                      height: 1.60,
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
  Widget _buildIntellectualPropertyReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 18.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_intellectual_property".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_this_post_may_infringe".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12_2.copyWith(
                      height: 1.60,
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
  Widget _buildOtherReportRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_other".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_in_the_next_step".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12_2.copyWith(
                      height: 1.60,
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
  Widget _buildSubmitButton() {
    return Opacity(
      opacity: 0.5,
      child: CustomOutlinedButton(
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 16.h,
          bottom: 2.v,
        ),
        buttonStyle: CustomButtonStyles.outlinePrimary,
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
