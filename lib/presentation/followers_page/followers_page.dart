import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/followers_controller.dart';
import 'models/followers_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FollowersPage extends StatelessWidget {
  FollowersPage({Key? key})
      : super(
          key: key,
        );

  FollowersController controller =
      Get.put(FollowersController(FollowersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.mainwhite,
          child: Column(
            children: [_buildFollowersList()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowersList() {
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
                    horizontal: 14.h,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: _buildUserInfo(
                            name: "lbl_james_johnson".tr,
                            username: "lbl_james".tr,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          bottom: 2.v,
                        ),
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
                            width: 76.h,
                            text: "lbl_follow2".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.outlineTL12,
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
  Widget _buildUserInfo({
    required String name,
    required String username,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: CustomTextStyles.titleSmallOpenSansBold.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          username,
          style: CustomTextStyles.bodySmallIndigoA70001.copyWith(
            color: appTheme.indigoA70001,
          ),
        )
      ],
    );
  }
}
