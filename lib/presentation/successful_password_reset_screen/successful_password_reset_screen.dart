import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/successful_password_reset_controller.dart'; // ignore_for_file: must_be_immutable

class SuccessfulPasswordResetScreen
    extends GetWidget<SuccessfulPasswordResetController> {
  const SuccessfulPasswordResetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSuccessApp,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 18.v,
              right: 20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _buildAppBar(),
                      Spacer(
                        flex: 57,
                      ),
                      Text(
                        "lbl_success".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "msg_mazel_tov_your".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallGray20002.copyWith(
                          height: 1.71,
                        ),
                      ),
                      Spacer(
                        flex: 42,
                      ),
                      CustomElevatedButton(
                        text: "lbl_sign_in".tr,
                        buttonStyle: CustomButtonStyles.outlineBlueGrayTL10,
                        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 24.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowleftone();
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
