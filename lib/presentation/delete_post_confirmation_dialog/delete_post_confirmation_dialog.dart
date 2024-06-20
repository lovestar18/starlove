import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/delete_post_confirmation_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DeletePostConfirmationDialog extends StatelessWidget {
  DeletePostConfirmationDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  DeletePostConfirmationController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [_buildImageSection()],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildImageSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 12.h),
      padding: EdgeInsets.symmetric(vertical: 28.v),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder4,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgImage298x298,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.mainwhite.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 24.v),
                Text(
                  "lbl_delete_post".tr,
                  style: CustomTextStyles.titleMediumOpenSansBlack900SemiBold,
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "msg_you_can_restore".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack90014.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                CustomOutlinedButton(
                  height: 54.v,
                  text: "lbl_delete".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle: CustomTextStyles.titleMediumOpenSansRed300,
                ),
                CustomOutlinedButton(
                  height: 54.v,
                  text: "lbl_cancel".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOpenSansBlack900SemiBold,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
