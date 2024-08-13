import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/delete_account_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DeleteAccountBottomsheet extends StatelessWidget {
  DeleteAccountBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  DeleteAccountController controller;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 34.v),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCameraPrimary1,
            height: 86.adaptSize,
            width: 86.adaptSize,
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_are_you_sure_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeBluegray90001,
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            "msg_this_action_will2".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray3000114.copyWith(
              height: 1.60,
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => CustomFloatingTextField(
              controller: controller.passwordController,
              labelText: "lbl_password".tr,
              labelStyle: theme.textTheme.bodyLarge!,
              hintText: "lbl_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.isShowPassword.value,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
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
              borderDecoration: FloatingTextFormFieldStyleHelper.custom,
            ),
          ),
          SizedBox(height: 20.v),
          _buildConfirmationButtons(),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationButtons() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_no".tr,
              buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
              buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_yes".tr,
            ),
          )
        ],
      ),
    );
  }
}
