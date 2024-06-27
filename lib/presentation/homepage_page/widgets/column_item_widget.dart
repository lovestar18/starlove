import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/homepage_controller.dart';
import '../models/column_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ColumnItemWidget extends StatelessWidget {
  ColumnItemWidget(this.columnItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ColumnItemModel columnItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: columnItemModelObj.image!.value,
              height: 30.adaptSize,
              width: 30.adaptSize,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              columnItemModelObj.text!.value,
              style: CustomTextStyles.titleSmallOpenSans,
            ),
          )
        ],
      ),
    );
  }
}
