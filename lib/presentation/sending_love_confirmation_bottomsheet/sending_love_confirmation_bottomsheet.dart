import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/sending_love_confirmation_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SendingLoveConfirmationBottomsheet extends StatelessWidget {
  SendingLoveConfirmationBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  SendingLoveConfirmationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
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
          SizedBox(height: 48.v),
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
                  imagePath: ImageConstant.imgContrastPrimary26x28,
                  height: 26.v,
                  width: 28.h,
                )
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 214.h,
            child: Text(
              "msg_love_has_been_sent".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeBluegray90001,
            ),
          ),
          SizedBox(height: 42.v),
          CustomOutlinedButton(
            text: "lbl_close".tr,
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
