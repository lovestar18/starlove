import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_thirteen.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/reporting_post_5_controller.dart'; // ignore_for_file: must_be_immutable

class ReportingPost5Screen extends GetWidget<ReportingPost5Controller> {
  const ReportingPost5Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.mainwhite,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildAppBar(),
                  ),
                  SizedBox(height: 16.v),
                  _buildDescriptionSection(),
                  SizedBox(height: 16.v),
                  _buildKeyboardSection()
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray900031,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitleThirteen(
        text: "lbl_report".tr,
        margin: EdgeInsets.only(left: 130.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildReportDetails() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "msg_below_please_provide".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeOpenSansGray90003.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: controller.additionaldetaiController,
            hintText: "msg_write_any_additional".tr,
            hintStyle: CustomTextStyles.bodyMediumGray60004,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 30.v, 8.h, 8.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgResize,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 74.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 12.h,
              top: 26.v,
              bottom: 26.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL4,
          ),
          SizedBox(height: 116.v),
          CustomElevatedButton(
            height: 50.v,
            text: "lbl_submit".tr,
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle:
                CustomTextStyles.titleMediumOpenSansPrimarySemiBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [_buildReportDetails()],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_q".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_w".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_e".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_r".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_t".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_y".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_u".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_i".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_o".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_p".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardRow1() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_a".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_s".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_d".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_f".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_g".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_h".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_j".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_k".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(width: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_l".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardRow2() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightWhiteA700,
            height: 42.v,
            width: 40.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 14.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_z".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_x".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_c".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_v".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_b".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_n".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_m".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDelete,
            height: 42.adaptSize,
            width: 42.adaptSize,
            margin: EdgeInsets.only(left: 12.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardRow3() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_123".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeIBMPlexSans,
            ),
          ),
          SizedBox(width: 6.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_space".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeIBMPlexSans,
            ),
          ),
          SizedBox(width: 6.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineBluegray4001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_send".tr,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyLargeIBMPlexSansPrimary,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGrayEd,
      child: Column(
        children: [
          _buildKeyboardRow(),
          SizedBox(height: 12.v),
          _buildKeyboardRow1(),
          SizedBox(height: 12.v),
          _buildKeyboardRow2(),
          SizedBox(height: 12.v),
          _buildKeyboardRow3(),
          SizedBox(height: 28.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray7001,
                  height: 26.v,
                  width: 28.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMenuBlueGray700,
                  height: 24.v,
                  width: 14.h,
                )
              ],
            ),
          ),
          SizedBox(height: 16.v)
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
