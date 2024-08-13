import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/delete_account_ii_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DeleteAccountIiBottomsheet extends StatelessWidget {
  DeleteAccountIiBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  DeleteAccountIiController controller;

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
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary1,
                  height: 24.v,
                  width: 38.h,
                )
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 222.h,
            child: Text(
              "msg_your_account_has".tr,
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
