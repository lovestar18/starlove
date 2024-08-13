import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/forgot_password_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotPasswordBottomsheet extends StatelessWidget {
  ForgotPasswordBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ForgotPasswordController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_forgot_password2".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_enter_your_email2".tr,
            style: CustomTextStyles.bodyMediumBluegray600,
          ),
          SizedBox(height: 24.v),
          CustomFloatingTextField(
            controller: controller.emailController,
            labelText: "lbl_email2".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_email2".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email";
              }
              return null;
            },
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "lbl_reset_password".tr,
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
