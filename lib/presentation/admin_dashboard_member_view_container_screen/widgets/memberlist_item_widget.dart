import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_member_view_container_controller.dart';
import '../models/memberlist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberlistItemWidget extends StatelessWidget {
  MemberlistItemWidget(this.memberlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MemberlistItemModel memberlistItemModelObj;

  var controller = Get.find<AdminDashboardMemberViewContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.mainwhite,
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
              memberlistItemModelObj.members!.value,
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
          SizedBox(width: 30.h),
          Obx(
            () => Text(
              memberlistItemModelObj.pending!.value,
              style: CustomTextStyles.titleSmallBluegray100,
            ),
          )
        ],
      ),
    );
  }
}
