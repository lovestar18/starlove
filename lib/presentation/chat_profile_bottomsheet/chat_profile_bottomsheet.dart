import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/chat_profile_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChatProfileBottomsheet extends StatelessWidget {
  ChatProfileBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ChatProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
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
          SizedBox(height: 44.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAvatar,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      SizedBox(width: 4.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_member_name".tr,
                              style: CustomTextStyles.labelLargeMedium_1,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_username2".tr,
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    endIndent: 4.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray900,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_view_profile2".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    endIndent: 4.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
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
                    "lbl_delete_chat".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomOutlinedButton(
            text: "lbl_cancel".tr,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 2.h,
            ),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
