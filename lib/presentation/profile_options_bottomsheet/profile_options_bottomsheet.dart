import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/profile_options_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileOptionsBottomsheet extends StatelessWidget {
  ProfileOptionsBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ProfileOptionsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
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
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTrush,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_delete".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "msg_turn_of_commenting".tr,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.only(
                  right: 4.h,
                  bottom: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMessageText,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 36.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 2.v,
                right: 20.h,
                bottom: 2.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMouse,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_share_post".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomOutlinedButton(
            text: "lbl_cancel".tr,
            buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
          )
        ],
      ),
    );
  }
}
