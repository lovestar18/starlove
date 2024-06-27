import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_eighteen.dart';
import '../../widgets/app_bar/appbar_subtitle_sixteen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/create_wall_post_controller.dart'; // ignore_for_file: must_be_immutable

class CreateWallPostScreen extends GetWidget<CreateWallPostController> {
  const CreateWallPostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
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
        bottomNavigationBar: _buildWallPostButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
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
              text: "lbl_write_wall_post2".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 33.h),
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
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfilePhoto,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                    ),
                    SizedBox(width: 12.h),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "msg_what_s_on_your_mind".tr,
                          style: CustomTextStyles.titleMediumOpenSansGray600,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.v),
                CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconPlus,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWallPostButton() {
    return CustomOutlinedButton(
      height: 46.v,
      width: 132.h,
      text: "lbl_wall_post2".tr.toUpperCase(),
      margin: EdgeInsets.only(bottom: 58.v),
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL22,
      buttonTextStyle: CustomTextStyles.labelLargeOpenSansPrimary,
    );
  }
}
