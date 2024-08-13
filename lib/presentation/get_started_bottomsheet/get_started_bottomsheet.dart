import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/get_started_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GetStartedBottomsheet extends StatelessWidget {
  GetStartedBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  GetStartedController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
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
            "msg_join_our_community".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_enter_your_email".tr,
            style: CustomTextStyles.bodyMediumBluegray600,
          ),
          SizedBox(height: 20.v),
          CustomFloatingTextField(
            controller: controller.emailController,
            labelText: "lbl_email".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email";
              }
              return null;
            },
          ),
          SizedBox(height: 14.v),
          Obx(
            () => CustomFloatingTextField(
              controller: controller.passwordController,
              labelText: "lbl_password".tr,
              labelStyle: CustomTextStyles.bodyMediumBluegray30001,
              hintText: "lbl_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.isShowPassword.value,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30.h, 24.v, 16.h, 22.v),
                  child: Text(
                    "lbl_strong".tr,
                    style: TextStyle(
                      color: Color(0XFF48B636),
                      fontSize: 10.fSize,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 60.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password";
                }
                return null;
              },
              contentPadding: EdgeInsets.fromLTRB(16.h, 8.v, 30.h, 18.v),
            ),
          ),
          SizedBox(height: 34.v),
          CustomElevatedButton(
            text: "lbl_sign_up2".tr,
          )
        ],
      ),
    );
  }
}
