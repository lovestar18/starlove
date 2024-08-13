import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart';
import '../controller/discover1_controller.dart';
import '../models/userprofilesgrid1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilesgrid1ItemWidget extends StatelessWidget {
  Userprofilesgrid1ItemWidget(this.userprofilesgrid1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilesgrid1ItemModel userprofilesgrid1ItemModelObj;

  var controller = Get.find<Discover1Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Column(
            children: [
              Container(
                height: 130.v,
                width: 162.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgRectangle195130x1621,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 6.v),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofilesgrid1ItemModelObj.fullNameText!.value,
                        style: CustomTextStyles.labelLargeQuicksand,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofilesgrid1ItemModelObj.usernameText!.value,
                        style: CustomTextStyles.bodySmallQuicksandBluegray30010,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 28.h,
                decoration: AppDecoration.outline1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [appTheme.indigoA400, appTheme.cyan40002],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath: userprofilesgrid1ItemModelObj
                                .settingsImage!.value,
                            height: 14.v,
                            width: 10.h,
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath: userprofilesgrid1ItemModelObj
                                .fullNameImage!.value,
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            alignment: Alignment.bottomCenter,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
