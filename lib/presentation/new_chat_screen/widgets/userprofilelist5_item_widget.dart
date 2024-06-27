import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/new_chat_controller.dart';
import '../models/userprofilelist5_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist5ItemWidget extends StatelessWidget {
  Userprofilelist5ItemWidget(this.userprofilelist5ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist5ItemModel userprofilelist5ItemModelObj;

  var controller = Get.find<NewChatController>();

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
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofilelist5ItemModelObj.frankesteban!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    userprofilelist5ItemModelObj.handle!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
        ),
        CustomOutlinedButton(
          height: 32.v,
          width: 60.h,
          text: "lbl_view".tr.toUpperCase(),
          margin: EdgeInsets.only(left: 4.h),
          buttonTextStyle: theme.textTheme.labelMedium!,
        ),
        CustomOutlinedButton(
          height: 32.v,
          width: 56.h,
          text: "lbl_add".tr.toUpperCase(),
          margin: EdgeInsets.only(left: 4.h),
          buttonTextStyle: theme.textTheme.labelMedium!,
        )
      ],
    );
  }
}
