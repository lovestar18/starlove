import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/group_description_controller.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<GroupDescriptionController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage40x40,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Obx(
            () => Text(
              userprofileItemModelObj.adinanurrahma!.value,
              style: CustomTextStyles.titleSmallOpenSansIndigo90002,
            ),
          ),
        ),
        Spacer(),
        Obx(
          () => Text(
            userprofileItemModelObj.you!.value,
            style: CustomTextStyles.bodySmallBluegray60001_1,
          ),
        )
      ],
    );
  }
}
