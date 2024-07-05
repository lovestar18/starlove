import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/admin_dashboard_member_view_container_controller.dart';
import '../models/headerlist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HeaderlistItemWidget extends StatelessWidget {
  HeaderlistItemWidget(this.headerlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  HeaderlistItemModel headerlistItemModelObj;

  var controller = Get.find<AdminDashboardMemberViewContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.mainwhite,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    headerlistItemModelObj.members!.value,
                    style: CustomTextStyles.titleSmallSemiBold,
                  ),
                ),
                SizedBox(width: 30.h),
                Obx(
                  () => Text(
                    headerlistItemModelObj.pending!.value,
                    style: CustomTextStyles.titleSmallBluegray100,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
