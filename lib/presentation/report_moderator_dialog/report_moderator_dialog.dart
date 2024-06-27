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
            CustomTextFormField(
              controller: controller.deletevalueoneController,
              hintText: "lbl_delete".tr,
              hintStyle: CustomTextStyles.bodyLargeOpenSansRed300,
              borderDecoration: TextFormFieldStyleHelper.underLineGrayTL16,
              filled: false,
            ),
            CustomTextFormField(
              controller: controller.reportvalueoneController,
              hintText: "lbl_report".tr,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.underLineGray2,
              filled: false,
            ),
            CustomElevatedButton(
              height: 56.v,
              text: "lbl_block".tr,
              buttonStyle: CustomButtonStyles.fillGrayBL16,
              buttonTextStyle:
                  CustomTextStyles.bodyLargeOpenSansOnErrorContainer,
            ),
            SizedBox(height: 16.v),
            CustomElevatedButton(
              height: 56.v,
              text: "lbl_cancel".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL16,
              buttonTextStyle:
                  CustomTextStyles.bodyLargeOpenSansOnErrorContainer,
            )
          ],
        )
      ],
    );
  }
}
