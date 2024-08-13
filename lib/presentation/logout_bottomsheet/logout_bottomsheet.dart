import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/logout_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  LogoutBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
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
          SizedBox(height: 50.v),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCameraPrimary1,
            height: 86.adaptSize,
            width: 86.adaptSize,
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_are_you_sure_you10".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeBluegray90001,
            ),
          ),
          SizedBox(height: 48.v),
          SizedBox(
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
          )
        ],
      ),
    );
  }
}
