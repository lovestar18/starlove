import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/profile_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileBottomsheet extends StatelessWidget {
  ProfileBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ProfileController controller;

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
          SizedBox(height: 36.v),
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
            width: 224.h,
            child: Text(
              "msg_your_query_has_been".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeBluegray90001,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_our_team_will_respond".tr,
            style: CustomTextStyles.bodyMediumBluegray3000114,
          ),
          SizedBox(height: 32.v),
          CustomOutlinedButton(
            text: "lbl_close".tr,
            buttonTextStyle: CustomTextStyles.titleMediumGray200Bold,
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
