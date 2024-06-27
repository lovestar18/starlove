import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_eighteen.dart';
import '../../widgets/app_bar/appbar_subtitle_sixteen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/write_in_group_options_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInGroupOptionsScreen
    extends GetWidget<WriteInGroupOptionsController> {
  const WriteInGroupOptionsScreen({Key? key})
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
            children: [_buildPostSection(), SizedBox(height: 4.v)],
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
        padding: EdgeInsets.only(left: 15.h),
        child: Row(
          children: [
            AppbarSubtitleEighteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSixteen(
              text: "lbl_write_to_group2".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 37.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            top: 7.v,
            right: 34.h,
            bottom: 7.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPostSection() {
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
                  alignment: Alignment.center,
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
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconClose,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlineBluegray900011.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconImage,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      SizedBox(width: 16.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconGif,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      SizedBox(width: 16.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgCameraPrimary1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      SizedBox(width: 16.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconAttachment,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 296.v),
          CustomOutlinedButton(
            height: 34.v,
            width: 138.h,
            text: "lbl_group_post".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL16,
            buttonTextStyle: CustomTextStyles.labelLargeOpenSansPrimary,
          )
        ],
      ),
    );
  }
}
