import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/following_controller.dart';
import 'models/following_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FollowingPage extends StatelessWidget {
  FollowingPage({Key? key})
      : super(
          key: key,
        );

  FollowingController controller =
      Get.put(FollowingController(FollowingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.mainwhite,
          child: Column(
            children: [_buildMainUserInfoSection()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainUserInfoSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.mainwhite,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse194Primary1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.0.adaptSize,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 6.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: _buildUserInfoSection(
                            jamesjohnson: "lbl_james_johnson".tr,
                            jamesOne: "lbl_james".tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [appTheme.indigoA100, appTheme.indigo500],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: CustomOutlinedButton(
                            width: 96.h,
                            text: "lbl_following2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientIndigoAToIndigoDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRobotoPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserInfoSection({
    required String jamesjohnson,
    required String jamesOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          jamesjohnson,
          style: CustomTextStyles.titleSmallOpenSansBold.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          jamesOne,
          style: CustomTextStyles.bodySmallIndigoA70001.copyWith(
            color: appTheme.indigoA70001,
          ),
        )
      ],
    );
  }
}
