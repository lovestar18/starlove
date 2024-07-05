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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 92.v,
            right: 16.h,
          ),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                    ),
                    SizedBox(height: 36.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        "msg_we_ve_received_your".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallInterPrimary,
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
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }
}
