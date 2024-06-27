import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/groupsdashboard_controller.dart';
import '../models/grouplist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GrouplistItemWidget extends StatelessWidget {
  GrouplistItemWidget(this.grouplistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  GrouplistItemModel grouplistItemModelObj;

  var controller = Get.find<GroupsdashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite,
      child: Row(
        children: [_buildHeaderInfo()],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderInfo() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              grouplistItemModelObj.joinedText!.value,
              style: CustomTextStyles.titleSmallOpenSansBlack900,
            ),
          ),
          SizedBox(width: 30.h),
          Obx(
            () => Text(
              grouplistItemModelObj.createdText!.value,
              style: CustomTextStyles.titleSmallOpenSans,
            ),
          )
        ],
      ),
    );
  }
}
