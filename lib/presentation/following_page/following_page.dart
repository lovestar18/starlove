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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.mainwhite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildUserSection(),
                    SizedBox(height: 6.v),
                    _buildUserSection1(),
                    SizedBox(height: 6.v),
                    _buildUserSection2(),
                    SizedBox(height: 6.v),
                    _buildUserSection3(),
                    SizedBox(height: 6.v),
                    _buildUserSection4(),
                    SizedBox(height: 6.v),
                    _buildUserSection5(),
                    SizedBox(height: 6.v),
                    _buildUserSection6(),
                    SizedBox(height: 6.v),
                    _buildUserSection7(),
                    SizedBox(height: 6.v),
                    _buildUserSection8(),
                    SizedBox(height: 6.v),
                    _buildUserSection9()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton1() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection1() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton1()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton2() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection2() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton2()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton3() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection3() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton3()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton4() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection4() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton4()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton5() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection5() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton5()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton6() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection6() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton6()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton7() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection7() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton7()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton8() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection8() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton8()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowingButton9() {
    return Padding(
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
          decoration: CustomButtonStyles.gradientIndigoAToIndigoDecoration,
          buttonTextStyle: CustomTextStyles.labelLargeRobotoOnErrorContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection9() {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse194Onerrorcontainer,
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
                    child: _buildUserInfoColumn(
                      usernameOne: "lbl_james_johnson".tr,
                      userhandleOne: "lbl_james".tr,
                    ),
                  ),
                ),
                SizedBox(width: 6.h),
                _buildFollowingButton9()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserInfoColumn({
    required String usernameOne,
    required String userhandleOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          usernameOne,
          style: CustomTextStyles.titleSmallOpenSansBold.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          userhandleOne,
          style: CustomTextStyles.bodySmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }
}
