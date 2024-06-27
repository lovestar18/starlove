import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/email_verification_controller.dart'; // ignore_for_file: must_be_immutable

class EmailVerificationScreen extends GetWidget<EmailVerificationController> {
  const EmailVerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [_buildEmailVerificationContent(), SizedBox(height: 4.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 7.v,
          bottom: 7.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailVerificationContent() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_check_your_email".tr,
            style: CustomTextStyles.titleLargePoppinsGray90004,
          ),
          SizedBox(height: 10.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_we_sent_a_reset2".tr,
                  style: CustomTextStyles.titleMediumInterGray50001Medium,
                ),
                TextSpan(
                  text: "msg_jacob_welove_com".tr,
                  style: CustomTextStyles.titleMediumInterGray700,
                ),
                TextSpan(
                  text: "msg_enter_5_digit_code".tr,
                  style: CustomTextStyles.titleMediumInterGray50001Medium,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 34.v),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => CustomPinCodeTextField(
                context: Get.context!,
                controller: controller.otpController.value,
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_verify_code".tr,
            buttonStyle: CustomButtonStyles.fillIndigoATL12,
            buttonTextStyle: CustomTextStyles.titleMediumInterPrimary16_1,
          ),
          SizedBox(height: 44.v),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_haven_t_got_the2".tr,
                    style: CustomTextStyles.titleMediumInterGray50001,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_resend_email".tr,
                    style:
                        CustomTextStyles.titleMediumInterIndigoA70001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
