import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_fifteen.dart';
import '../../widgets/app_bar/appbar_subtitle_sixteen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/write_wall_post_controller.dart'; // ignore_for_file: must_be_immutable

class WriteWallPostScreen extends GetWidget<WriteWallPostController> {
  const WriteWallPostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [_buildProfileSection(), SizedBox(height: 4.v)],
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
            AppbarSubtitleSixteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleFifteen(
              text: "lbl_write_on_wall".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 42.h),
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
  Widget _buildProfileSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfilePhoto,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "msg_what_s_on_your_mind".tr,
                    style: CustomTextStyles.titleMediumOpenSansGray600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.v),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            alignment: Alignment.centerLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPlus,
            ),
          ),
          SizedBox(height: 294.v),
          CustomOutlinedButton(
            height: 34.v,
            width: 128.h,
            text: "lbl_wall_post".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL16,
          )
        ],
      ),
    );
  }
}
