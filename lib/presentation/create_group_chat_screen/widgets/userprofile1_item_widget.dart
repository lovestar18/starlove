import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/create_group_chat_controller.dart';
import '../models/userprofile1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<CreateGroupChatController>();

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
        SizedBox(width: 16.h),
        Obx(
          () => Text(
            userprofile1ItemModelObj.darlenesteward!.value,
            style: CustomTextStyles.titleSmallOpenSansIndigo90002,
          ),
        )
      ],
    );
  }
}
