import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/report_moderator_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReportModeratorDialog extends StatelessWidget {
  ReportModeratorDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  ReportModeratorController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            _buildDeleteValue(),
            _buildReportValue(),
            _buildBlockButton(),
            SizedBox(height: 16.v),
            _buildCancelButton()
          ],
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDeleteValue() {
    return CustomTextFormField(
      controller: controller.deleteValueController,
      hintText: "lbl_delete".tr,
      hintStyle: CustomTextStyles.bodyLargeOpenSansRed30001,
      borderDecoration: TextFormFieldStyleHelper.underLineGray,
    );
  }

  /// Section Widget
  Widget _buildReportValue() {
    return CustomTextFormField(
      controller: controller.reportValueController,
      hintText: "lbl_report".tr,
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.underLineGray1,
    );
  }

  /// Section Widget
  Widget _buildBlockButton() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_block".tr,
      buttonStyle: CustomButtonStyles.fillGrayBL161,
      buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL161,
      buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
    );
  }
}
