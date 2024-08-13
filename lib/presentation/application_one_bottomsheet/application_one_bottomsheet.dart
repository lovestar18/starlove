import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/application_one_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ApplicationOneBottomsheet extends StatelessWidget {
  ApplicationOneBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ApplicationOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDetailsForm(),
          SizedBox(height: 22.v),
          _buildSubmitButtonSection(),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailsForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "msg_just_a_few_more".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_in_order_to_ensure".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBluegray600.copyWith(
                    height: 1.71,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
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
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
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
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
              controller: controller.templeController,
              labelText: "msg_what_temple_are".tr,
              labelStyle: theme.textTheme.bodyLarge!,
              hintText: "msg_what_temple_are".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
              controller: controller.favoriteDishController,
              labelText: "msg_favorite_jewish".tr,
              labelStyle: CustomTextStyles.bodyLargeInter,
              hintText: "msg_favorite_jewish".tr,
              hintStyle: CustomTextStyles.bodyLargeInter,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 10.v,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
              controller: controller.holidayTraditioController,
              labelText: "msg_best_jewish_holiday".tr,
              labelStyle: theme.textTheme.bodyLarge!,
              hintText: "msg_best_jewish_holiday".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomFloatingTextField(
              controller: controller.linkedinProfileController,
              labelText: "msg_linkedin_profile".tr,
              labelStyle: theme.textTheme.bodyLarge!,
              hintText: "msg_linkedin_profile".tr,
              textInputAction: TextInputAction.done,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButtonSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "lbl_submit".tr,
          )
        ],
      ),
    );
  }
}
