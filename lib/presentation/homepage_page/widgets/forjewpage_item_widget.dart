import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/homepage_controller.dart';
import '../models/forjewpage_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForjewpageItemWidget extends StatelessWidget {
  ForjewpageItemWidget(this.forjewpageItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ForjewpageItemModel forjewpageItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: forjewpageItemModelObj.image!.value,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(right: 22.h),
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              forjewpageItemModelObj.text!.value,
              style: CustomTextStyles.titleSmallOpenSans,
            ),
          )
        ],
      ),
    );
  }
}
