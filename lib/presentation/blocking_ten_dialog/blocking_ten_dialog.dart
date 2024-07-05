import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/blocking_ten_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BlockingTenDialog extends StatelessWidget {
  BlockingTenDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  BlockingTenController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 2.h),
                decoration: AppDecoration.mainwhite.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 24.v),
                          Text(
                            "lbl_block_user".tr,
                            style:
                                CustomTextStyles.titleMediumOpenSansGray90008,
                          ),
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              "msg_they_won_t_be_able".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.bodyMediumGray90008.copyWith(
                                height: 1.60,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          CustomOutlinedButton(
                            height: 54.v,
                            text: "lbl_block".tr,
                            buttonStyle: CustomButtonStyles.outlineGray1,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOpenSansRed30001,
                          ),
                          CustomOutlinedButton(
                            height: 54.v,
                            text: "lbl_cancel".tr,
                            buttonStyle: CustomButtonStyles.outlineGray1,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOpenSansGray90008,
                          )
                        ],
                      ),
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
