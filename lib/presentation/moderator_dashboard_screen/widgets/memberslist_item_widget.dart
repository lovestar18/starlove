import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/moderator_dashboard_controller.dart';
import '../models/memberslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberslistItemWidget extends StatelessWidget {
  MemberslistItemWidget(this.memberslistItemModelObj,
      {Key? key, this.onTapColumntitle})
      : super(
          key: key,
        );

  MemberslistItemModel memberslistItemModelObj;

  var controller = Get.find<ModeratorDashboardController>();

  VoidCallback? onTapColumntitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: GestureDetector(
        onTap: () {
          onTapColumntitle?.call();
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
                  imagePath: memberslistItemModelObj.image!.value,
                  height: 42.v,
                  width: double.maxFinite,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: Obx(
                  () => Text(
                    memberslistItemModelObj.title!.value,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  memberslistItemModelObj.members!.value,
                  style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
