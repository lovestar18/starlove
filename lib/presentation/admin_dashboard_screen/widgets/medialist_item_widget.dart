import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_controller.dart';
import '../models/medialist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MedialistItemWidget extends StatelessWidget {
  MedialistItemWidget(this.medialistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MedialistItemModel medialistItemModelObj;

  var controller = Get.find<AdminDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.white,
      child: Row(
        children: [_buildHeaderRow()],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              medialistItemModelObj.members!.value,
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          SizedBox(width: 30.h),
          Obx(
            () => Text(
              medialistItemModelObj.pending!.value,
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          )
        ],
      ),
    );
  }
}
