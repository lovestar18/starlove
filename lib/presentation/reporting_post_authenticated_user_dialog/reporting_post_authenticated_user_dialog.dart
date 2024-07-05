import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/reporting_post_authenticated_user_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReportingPostAuthenticatedUserDialog extends StatelessWidget {
  ReportingPostAuthenticatedUserDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  ReportingPostAuthenticatedUserController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            _buildDeleteOption(),
            _buildTurnOffCommentingOption(),
            _buildShare(),
            SizedBox(height: 16.v),
            _buildCancel()
          ],
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDeleteOption() {
    return CustomTextFormField(
      controller: controller.deleteOptionController,
      hintText: "lbl_delete".tr,
      hintStyle: CustomTextStyles.bodyLargeOpenSansRed30001,
      borderDecoration: TextFormFieldStyleHelper.underLineGray,
    );
  }

  /// Section Widget
  Widget _buildTurnOffCommentingOption() {
    return CustomTextFormField(
      controller: controller.turnOffCommentingOptionController,
      hintText: "msg_turn_off_commenting".tr,
      hintStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.underLineGray1,
    );
  }

  /// Section Widget
  Widget _buildShare() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_share".tr,
      buttonStyle: CustomButtonStyles.fillGrayBL161,
      buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
    );
  }

  /// Section Widget
  Widget _buildCancel() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL161,
      buttonTextStyle: CustomTextStyles.bodyLargeOpenSansGray90001,
    );
  }
}
