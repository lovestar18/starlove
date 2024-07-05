import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/homepage_container1_controller.dart';
import '../models/featuresgrid_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeaturesgridItemWidget extends StatelessWidget {
  FeaturesgridItemWidget(this.featuresgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  FeaturesgridItemModel featuresgridItemModelObj;

  var controller = Get.find<HomepageContainer1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: featuresgridItemModelObj.image!.value,
              height: 30.adaptSize,
              width: 30.adaptSize,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              featuresgridItemModelObj.text!.value,
              style: CustomTextStyles.titleSmallOpenSans,
            ),
          )
        ],
      ),
    );
  }
}
