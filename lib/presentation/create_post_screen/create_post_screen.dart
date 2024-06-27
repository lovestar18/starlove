import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_eighteen.dart';
import '../../widgets/app_bar/appbar_subtitle_sixteen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/create_post_controller.dart'; // ignore_for_file: must_be_immutable

class CreatePostScreen extends GetWidget<CreatePostController> {
  const CreatePostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppbarSection(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
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
  PreferredSizeWidget _buildAppbarSection() {
    return CustomAppBar(
      height: 32.v,
      title: Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: Row(
          children: [
            AppbarSubtitleEighteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSixteen(
              text: "lbl_create".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 82.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            top: 4.v,
            right: 21.h,
            bottom: 4.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileSection() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_what_s_on_your_mind".tr,
                      style: CustomTextStyles.titleMediumOpenSansGray600,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            alignment: Alignment.centerLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPlus,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.outlineBluegray90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 6.v,
                  ),
                  child: Text(
                    "lbl_post".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeOpenSansPrimary,
                  ),
                ),
                SizedBox(width: 4.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 6.v,
                  ),
                  child: Text(
                    "lbl_story2".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeOpenSansGray20002,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
