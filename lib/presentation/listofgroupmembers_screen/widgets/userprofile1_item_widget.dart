import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/listofgroupmembers_controller.dart';
import '../models/userprofile1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ListofgroupmembersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatar60x60,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(width: 10.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                userprofile1ItemModelObj.userName!.value,
                style: CustomTextStyles.titleSmallRoboto15,
              ),
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                userprofile1ItemModelObj.userHandle!.value,
                style: CustomTextStyles.bodySmallRoboto,
              ),
            )
          ],
        )
      ],
    );
  }
}
