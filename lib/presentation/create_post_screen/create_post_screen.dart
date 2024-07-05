import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_nineteen.dart';
import '../../widgets/app_bar/appbar_subtitle_seventeen.dart';
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
              Expanded(
                child: Column(
                  children: [
                    _buildProfileSection(),
                    SizedBox(height: 12.v),
                    CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlineBlueGrayTL16,
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 6.v,
                            ),
                            child: Text(
                              "lbl_post".tr.toUpperCase(),
                              style: CustomTextStyles
                                  .labelLargeOpenSansOnErrorContainerBold,
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
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray20002,
                            ),
                          )
                        ],
                      ),
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
      height: 32.v,
      title: Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: Row(
          children: [
            AppbarSubtitleNineteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSeventeen(
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
    return SizedBox(
      width: double.maxFinite,
      child: Row(
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
    );
  }
}
