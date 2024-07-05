import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/report_user_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReportUserDialog extends StatelessWidget {
  ReportUserDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  ReportUserController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Column(
            children: [
              CustomTextFormField(
                controller: controller.blockvalueoneController,
                hintText: "lbl_block".tr,
                hintStyle: CustomTextStyles.bodyLargeOpenSansRed30001,
                borderDecoration: TextFormFieldStyleHelper.underLineGray,
              ),
              CustomTextFormField(
                controller: controller.reportvalueoneController,
                hintText: "lbl_report".tr,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.underLineGray1,
              ),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_share".tr,
                buttonStyle: CustomButtonStyles.fillGrayBL161,
                buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_cancel".tr,
                buttonStyle: CustomButtonStyles.fillGrayTL161,
                buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
              )
            ],
          ),
        )
      ],
    );
  }
}
