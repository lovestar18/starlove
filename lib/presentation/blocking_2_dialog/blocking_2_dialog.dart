import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/blocking_2_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Blocking2Dialog extends StatelessWidget {
  Blocking2Dialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  Blocking2Controller controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 24.v),
                    Text(
                      "lbl_block_user".tr,
                      style:
                          CustomTextStyles.titleMediumOpenSansBlack900SemiBold,
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        "msg_they_won_t_be_able".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBlack90014.copyWith(
                          height: 1.60,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomOutlinedButton(
                      height: 54.v,
                      text: "lbl_block".tr,
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOpenSansRed300,
                    ),
                    CustomOutlinedButton(
                      height: 54.v,
                      text: "lbl_cancel".tr,
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOpenSansBlack900SemiBold,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
