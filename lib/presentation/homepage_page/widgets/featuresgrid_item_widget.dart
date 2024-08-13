import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart';
import '../controller/homepage_controller.dart';
import '../models/featuresgrid_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeaturesgridItemWidget extends StatelessWidget {
  FeaturesgridItemWidget(this.featuresgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  FeaturesgridItemModel featuresgridItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 2.h,
        top: 2.v,
        right: 2.h,
        bottom: 2.v,
      ),
      strokeWidth: 2.h,
      gradient: LinearGradient(
        begin: Alignment(0, 0),
        end: Alignment(0.88, 0.98),
        colors: [theme.colorScheme.onPrimary, appTheme.gray20066],
      ),
      corners: Corners(
        topLeft: Radius.circular(14),
        topRight: Radius.circular(14),
        bottomLeft: Radius.circular(14),
        bottomRight: Radius.circular(14),
      ),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 26.v),
        decoration: AppDecoration.gradientOnPrimaryToOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: featuresgridItemModelObj.closeImage!.value,
                height: 42.v,
                width: 38.h,
              ),
            ),
            SizedBox(height: 12.v),
            Obx(
              () => Text(
                featuresgridItemModelObj.text!.value,
                style: CustomTextStyles.titleMediumGray200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
