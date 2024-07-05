import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_member_view_container_controller.dart';
import '../models/columntwentytwo1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Columntwentytwo1ItemWidget extends StatelessWidget {
  Columntwentytwo1ItemWidget(this.columntwentytwo1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Columntwentytwo1ItemModel columntwentytwo1ItemModelObj;

  var controller = Get.find<AdminDashboardMemberViewContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.h,
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.gradientTealAToTeal.copyWith(
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
                columntwentytwo1ItemModelObj.twentyTwoText!.value,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Obx(
            () => Text(
              columntwentytwo1ItemModelObj.membersText!.value,
              style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
            ),
          ),
          SizedBox(height: 30.v)
        ],
      ),
    );
  }
}
