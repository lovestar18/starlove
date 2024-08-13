import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/edit_event_controller.dart';
import '../models/userprofile2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(this.userprofile2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<EditEventController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
                  userprofile2ItemModelObj.memberName!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  userprofile2ItemModelObj.username!.value,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 4.h),
        CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          padding: EdgeInsets.all(4.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgEyePrimary,
          ),
        ),
        SizedBox(width: 4.h),
        CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
          ),
        )
      ],
    );
  }
}
