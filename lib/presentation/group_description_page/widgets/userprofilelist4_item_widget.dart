import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/group_description_controller.dart';
import '../models/userprofilelist4_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist4ItemWidget extends StatelessWidget {
  Userprofilelist4ItemWidget(this.userprofilelist4ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist4ItemModel userprofilelist4ItemModelObj;

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
              userprofilelist4ItemModelObj.adinanurrahma!.value,
              style: CustomTextStyles.titleSmallOpenSansIndigo90002,
            ),
          ),
        ),
        Spacer(),
        Obx(
          () => Text(
            userprofilelist4ItemModelObj.you!.value,
            style: CustomTextStyles.bodySmallBluegray60001_1,
          ),
        )
      ],
    );
  }
}
