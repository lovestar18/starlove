import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/frame_eighteen1_controller.dart'; // ignore_for_file: must_be_immutable

class FrameEighteen1Screen extends GetWidget<FrameEighteen1Controller> {
  const FrameEighteen1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 16.v,
          ),
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
              SizedBox(height: 22.v),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_are_you_sure_you6".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeBluegray90001,
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmationButtons1(),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationButtons() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 160.h,
              height: 54.v,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  visualDensity: const VisualDensity(
                    vertical: -4,
                    horizontal: -4,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 16.v,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "lbl_no".tr,
                  style: CustomTextStyles.titleMediumQuicksandPrimarySemiBold,
                ),
              ),
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: SizedBox(
              width: 160.h,
              height: 54.v,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  visualDensity: const VisualDensity(
                    vertical: -4,
                    horizontal: -4,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 16.v,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "lbl_yes".tr,
                  style: CustomTextStyles.titleMediumQuicksandGray20004SemiBold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationButtons1() {
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
