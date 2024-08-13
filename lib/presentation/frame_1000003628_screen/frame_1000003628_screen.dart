import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/frame_1000003628_controller.dart'; // ignore_for_file: must_be_immutable

class Frame1000003628Screen extends GetWidget<Frame1000003628Controller> {
  const Frame1000003628Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector629,
                      height: 4.v,
                      width: 30.h,
                    ),
                    SizedBox(height: 54.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVideoCameraPrimary1,
                      height: 86.adaptSize,
                      width: 86.adaptSize,
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      "msg_are_you_sure_you7".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBluegray90001,
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmationButtons(),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationButtons() {
    return Container(
      height: 54.v,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 18.h,
        bottom: 20.v,
      ),
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
    );
  }
}
