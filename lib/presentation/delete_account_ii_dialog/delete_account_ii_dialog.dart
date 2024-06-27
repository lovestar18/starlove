import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/delete_account_ii_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DeleteAccountIiDialog extends StatelessWidget {
  DeleteAccountIiDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  DeleteAccountIiController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 52.h,
            vertical: 36.v,
          ),
          decoration: AppDecoration.mainwhite.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "lbl_delete_account2".tr,
                style: CustomTextStyles.titleLargeOpenSansTeal900,
              ),
              SizedBox(height: 22.v),
              Text(
                "msg_are_you_sure_you2".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleLargeOpenSansBluegray90004,
              ),
              SizedBox(height: 22.v),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_by_deleting_your".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBluegray90004,
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 44.v,
                text: "msg_yes_delete_account".tr,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 14.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyan,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOpenSansBluegray90003,
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                height: 44.v,
                text: "lbl_cancel2".tr,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 14.h,
                ),
                buttonStyle: CustomButtonStyles.fillTeal,
                buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
              ),
              SizedBox(height: 12.v)
            ],
          ),
        )
      ],
    );
  }
}
