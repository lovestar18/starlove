import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/privacy_policy_controller.dart'; // ignore_for_file: must_be_immutable

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildHeaderSection(),
            SizedBox(height: 14.v),
            _buildDescriptionSection(),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 78.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftGray10002,
            height: 16.v,
            width: 18.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 38.h,
              top: 28.v,
            ),
            onTap: () {
              onTapImgArrowleftone();
            },
          ),
          CustomAppBar(
            height: 78.v,
            leadingWidth: 54.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 18.v,
                bottom: 26.v,
              ),
              onTap: () {
                onTapArrowleftthree();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_privacy_policy".tr,
            ),
            styleType: Style.bgGradientnameerrorContainernamecyan400,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_lorem_ipsum_is_simply2".tr,
                  style: CustomTextStyles.bodyMedium14,
                ),
                TextSpan(
                  text: "msg_why_do_we_use_it".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
                TextSpan(
                  text: "\n",
                  style: CustomTextStyles.titleSmallBold.copyWith(
                    height: 1.07,
                  ),
                ),
                TextSpan(
                  text: "msg_it_is_a_long_established".tr,
                  style: CustomTextStyles.bodyMedium14.copyWith(
                    height: 1.07,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowleftthree() {
    Get.back();
  }
}
