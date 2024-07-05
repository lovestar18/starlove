import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_nineteen.dart';
import '../../widgets/app_bar/appbar_subtitle_seventeen.dart';
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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildProfileSection(),
                    SizedBox(height: 18.v),
                    _buildActionButtons(),
                    SizedBox(height: 296.v),
                    CustomOutlinedButton(
                      height: 34.v,
                      width: 138.h,
                      text: "lbl_group_post".tr.toUpperCase(),
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL161,
                      buttonTextStyle: CustomTextStyles
                          .labelLargeOpenSansOnErrorContainerBold,
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.v)
            ],
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
            AppbarSubtitleNineteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSeventeen(
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
  Widget _buildProfileSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.outlineBlueGrayTL16,
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
              mainAxisSize: MainAxisSize.min,
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
                  onTap: () {
                    onTapImgIcongifoneone();
                  },
                ),
                SizedBox(width: 16.h),
                CustomImageView(
                  imagePath: ImageConstant.imgCameraOnerrorcontainer,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  onTap: () {
                    onTapImgCameraoneone();
                  },
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
    );
  }

  /// Navigates to the stickersScreen when the action is triggered.
  onTapImgIcongifoneone() {
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }

  /// Navigates to the cameraPermission2Screen when the action is triggered.
  onTapImgCameraoneone() {
    Get.toNamed(
      AppRoutes.cameraPermission2Screen,
    );
  }
}
