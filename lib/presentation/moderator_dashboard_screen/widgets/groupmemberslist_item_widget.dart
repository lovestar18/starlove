import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/moderator_dashboard_controller.dart';
import '../models/groupmemberslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupmemberslistItemWidget extends StatelessWidget {
  GroupmemberslistItemWidget(this.groupmemberslistItemModelObj,
      {Key? key, this.onTapColumngrouptitl})
      : super(
          key: key,
        );

  GroupmemberslistItemModel groupmemberslistItemModelObj;

  var controller = Get.find<ModeratorDashboardController>();

  VoidCallback? onTapColumngrouptitl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: GestureDetector(
        onTap: () {
          onTapColumngrouptitl?.call();
        },
        child: Container(
          width: 158.h,
          padding: EdgeInsets.symmetric(
            horizontal: 46.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.gradientTealAToTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: groupmemberslistItemModelObj.groupImage!.value,
                  height: 42.v,
                  width: double.maxFinite,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: Obx(
                  () => Text(
                    groupmemberslistItemModelObj.groupTitle!.value,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  groupmemberslistItemModelObj.groupMembers!.value,
                  style: CustomTextStyles.bodyMediumRobotoPrimary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
