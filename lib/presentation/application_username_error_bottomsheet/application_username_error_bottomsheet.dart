import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/application_username_error_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ApplicationUsernameErrorBottomsheet extends StatelessWidget {
  ApplicationUsernameErrorBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ApplicationUsernameErrorController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildUserDetailsForm(),
    );
  }

  /// Section Widget
  Widget _buildUserDetailsForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
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
          SizedBox(height: 18.v),
          Text(
            "msg_just_a_few_more".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "msg_in_order_to_ensure".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumBluegray600.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          CustomFloatingTextField(
            controller: controller.emailController,
            labelText: "lbl_full_name".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_full_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text";
              }
              return null;
            },
          ),
          SizedBox(height: 14.v),
          CustomFloatingTextField(
            controller: controller.userNameController,
            labelText: "lbl_username2".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_username2".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text";
              }
              return null;
            },
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_you_and_your".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    ),
                    TextSpan(
                      text: "lbl_cousin".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    ),
                    TextSpan(
                      text: "msg_named_after_the".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    ),
                    TextSpan(
                      text: "lbl_this".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    ),
                    TextSpan(
                      text: "msg_username_already".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    ),
                    TextSpan(
                      text: "lbl_exists".tr,
                      style: CustomTextStyles.titleMediumRedA200,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          CustomFloatingTextField(
            controller: controller.whatTempleAreYoController,
            labelText: "msg_what_temple_are".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "msg_what_temple_are".tr,
          ),
          SizedBox(height: 16.v),
          CustomFloatingTextField(
            controller: controller.favoriteJewishDController,
            labelText: "msg_favorite_jewish".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "msg_favorite_jewish".tr,
          ),
          SizedBox(height: 16.v),
          CustomFloatingTextField(
            controller: controller.bestJewishHolidController,
            labelText: "msg_best_jewish_holiday".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "msg_best_jewish_holiday".tr,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 36.v),
          CustomElevatedButton(
            text: "lbl_submit".tr,
          ),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }
}
