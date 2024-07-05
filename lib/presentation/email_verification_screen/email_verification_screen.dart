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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [_buildEmailVerificationSection(), SizedBox(height: 4.v)],
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
        imagePath: ImageConstant.imgArrowLeftGray20004,
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
  Widget _buildEmailVerificationSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_check_your_email".tr,
              style: CustomTextStyles.titleLargePoppinsGray90005,
            ),
          ),
          SizedBox(height: 10.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_we_sent_a_reset2".tr,
                  style: CustomTextStyles.titleMediumInterGray50003Medium,
                ),
                TextSpan(
                  text: "msg_jacob_welove_com".tr,
                  style: CustomTextStyles.titleMediumInterGray700,
                ),
                TextSpan(
                  text: "msg_enter_5_digit_code".tr,
                  style: CustomTextStyles.titleMediumInterGray50003Medium,
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
            margin: EdgeInsets.only(right: 10.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
            buttonTextStyle:
                CustomTextStyles.titleMediumInterOnErrorContainer16,
          ),
          SizedBox(height: 44.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_haven_t_got_the2".tr,
                  style: CustomTextStyles.titleMediumInterGray50003,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_resend_email".tr,
                  style: CustomTextStyles.titleMediumInterPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.left,
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
