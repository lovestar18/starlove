import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/email_verification_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EmailVerificationBottomsheet extends StatelessWidget {
  EmailVerificationBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  EmailVerificationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 26.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "msg_verification_code".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_we_have_sent_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBluegray600.copyWith(
                    height: 1.71,
                  ),
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Obx(
                    () => CustomPinCodeTextField(
                      context: Get.context!,
                      controller: controller.otpController.value,
                      onChanged: (value) {},
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_haven_t_got_the4".tr,
                  style: CustomTextStyles.labelLargeBluegray30001Medium12,
                ),
                TextSpan(
                  text: "lbl_resend_now".tr,
                  style: CustomTextStyles.labelLargePrimaryMedium12_1,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 28.v),
          CustomElevatedButton(
            text: "lbl_verify_code".tr,
            margin: EdgeInsets.only(right: 2.h),
          ),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }
}
