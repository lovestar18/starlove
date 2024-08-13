import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/profile_options_one_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileOptionsOneBottomsheet extends StatelessWidget {
  ProfileOptionsOneBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ProfileOptionsOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
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
          SizedBox(height: 24.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: _buildShareSection(
              mouseOne: ImageConstant.imgHeartBlueGray900,
              sharethispost: "msg_add_to_favorites".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: _buildShareSection(
              mouseOne: ImageConstant.imgMouse,
              sharethispost: "lbl_share_this_post".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: CustomTextFormField(
              controller: controller.unfollowuservalController,
              hintText: "lbl_unfollow_user".tr,
              prefix: Container(
                margin: EdgeInsets.only(
                  right: 4.h,
                  bottom: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserBlueGray900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 36.v,
              ),
              contentPadding: EdgeInsets.only(right: 20.h),
              borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 2.h,
            ),
            child: CustomTextFormField(
              controller: controller.blockuservalueController,
              hintText: "lbl_block_user2".tr,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.only(
                  right: 4.h,
                  bottom: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMinuscircle,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 36.v,
              ),
              contentPadding: EdgeInsets.only(right: 20.h),
              borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVideoCamera,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_report".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.v),
          CustomOutlinedButton(
            text: "lbl_cancel".tr,
            buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildShareSection({
    required String mouseOne,
    required String sharethispost,
  }) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: mouseOne,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  sharethispost,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.blueGray90001,
                  ),
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
    );
  }
}
