import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sending_love_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SendingLoveBottomsheet extends StatelessWidget {
  SendingLoveBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  SendingLoveController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
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
          SizedBox(height: 12.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_send_love_to".tr,
                  style: CustomTextStyles.titleLargeBluegray90001Medium_1,
                ),
                TextSpan(
                  text: "lbl_username3".tr,
                  style: CustomTextStyles.titleLargeBluegray90001Medium_1,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.v),
          Container(
            height: 86.adaptSize,
            width: 86.adaptSize,
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder44,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgContrastPrimary,
                  height: 26.v,
                  width: 28.h,
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_please_add_a_note".tr,
            style: CustomTextStyles.titleLargeBluegray90001,
          ),
          SizedBox(height: 20.v),
          CustomTextFormField(
            controller: controller.shareThoughtsMeController,
            hintText: "msg_share_your_thoughts_optional".tr,
            hintStyle: CustomTextStyles.bodyMediumBluegray3000114,
            textInputAction: TextInputAction.done,
            maxLines: 7,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
          ),
          SizedBox(height: 24.v),
          _buildActionButtons(),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_cancel".tr,
              buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
              buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_send2".tr,
            ),
          )
        ],
      ),
    );
  }
}
