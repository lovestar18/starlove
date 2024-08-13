import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/group_description_controller.dart';
import '../models/memberprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberprofileItemWidget extends StatelessWidget {
  MemberprofileItemWidget(this.memberprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MemberprofileItemModel memberprofileItemModelObj;

  var controller = Get.find<GroupDescriptionController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatar,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        SizedBox(width: 4.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  memberprofileItemModelObj.memberName!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  memberprofileItemModelObj.username!.value,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
