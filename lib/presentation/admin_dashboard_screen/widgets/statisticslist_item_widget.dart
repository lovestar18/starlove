import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_controller.dart';
import '../models/statisticslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class StatisticslistItemWidget extends StatelessWidget {
  StatisticslistItemWidget(this.statisticslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  StatisticslistItemModel statisticslistItemModelObj;

  var controller = Get.find<AdminDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.h,
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.gradiant5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Obx(
              () => Text(
                statisticslistItemModelObj.dynamicText!.value,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Obx(
            () => Text(
              statisticslistItemModelObj.dynamicText1!.value,
              style: CustomTextStyles.bodyMediumRobotoPrimary,
            ),
          ),
          SizedBox(height: 30.v)
        ],
      ),
    );
  }
}
