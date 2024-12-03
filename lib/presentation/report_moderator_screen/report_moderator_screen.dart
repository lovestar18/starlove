import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_twelve.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../delete_post_confirmation_dialog/controller/delete_post_confirmation_controller.dart';
import '../delete_post_confirmation_dialog/delete_post_confirmation_dialog.dart';
import 'controller/report_moderator_controller.dart'; // ignore_for_file: must_be_immutable

class ReportModeratorScreen extends GetWidget<ReportModeratorController> {
  const ReportModeratorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildAppBar(),
                        ),
                        SizedBox(height: 674.v)
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 248.v,
                    ),
                    decoration: AppDecoration.fillOnErrorContainer,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildDeleteButton(),
                        _buildReportButton(),
                        _buildBlockButton(),
                        SizedBox(height: 16.v),
                        _buildCancelButton(),
                        SizedBox(height: 24.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 58.v,
      centerTitle: true,
      title: AppbarSubtitleTwelve(
        text: "lbl_feed".tr,
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildDeleteButton() {
    return CustomOutlinedButton(
      height: 56.v,
      text: "lbl_delete".tr,
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.outlineGrayTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeRed300,
      onPressed: () {
        onTapDeleteButton();
      },
    );
  }

  /// Section Widget
  Widget _buildReportButton() {
    return CustomOutlinedButton(
      height: 58.v,
      text: "lbl_report".tr,
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.outlineGray1,
      buttonTextStyle: CustomTextStyles.bodyLargePoppinsOnErrorContainer,
      onPressed: () {
        onTapReportButton();
      },
    );
  }

  /// Section Widget
  Widget _buildBlockButton() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_block".tr,
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.fillGrayBL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_cancel".tr,
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.fillGrayTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }

  /// Displays a dialog with the [DeletePostConfirmationDialog] content.
  onTapDeleteButton() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: DeletePostConfirmationDialog(
        Get.put(
          DeletePostConfirmationController(),
        ),
      ),
    ));
  }

  /// Navigates to the reportingPost3Screen when the action is triggered.
  onTapReportButton() {
    Get.toNamed(
      AppRoutes.reportingPost3Screen,
    );
  }
}
