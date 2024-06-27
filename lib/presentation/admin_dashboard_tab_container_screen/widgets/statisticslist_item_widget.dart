import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_tab_container_controller.dart';
import '../models/statisticslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class StatisticslistItemWidget extends StatelessWidget {
  StatisticslistItemWidget(this.statisticslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  StatisticslistItemModel statisticslistItemModelObj;

  var controller = Get.find<AdminDashboardTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.h,
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.gradientTealAToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              statisticslistItemModelObj.twentyTwoText!.value,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              statisticslistItemModelObj.membersText!.value,
              style: CustomTextStyles.bodyMediumRobotoPrimary,
            ),
          )
        ],
      ),
    );
  }
}
