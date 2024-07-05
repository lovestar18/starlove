import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_tab_container_controller.dart';
import '../models/columntwentytwo_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ColumntwentytwoItemWidget extends StatelessWidget {
  ColumntwentytwoItemWidget(this.columntwentytwoItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ColumntwentytwoItemModel columntwentytwoItemModelObj;

  var controller = Get.find<AdminDashboardTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.h,
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.gradientTealAToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              columntwentytwoItemModelObj.twentyTwoText!.value,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              columntwentytwoItemModelObj.membersText!.value,
              style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
            ),
          )
        ],
      ),
    );
  }
}
