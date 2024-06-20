import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/reporting_post_3_controller.dart';
import '../models/listwhyareyou_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListwhyareyouItemWidget extends StatelessWidget {
  ListwhyareyouItemWidget(this.listwhyareyouItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListwhyareyouItemModel listwhyareyouItemModelObj;

  var controller = Get.find<ReportingPost3Controller>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        listwhyareyouItemModelObj.whyareyou!.value,
        style: CustomTextStyles.titleLargeOpenSansBlack900,
      ),
    );
  }
}
