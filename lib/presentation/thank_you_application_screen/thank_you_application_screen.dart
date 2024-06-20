import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/thank_you_application_controller.dart'; // ignore_for_file: must_be_immutable

class ThankYouApplicationScreen
    extends GetWidget<ThankYouApplicationController> {
  const ThankYouApplicationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 92.v,
            right: 14.h,
          ),
          child: Column(
            children: [_buildConfirmationSection(), SizedBox(height: 4.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 48.h),
      child: Column(
        children: [
          Container(
            height: 98.adaptSize,
            width: 98.adaptSize,
            decoration: AppDecoration.outlineIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder48,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 16.v,
                  width: 18.h,
                )
              ],
            ),
          ),
          SizedBox(height: 38.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_we_ve_received_your".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallInterIndigoA70001,
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            "msg_you_ll_receive_an".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMedium14.copyWith(
              height: 1.43,
            ),
          ),
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgDownload1,
            height: 116.v,
            width: 154.h,
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_thank_you".tr,
            style: CustomTextStyles.headlineLargeOpenSansBlack900,
          )
        ],
      ),
    );
  }
}
